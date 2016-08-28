// Release 0: 

// Pseudocode
// Create a variable to hold the biggest word in, keep it empty at first
// Loop through an array of words/phrases and calculate the length
// of each word or phrase
// If the length of the array word/phrase is longer than the length of
// the variable we update the variable
// Otherwise, the variable is not updated and we continue to loop through 
// the rest of the array


// Function:
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


// Driver Code:
var faveThings = ["Labrador", "friends", "summer by the sea", "travels", "Ruby"]; 
var names = ["JavaScript", "HTML", "CSS", "Python"]

console.log(findLongestWord(faveThings));
console.log(findLongestWord(names));
