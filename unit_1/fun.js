
(function show(){
    console.log("Welcome to CSB");
}) (); //===IIFE-immediately invoked funciton epression   //  var is old and let is used (ew)




const show =()=>{// arrow function
    console.log("Welcome to CSB");
}
show();



(() =>{ //Anonymous function**********************agar iife nhi lagana to kisi varaiblr me assign krke use krenge
    console.log("welcone");//****** they do not have their own this ****uses surroundings this
})();


function person(){
    this.age=25;
    setTimeout(function(){
        console.log(this.age);
    },1000);

}
new person();

function person2(){
    this.age=25;
    setTimeout(() => {
        console.log(this.age);
    },1000);

}
new person2();
