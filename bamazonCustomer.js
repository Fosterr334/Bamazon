var mysql = require("mysql");
var inquirer = require("inquirer");
var choose = 0;
var amount = 0;
var connection = mysql.createConnection({
  host: "localhost",
  port: 3306,
  user: "root",
  password: "root",
  database: "bamazon_DB"
});

connection.connect(function (err) {
  if (err) throw err;
  console.log("connected as id " + connection.threadId);
  afterConnection();
});

function afterConnection() {
  connection.query("SELECT * FROM products", function (err, res) {
    if (err) throw err;
    console.log(res);
    picks(res);
  });
}
function picks(res) {
  inquirer
    .prompt([{
      name: "choice",
      type: "input",
      message: "Choose item by ID",
    },
    {
      name: "quantity",
      type: "input",
      message: "How many?",

    }])
    .then(function (answer) {
      console.log(answer.choice);
      console.log(answer.quantity);
      purchase(res, answer.choice, answer.quantity);
    })
}

function purchase(list, choice, amount) {

  if (amount > list[choice].stock_quantity) {
    console.log("Insufficient Quantity")
  }
  else {
    console.log("inside else")
    var newAmount = list[choice].stock_quantity - amount;
    connection.query("UPDATE products SET ? WHERE ?", 
      [
        {
          stock_quantity: newAmount
        },
        {
          id: choice
        }
      ],
      function(res,err){
        console.log(res)
        console.log(err)
      }
    
    );
  }
  connection.end();
}
