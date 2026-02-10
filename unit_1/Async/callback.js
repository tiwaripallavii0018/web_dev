// //event lop,call stack,....ready  quueu---> to callstack by event loop
// console.log("first");
// console.log("second");
// ///=====Async--- agr aisa h to wapas callstack se ready queue me daal dega
// // agar dependent nhi h to dusri execute ho jayegi 
// console.log("third");


/* Set time out
function aa(){
    console.log("first");
}
setTimeOut(aa,2999);//in milisecond-----delay means asynchronous

*/

/*//Set interval--- repeates
setInterval(()=>{
    console.log("first");
},2000);
//infinite time
*/

/*
// to stop
let count=0;
let id=setInterval(()=>{
    console.log("first");
    if(count==5){
        clearInterval(id); // print 6 times
    }
    count++;
},2000);
*/

/*
function roll(num,next){
    setTimeout(()=>{
        console.log("ROll no. is "+num);
        if(next)next();
    },2000)
}
roll(121212,()=>{
    console.log("wait it's getting downloaded ");
    roll(12312,()=>{
        console.log("wait its getting downloaded");
        roll(12333,()=>{
            console.log("wait its almost over");
            roll(12335);
        });
    });
});
*/

// to have diff time outs--
function roll(num, time, next) {
    setTimeout(() => {
        console.log("ROll no. is " + num);
        if (next) next();
    }, time);
}

roll(121212, 2000, () => {
    console.log("wait it's getting downloaded ");
    roll(12312, 4000, () => {
        console.log("wait its getting downloaded");
        roll(12333, 3000, () => {
            console.log("wait its almost over");
            roll(12335, 1000);
        });
    });
});

/// maintains two array uiteam& flutterteam.this fucntion shwMenu() prints 

//Consider the following js program. It maintains two arrays ulteam ,
//  and flutterteam, The function
//showMenu() prints both teams and then print a merged list using the spread operator.
//The function display(team type , option ) uses switch statement to print a team based on the value o fteam type
const team=(...uiteam,...flutter)=>{

for(let i=0;i<uiteam.length;i++){
    console.log(uiteama[i]);
}
for(let i=0;i<flutter.length;i++){
    console.log(flutter[i]);
}

 
}