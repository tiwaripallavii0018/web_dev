/*
console.log("hello");
//document.write("from js"); //document is an object
"use script";
let a=10;//sloppy mode -variable ke sath koi word use nhi kr rhe like var;
console.log(a); //top level window object
console.log(window); //let , const window object ke andr nhi dikayi deta hai //two type memory scope-window and
*/

/*var a=10;
a=20;
console.log(a);
//redeclaration is allowed */
//in let redeclaration is not allowed like let a=10;let b=10;
//reassignment is not allowd in const

function hello(){
    if(true){
        var x=10;//globally assigned 
        console.log("inner",x); // if u are using let it will not allow outer x
    }
    console.log("outer",x);
}
hello();

console.log(z);// no error
var z=20;

//array elementd cannot be modified but ,the array itself cannot be reassigned
const arr=[1,2,3,4,5];
arr.push(6);
console.log(arr);

