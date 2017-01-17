var a = "Hello"

console.log(a)

var el = document.getElementsByTagName("h1")
el[0].style.border = "4PX dotted blue"

var newPara = document.createElement('p');
var ptext= document.createTextNode("I'm a new paragraph created in JavaScript!");

newPara.appendChild(ptext)

var sec = document.getElementsByTagName("section");
sec[0].appendChild(newPara)

var loop = document.querySelectorAll("li");

for (x = 0; x < 4; x++) {
  loop[x].style.color = "green"
};

// Release 2:

var r2 = document.getElementsByTagName("p");

function weDidIt() {
  console.log("We did it!");
}

r2[0].addEventListener("mouseover", weDidIt);