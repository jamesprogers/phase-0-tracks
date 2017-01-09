//Release 0 : write a function that takes an array of words or phrases and returns the longest word or phrase in the array

// pseudocode:
// 1) generate an array with at least one value
// 2) run a method that will count the number of characters in each value in the array
// 3) generate an object that stores the amounts of characters as the key and the original array value as the value of the key in the object
// 4) generate an array of the amounts of characters of each value in the original array
// 5) create a variable that stores the maximum value
// 6) print the value of the object with a key that is equal to the maximum value

function Arr_tester(longest) {

  var length_obj = {};

  var num = [];

  for (var i = 0; i < longest.length; i++) {
    length_obj[longest[i].length] = longest[i];
    num.push(longest[i].length);
  }

  var max = Math.max.apply(null, num);
  console.log(length_obj[max]);
}

var test1 = new Arr_tester(["Yoshi", "Freddie", "Sal"]);
var test2 = new Arr_tester(["Sammy", "Joe", "Rasputin"])



//Release 1: write a function that takes two objects and checks to see if the objects share at least one key-value pair.

//Pseudocode:
//1) create function that has two objects as parameters (obj1 and obj2)
//2) create an array of the keys of obj 1 and an array of the values of obj 1. Then create an array of the keys of obj 2 and an array of the values of obj 2.
//3) iterate the array of obj 1 keys to find a match with the array of obj 2 keys. If there is a match, determine whether the values of the obj 1 and obj 2 value arrays are equal using the index numbers of the obj 1 and obj 2 key arrays

function obj_test(obj1, obj2) {
  key_arr1 = Object.keys(obj1)
  key_arr2 = Object.keys(obj2)
  val_arr1 = []
  for (var val in obj1){
    val_arr1.push(obj1[val]);
  }
  val_arr2 = []
  for (var val in obj2){
    val_arr2.push(obj2[val]);
  }
  result = false
  for (var i = 0; i < key_arr1.length; i++) {
    for (var j = 0; j < key_arr2.length; j++) {
      if (key_arr1[i] == key_arr2[j] && val_arr1[i] == val_arr2[j]) {
        result = true}
    }
  }
  console.log(result)
}



test = new obj_test({name: "Steven", age: 54}, {name: "Tamir", age: 54})

test = new obj_test({name: "Steven", age: 5}, {name: "Tamir", age: 4})

test = new obj_test({name: "Bob", age: 5}, {name: "Bob", age: 4})


//Release 2:Write a function that takes an integer for length, and builds and returns an array of strings of the given length.

//Pseudocode:
//1) Take as parameters and integer that is the number of letter in the randomly generated word (num) and integer that is the length of the final array of random words (arr_length)
//2) generate random numbers based on num. Random numbers must be between 0 and 25.
//3) generate variable of the alphabet
//4) generate the random letter by using the index number of alphabet that corresponds to the randomly generated number
//5) join the random letters to form a random word
//6) push the random word into the array
//7) perform 4-6 arr-length times

function Str_gen(num, arr_length){
  new_arr = [];
  for (var j = 0; j < arr_length; j++) {
    num_arr = [];
    for (var i = 0; i < num; i++) {
      num_arr.push(Math.floor(Math.random()*26))
    }
    alpha = "abcdefghijklmnopqrstuvwxyz";
    alpha_arr = [];
    for (var i = 0; i < num_arr.length; i++) {
      alpha_arr.push(alpha[num_arr[i]]);
      new_word =alpha_arr.join("");
    }
    new_arr.push(new_word);
  }
  console.log(new_arr);
  return new_arr;
}
//Driver Code:
Str_gen(5, 7);


//Driver code to test longest word function performed on string generator
Arr_tester(Str_gen(3, 4));

//do 10 times: generates an array, prints the array, feeds the array to your "longest word" function, and prints the result

for (var i = 0; i < 10; i++) {
  Arr_tester(Str_gen(Math.floor(Math.random()*20),Math.floor(Math.random()*20)))
}
