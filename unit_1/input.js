//here we create instance 
const r1=require("readline").createInterface({//require--to import a package --- readline-package name
    input:process.stdin,
    output:process.stdout,

}); //object based input method is used here
r1.question("Enter something: ",
    (answer)=>{
        console.log("You entered:",answer);
        r1.close();
    });
    //r1.close();***used to close the input terminal.....but yha pr bina input liye hi close ho ja rha
   // so we will use inside the funtion

