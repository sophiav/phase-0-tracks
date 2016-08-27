// Pseudocode for function: reverseString
// Input: string
// Output: reversed string
  // Write a function reverseString that takes 1 parameter, a string
  // Split the string to form an array of characters
  // Call .reverse on the array to reverse the order of all the characters
  // Join the modified array into a string.
  // Finally, return the new string 

// Step-by-step string reverse method:
reverseString = function(string) {
  var splitString = string.split("");
  var reverseArray = splitString.reverse();
  var joinArray = reverseArray.join("");
  return joinArray;
};


// Putting everything on one line:
// reverseString = function(string) {
//   return string.split("").reverse().join("");
// };

// Driver Code:
var string1 = reverseString("hello");
var string2 = reverseString("String to Reverse");
var string3 = reverseString("JavaScript"); 


// Conditional print for reverseString calls:
var randomNumber = Math.floor(Math.random() * 10);

if (randomNumber <= 4) {
  console.log("randomNumber is less than 4, so we print: " + string1);
} else if (randomNumber == 5) {
  console.log("randomNumber equals to 5, so we print: " + string2);
} else {
  console.log("randomNumber is bigger than 5, so we print: " + string3);
}




