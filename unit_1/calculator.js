
const calculator = ()=>({
    add:(a,b)=>a+b,
    sub:(a,b)=>a-b,
    mult:(a,b)=>a*b,
    div:(a,b)=>(b==0 ? "Error": a/b),
});

console.log(calculator().add(2,3));
console.log(calculator().sub(6,3));
console.log(calculator().mult(5,6));
console.log(calculator().div(3,4));