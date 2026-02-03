//****(``)--backtick    [ttemporal literals]
// const aa=()=>{return {user:"name"}} //or ({user :"name"}) 
// console.log(aa());
// const bb=()=>[1,2,3,4,5,6];
// console.log(bb());

const user={
    name:"aj",age: 22,
    welcome:function(){
        console.log(`hello ${this.name}`);
        console.log(this)
    }

};
user.welcome(); /// agar this ko kisi object se initialize kr diya to fir sirf defintion hi aayega output me ***
//** coz ye dynamic nhi ..lexical analysis  [kaha pr h issse matlab h]

user.name="ajay";
user.welcome();// now it will show name as ajay

//****if storing in value
const f=user.welcome(); /// undefined aayega yahan  cozz wo surrin=unding me dhudhta h but yha to mila nhi/
const k=user.welcome;
console.log(f);
console.log(k);
