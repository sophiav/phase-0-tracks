console.log("This script is running!")

// Create a function that changes the font color whenever a user clicks on the image
function clickImage() {
  var title = document.getElementById("name");
  title.style.fontSize = "60px";
  title.style.color = "gold";
  title.style.letterSpacing = "50px";

  var name = document.getElementsByTagName("strong");
  name[0].style.color = "gold";
}



// Add an Event Listener
var title = document.getElementById("pikachu-photo");
title.addEventListener("click", clickImage);