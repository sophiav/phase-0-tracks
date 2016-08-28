// Release 0:
var colors = ["blue", "green", "purple", "pink"];
var names = ["Ed", "Cali", "John", "Storm"];

colors.push("red");
names.push("Jack");

console.log(colors);
console.log(names);

// Release 1:
var horses = {};
console.log(horses);

for (var i = 0; i < colors.length; i++) {
  horses[names[i]] = colors[i];
};
console.log(horses);

// Release 2:
function Car(make, color, type) {
  this.make = make;
  this.color = color;
  this.type = type;

  this.ignition = function() {
    console.log("Starting car:", this.make);
  };

  this.driveTo = function(location) {
    console.log("Driving to", location);
  }
};

var car1 = new Car("BMW", "blue", "saloon");
car1.ignition();

var car2 = new Car("Range Rover", "black", "SUV");
car2.ignition();
car2.driveTo("Los Angeles");