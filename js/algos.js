// Pseudocode: Release 0
// Function input: an array
// Function output: longest word from the array(input)
// Create a variable to hold the biggest word in, keep it empty at first
// Loop through an array of words/phrases and calculate the length
// of each word or phrase
// If the length of the array word/phrase is longer than the length of
// the variable we update the variable
// Otherwise, the variable is not updated and we continue to loop through 
// the rest of the array
function findLongestWord(array) {
  var longestWord = ""; 

  for (var i = 0; i < array.length; i++) {
    if (array[i].length > longestWord.length) {
      var longestWord = array[i];
    } else {
      var longestWord;
    }
  };

  return longestWord;
}

// Pseudocode: Release 1
// Function input: 2 objects
// Function output: true or false
// Create 2 variables to hold an array of keys for each object
// (Assume both objects have the same number of keys)
// Loop through the first object's keys and get the key name at every iteration.
// Then using the key name, check if the value for that key is the same in both objects
// If both values match then return true
// Otherwise, continue checking for the next key.
// When the loop ends and no key/value match, then return false
function keyValueMatch(obj1, obj2) {
  var obj1Keys = Object.keys(obj1);
  var obj2Keys = Object.keys(obj2);

  for (var i = 0; i < obj1Keys.length; i++) {
    var key = obj1Keys[i];
    if(obj1[key] === obj2[key]) {
      return true;
    }
  }

  return false;
}

// Pseudocode: Release 2:
// Function input: N - number of strings (integer)
// Function output: array of N random strings
function generateRandomStrings(number) {
  var array = [];
  var count = 0;

  while (count < number) {
    array.push(randomString());
    count += 1; 
  }
  return array;
}

// Function output: random string of random length
function randomString() {
  var alphabet = "abcdefghijklmnopqrstuvwxyz";
  var length = Math.floor(Math.random() * 10) + 1;
  var str = "";

  for (var i = 0; i < length; i++) {
    var lengthOfAlphabet = alphabet.length;
    str += alphabet[Math.floor(Math.random() * lengthOfAlphabet)];
  }

  return str;
}



// Driver Code:
// Release 0:
var faveThings = ["Labrador", "friends", "summer by the sea", "travels", "Ruby"]; 
var names = ["JavaScript", "HTML", "CSS", "Python"]

console.log(findLongestWord(faveThings));
console.log(findLongestWord(names));


// Release 1:
var person1 = {name:"Alice", age:30, eyeColor:"blue"};
var person2 = {name:"Steven", age:10, eyeColor:"blue"};

console.log("Do they match?", keyValueMatch(person1, person2));


// Release 2:
for(var i=0; i<10; i++) {
  var randomStrings = generateRandomStrings(3);
  var longestWord = findLongestWord(randomStrings);
  console.log("random strings array:", randomStrings);
  console.log("longest word in array:", longestWord);
}
