/*
Tamisha Rutledge Week 4 assignment
To execute the code, run node wk4_tamisha_rutledge.js in the terminal
    from the folder you have saved the assignemnt.
I have changed the products from accessories to household appliances.
I have also added 2 additional items to the products listing.
*/

// setup

var express=require("express");

var http=require("http");

var app=express();

 

// run the server

http.createServer(app).listen(55555);

console.log('Express server listening on port 55555');

 

// <<< here is the Model, the data storage

 

var products = [

         { id: 0, name: 'washer', description: 'Ensure clothes are sanitized with steam clean technology', price: 450.00 },

         { id: 1, name: 'dryer', description: 'Works with Google Home, now the moment clothes are dry...no buzzer needed', price: 450.00 },

         { id: 2, name: 'oven', description: 'Self-cleaning convection ensuring all around delicious meals', price: 625.00 },
         
         { id: 3, name: 'fridge', description: 'Tempreture zones ensure all food is keep at optimal tempretures', price: 1250.00},

         { id: 4, name: 'dishwasher', description: 'Ensure dishes are squeaky clean with high powered rinse technology', price: 700.00}

];

 

// http://localhost:55555                             // general route

// here is the view 

app.get("/", function(req,res){

  var msg=""

  msg += "<center><h1> This is the default page </h1></center>"

  msg += " use the following: <br />"

  msg += " http://localhost:55555/hello <br />"

  msg += " http://localhost:55555/goodbye <br />"

  msg += " http://localhost:55555/products <br />"

  msg += " **Adding the id after products/ will post the specific product, example below: <br />"

  msg += " http://localhost:55555/products/2 <br />"

 

  res.send(msg);

});

 

// <<< routes = controller

// http://localhost:55555/hello                    // welcome  route

app.get("/hello", function(req,res){

  res.send("Hello ENTD261 class");

 });

 

// http://localhost:55555/goodbye                       // good bye route

app.get("/goodbye", function(req,res){

  res.send("Thank you ENTD261 class");

 });

 

// http://localhost:55555/products                       // load and display all products

app.get('/products', function(req, res) {

         res.send(JSON.stringify(products));

 });

 

// http://localhost:55555/products/2                    // load and display product id 2

app.get('/products/:id', function(req, res) {

         if (req.params.id > (products.length - 1) || req.params.id < 0) {

                 res.statusCode = 404;

                 res.end('Not Found');

         }

         res.send(JSON.stringify(products[req.params.id]));

 });