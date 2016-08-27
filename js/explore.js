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



