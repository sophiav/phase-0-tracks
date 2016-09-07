console.log("The script is running");

// Create an event-listener
//1. Add a function that selects the photo objects and add a border
function addPinkBorder (event) {
  console.log("click happened! here's the click event:")
  console.log(event);
  event.target.style.border = "2px solid pink";
}


//2. Add an event listener
var photo = document.getElementById("lizard-photo");
photo.addEventListener("click", addPinkBorder);
