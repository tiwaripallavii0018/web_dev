
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
// using switch case:

const calc = (a, b, operation) => {
    switch (operation) {
        case "add":
            return a + b;

        case "sub":
            return a - b;

        case "mul":
            return a * b;

        case "div":
            return b === 0 ? "error" : a / b;

        default:
            return "Invalid operation";
    }
};

// usage
console.log(calc(2, 3, "add"));
console.log(calc(1, 2, "sub"));
console.log(calc(1, 2, "mul"));
console.log(calc(1, 2, "div"));