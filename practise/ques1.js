// const calc=()  => ({
// add:(a,b)=>a+b,
// sub:(a,b)=>a-b,
// mult:(a,b)=>a*b,
// div:(b==0)?0:a/b,

// })
// console.log(calc.add(2,4));


/*
function cal(){
   return{
    add:function(a,b){
        return a+b;
    },
    sub:function(a,b){
        return a-b;
    },
    mult:function(a,b){
        return a*b;
    },
    div:function(a,b){
        return a/b;
    }

   };
}
console.log(cal().add(2,4));*/

/**************Switch************/

/*
const switchcase=(a,b,op)=>{
    switch(op){
        case "add":
            return a+b;
        case "sub":
            return a-b;
        case "mult":
            return a*b;
        case "div":
            (b==0)?0:a/b;
        
    }
};
console.log(switchcase(4,78,"sub"));
*/


/*****************************************/
// const evenOdd=(a)=>{
//     if(a%2==0){
//         console.log("ODD");
//     }
//     else{
//         console.log("EVEN");
//     }
// };
// evenOdd(4);

const isEven=(num)=>num%2==0?"EVen":"ODD";
console.log(isEven(30));

/*************************** */
const reverse=(s)=>{
    let p="";
    for(let i=s.length-1;i>=0;i--){
        let ch=s.charAt(i);
        p+=ch;

    }
    return p;
}
console.log(reverse("kjsfbkdf"));

/********************** */

const Report=(...arr)=>{
    let avg=0;
    let sum=0;
    for(let i=0;i<arr.length;i++){
        sum=sum+arr[i];
    }
    console.log(sum);
    avg=sum/arr.length;
    if(avg>=40){
        return "PAss";
    }else{
        return "Fail";
    }
};
console.log(Report(13,578,9876,2345,78));
