// //destructuring in function
// const Student={
// name:"Chavi Trivedi",
// age:20,
// address:{
// city: "Siddharthnagar",
// state:"UP"}
// }
// // const name=Student.name;
// // const age=Student.age;
// // const {name, age}=Student;//this is destructuring
// // console.log(name,age);


// const{name:stuname="Pallavi", age,address:{city}}=Student; ///default value="Pallavi" will only work when no values are in the object

// console.log(stuname,age,city);
// //***************************************************************************** */

// //// funciton
// function displaystu(object){
// console.log(`My name is ${object.name} and age is ${object.age}`);
// }
// displaystu(Student);// this is the normal way to print 


// //****now destructuring
// function displaystu({name,age}){
// console.log(`My name is ${name} and age is ${age}`);
// }
// displaystu(Student);


// let numbers=[30,40,50];
// let[a,b,c]=numbers;
// console.log(a);
// console.log(b);
// console.log(c);///in this case it will simply print values;

// // let a,b,c=numbers; // here it will print all in c only
// // console.log(a);
// // console.log(b);
// // console.log(c);

let p=5;
let q=0;
[p,q]=[q,p];
console.log(p);
console.log(q);


