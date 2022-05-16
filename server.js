if (process.env.NODE_ENV !== 'production') {
  require('dotenv').config()
}

const express = require('express')
const app = express();
app.use("/public", express.static(__dirname + "/public"));
const bcrypt = require('bcrypt')
const passport = require('passport')
const flash = require('express-flash')
const session = require('express-session')
const methodOverride = require('method-override')
const  mysql = require('mysql2');

request = require('request');

const con = mysql.createConnection({
host     : 'localhost',
user     : 'root',
password : 'root1',
database : 'people'
});
// const initializePassport = require('./passport-config')
// initializePassport(
//   passport,
//   email => users.find(user => user.email === email),
//   id => users.find(user => user.id === id)
// )

// const users = []
// console.log(users)
  
app.set('view-engine', 'ejs')
app.use(express.urlencoded({ extended: false }))
app.use(flash())
app.use(session({
  secret: process.env.SESSION_SECRET,
  resave: false,
  saveUninitialized: false
}))
app.use(passport.initialize())
app.use(passport.session())
app.use(methodOverride('_method'))

// app.get('/', checkAuthenticated, (req, res) => {
//   res.render('index.ejs', { fname: req.user.name })
// })

app.get('/', function(req, res) {
  // console.log(req.var1);
  if(req.session.loggedin) {
    // console.log(req.session)
    res.render('index.ejs', { name: req.session.fname });
  } else {
    res.redirect('/login');
  }
})


app.get('/login', (req, res) => {
  if(req.session.loggedin) {
    res.redirect('/');
  } else {
    res.render('login.ejs')
  }
})

app.post('/login', function(req, res) {
  const query="SELECT fname, password from main where email=?";
  const params=[req.body.email]
  con.query(query,params,(err,rows) => {
    if(err) throw err;
    //
    var output={}
    if(rows.length!=0)
    {
      var password_hash=rows[0]["password"];
      const verified = bcrypt.compareSync(req.body.password, password_hash);
      if(verified)
      {
        output["status"]=1;
        req.session.loggedin = true;
        req.session.email = req.body.email;
        req.session.fname = rows[0]["fname"];
      }else{
        output["status"]=0;
        output["message"]="Invalid password";
      }
  
    }else{
      output["status"]=0;
      output["message"]="Invalid username and password";
    }
    
    if(output["status"]==0) {
      res.render('login.ejs' , {error: true});
    } else {
      res.redirect('/');
    }
  
  });
})








// app.post('/login', checkNotAuthenticated, passport.authenticate('local', {
//   successRedirect: '/',
//   failureRedirect: '/login',
//   failureFlash: true
// }))

// app.get("/", (req, res) => {
// res.json({message:'Root page'})
// })


  // app.post('/auth', function(request, response) {
  //   app.get("/veify_password", (request, response) => {
  //      const req=request.query
  //     const query="SELECT password from main where email=?";
  //     const params=[req.email]
  //     connection.query(query,params,(err,rows) => {
  //       if(err) throw err;
  //       //
  //       var output={}
  //       if(rows.length!=0)
  //       {
  //       var password_hash=rows[0]["password"];
  //       const verified = bcrypt.compareSync(req.password, password_hash);
  //       if(verified)
  //       {
  //         output["status"]=1;
  //       }else{
  //         output["status"]=0;
  //         output["message"]="Invalid password";
  //       }
      
  //       }else{
  //         output["status"]=0;
  //         output["message"]="Invalid username and password";
  //       }
  //       response.json(output)
      
  //     });
  //   });                                                                           
        
      

  //   // Capture the input fields
  //   let username = request.body.username;
  //   let password = request.body.password;
  //   // Ensure the input fields exists and are not empty
  //   if (username && password) {
  //     // Execute SQL query that'll select the account from the database based on the specified username and password
  //     connection.query('SELECT * FROM main WHERE email = ? AND password = ?', [email, password], function(error, results, fields) {
  //       // If there is an issue with the query, output the error
  //       if (error) throw error;
  //       // If the account exists
  //       if (results.length > 0) {
  //         // Authenticate the user
  //         request.session.loggedin = true;
  //         request.session.username = username;
  //         // Redirect to home page
  //         response.redirect('/index.ejs');
  //       } else {
  //         response.send('Incorrect Username and/or Password!');
  //       }			
  //       response.end();
  //     });
  //   } else {
  //     response.send('Please enter Username and Password!');
  //     response.end();
  //   }
  // });

  app.get('/index', function(request, response) {
    // If the user is loggedin
    if (request.session.loggedin) {
      // Output username
      response.send('Welcome back, ' + request.session.fname + '!');
    } else {
      // Not logged in
      response.send('Please login to view this page!');
    }
    response.end();
  });

app.get('/register', checkNotAuthenticated, (req, res) => {
  res.render('register.ejs')
})

app.post('/register', checkNotAuthenticated, async (req, res) => {
  try {
    const hashedPassword = await bcrypt.hash(req.body.password, 10)
    let user = {
      fname: req.body.fname,
      lname: req.body.lname,
      address: req.body.address,
      postcode: req.body.postcode,
      citty: req.body.citty,
      email: req.body.email,
      password: hashedPassword
      
    };

    // users.push(user);
    try {
      con.connect(function(err) {
        if (err) throw err;
        console.log("Database for Registering is Connected!");
        var personid = Date.now();
        // console.log(personid);
        var sql = "INSERT INTO main (personid,fname,lname,adress,postcode,citty,email,password) VALUES (?,?,?,?,?,?,?,?)";
        var values = [personid,user.fname,user.lname,user.address,user.postcode,user.citty,user.email,user.password];
        // console.log(values);
        app.use(passport.initialize())
        app.use(passport.session())
        app.use(methodOverride('_method'))
        con.query(sql, values, function (err, result) {
          if (err) throw err;
          console.log("Account Created!");
        });
        
      });
    }
    catch(err) {
      console.log(err.message);
    }

    //prompt user with success message and redirect to login page after 3 seconds.

  setTimeout(function(){ res.redirect('/login')},1000);
  } catch (err) {
    console.log(err.message);
  }
}
)




// passport.serializeUser(function(user, done) {
//   done(null, user);
// });

// passport.deserializeUser(function(user, done) {
//   done(null, user);
// });



app.get('/thanks', (req, res) => {
  res.render('thanks.ejs')
}
)


app.get('/contact', (req, res) => {
  // console.log(req.var1);
  if(req.session.loggedin) {
    // console.log(req.session)
    res.render('contact.ejs', { name: req.session.fname });
  } else {
    res.redirect('/login');
  }
})

app.get('/faq', (req, res) => {
  res.render('faq.ejs')
}
)

app.post('/faq', (req, res) => {
  res.render('faq.ejs')
}
)




app.post('/contact', checkNotAuthenticated, async (req, res) => {
  try {
    let store = {
      fname: req.body.fname,
      lname: req.body.lname,
      email: req.body.email,
      commentt: req.body.commentt

    };
    try {
      con.connect(function(err) {
        if (err) throw err;
        console.log("Database for contacting is connected!");
        var sql = "INSERT INTO contactus (fname,lname,email,commentt) VALUES (?,?,?,?)";
        var values = [store.fname,store.lname,store.email,store.commentt];
        app.use(passport.initialize())
        app.use(passport.session())
        app.use(methodOverride('_method'))
        con.query(sql, values, function (err, result) {
          if (err) throw err;
        });
        
      });
    }
    catch(err) {
      console.log(err.message);
    }
    res.redirect('/thanks')
  } catch (e) {
    res.redirect('/contact')
  }
})
app.get('/about', (req, res) => {
  res.render('about.ejs')
}
)

app.post('/about', (req, res) => {
  res.render('about.ejs')
}
)



  // get the data from req.body ex req.body.email you can put it in an array.
  
  // connect to database and insret the data

  // redirect to home or render the contactejs with a success message.
  

app.post('/logout', (req, res) => {
  req.session.destroy();
  res.redirect('/login')
})

function checkAuthenticated(req, res, next) {
  if (req.isAuthenticated()) {
    return next()
  }

  res.redirect('/login')
}

function checkNotAuthenticated(req, res, next) {
  if (req.isAuthenticated()) {
    return res.redirect('/')
  }
  next()
}

app.listen(3000, () => {
  console.log('Server started on port 3000');
}
)



















