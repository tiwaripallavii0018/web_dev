/*

function add(a,b,c){
    return a+b+c;
}
console.log(add(3,5,6));
//if giving only one-NaN; if more than three--- first three values

function add2(...numbers){//restspread---multiple values are converted into array
    let total=0;
    for(let i=0;i<numbers.length;i++){
        total+=numbers[i];
    }
    return total;
}
console.log(add2(1,54,3,56,555));

function add2(...numbers){//restspread---multiple values are converted into array
    let total=0;
    for(let i of numbers){
        total+=i;
    }
    return total;
}
console.log(add2(1,54,3,56,555));

*/


//       2nd use
/*
let a=[1,2,3333,43,543,32];
let[first,sec,last]=a; //will print 1,2,3333
console.log(first,sec,last);*/

//
// let aa=[1,2,3333,43,543,32];
// let[first,sec,...last]=aa;
// console.log(first,sec,...last);

//spread---expands an array or object into individual objects
// let arr1=[10,20,30];
// let arr2=[...arr];
// console.log(ar2);

// function test(...args){
//     console.log(args);
// }
// let arr=[1,2,3];
// test(...arr);



// even odd using arrow function
const even=(a)=>{
if(a%2==0){
    return "Even";
}else{
    return "Odd";
}
};
console.log(even(39));

//  q2 reverse string
const reverse=(s)=>{
let p="";
for(let i=s.length-1;i>=0;i--){
p+=s.charAt(i);
}
return p;
}
console.log(reverse("Pallavi"));


//pass if avg >40;

const result=(...num)=>{
    let avg=0;
    for(let i=0;i<num.length;i++){
        avg+=num[i];
    }
    if(avg>40){
        return "Pass";
    }else{
        return "Fail";
    }
}
console.log(result(10,20,45,34,65));

