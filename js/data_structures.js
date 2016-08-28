// Release 0:
var colors = ["blue", "green", "purple", "pink"];
var names = ["Ed", "Cali", "John", "Storm"];

colors.push("red");
names.push("Jack");

console.log(colors);
console.log(names);

var horses = {};
console.log(horses);

for (var i = 0; i < colors.length; i++) {
  horses[names[i]] = colors[i];
};
console.log(horses);