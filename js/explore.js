// pseudocode a function that takes a string as a parameter and reverses the string. reverse("hello"), for example, should return "olleh"

// create a variable that has a string "hello". Create a second variable that is blank. Create variable i that is equal to the top index number in "hello" - this would be the length of "hello" minus 1. Have i decrease each time until i is less than 0. Have the character in the string associated with the index number equal to i become part of the new variable.

//  implement your function in JavaScript

var str = "hello";
var str2 = "";

for (var i = str.length - 1; i >= 0; i--) {
  str2 += str[i];
}

console.log(str2)

// Add driver code that calls the function in order to reverse a string of your choice (as long as it's not a palindrome!), and stores the result of the function in a variable

function reverse(word) {
  var str2 = "";
  for (var i = word.length - 1; i >= 0; i--) {
  str2 += word[i];}
  return str2
}

console.log(reverse("yoshi"))


// Add driver code that prints the variable if some condition is true. The condition can be a silly one, like 1 == 1

if (1 == 1) {
  console.log(reverse("yoshi"));}
else {console.log("yoshi")}

