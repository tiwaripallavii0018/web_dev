/*
DART – UNIT 2 
Topics Covered: - Variables & Data Types - Control Flow (if/else, loops, switch) - Functions & Scope - OOP (Classes, Inheritance, Polymorphism) - Mixins - Future & async/await 
Total Questions: 30 
Each Question = 1 Mark 
=========================================================== 
INSTRUCTIONS: - DO NOT change function names - DO NOT modify given classes - Implement logic only inside marked section 
=========================================================== 
*/

List<int> numbers = [10, 20, 30, 40];

Map<String, dynamic> studentData = {
  "name": "Aarav",
  "id": 101,
  "course": "B.Tech"
};

/* ----------------------------------------------------------- 
OOP CLASSES (DO NOT MODIFY) 
----------------------------------------------------------- */

class Person {
  String name;
  Person(this.name);

  String getRole() => "Person";
}

class Student extends Person {
  int id;
  String course;

  Student(String name, this.id, this.course) : super(name);
}

@override
String getRole() => "Student";

mixin Logger {
  void log(String message) {
    print("LOG: $message");
  }
}

class Teacher with Logger {
  String subject;
  Teacher(this.subject);
}

/* ===========================================================
1
Purpose:
Add two integers.
Parameters: - a (int) - b (int)
Constraints: - Return sum.
Test Case:
add(5,5) → 10
=========================================================== */

int add(int a, int b) {
  // STUDENT CODE STARTS HERE
int sum=a+b;
return sum;
  // STUDENT CODE ENDS HERE
}

/* ===========================================================
2
Purpose:
Check if number is even.
Parameters: - n (int)
Constraints: - Must use if/else.
- Return true or false.
Test Case:
isEven(4) → true
=========================================================== */

bool isEven(int n) {
  // STUDENT CODE STARTS HERE
if(n%2==0){
    return true;
}return false;
  // STUDENT CODE ENDS HERE
}

/* ===========================================================
3
Purpose:
Find maximum between two numbers.
Parameters: - a (int) - b (int)
Constraints: - Must use if/else.
Test Case:
findMax(10,20) → 20
=========================================================== */

int findMax(int a, int b) {
  // STUDENT CODE STARTS HERE
if(a>b){
    return a;
}
return b;
  // STUDENT CODE ENDS HERE
}

/* ===========================================================
4
Purpose:
Calculate factorial using loop.
Parameters: - n (int)
Constraints: - Must use for or while loop.
Test Case:
factorial(5) → 120
=========================================================== */

int factorial(int n) {
  // STUDENT CODE STARTS HERE
int fact=1;
for(int i=1;i<=n;i++){
    fact*=i;
}
return fact;
  // STUDENT CODE ENDS HERE
}

/* ===========================================================
5
Purpose:
Count elements in list.
Parameters: - list (List<int>)
Constraints: - Must use loop.
Test Case:
countElements(numbers) → 4
=========================================================== */

int countElements(List<int> list) {
  // STUDENT CODE STARTS HERE
int count=0;
for(int i=0;i<list.length;i++){
    count++;
}
return count;
  // STUDENT CODE ENDS HERE
}

/* ===========================================================
6
Purpose:
Task is to Reverse the list.
Parameters: - list (List<int>)
Constraints: - Must use loop.
- Return new reversed list.
=========================================================== */

List<int> reverseList(List<int> list) {
  // STUDENT CODE STARTS HERE
List<int> a=[];
for(int i=list.length-1;i>=0;i--){
  a.add(list[i]);
}
return a;
  // STUDENT CODE ENDS HERE
}

/* ===========================================================
7
Purpose:
Sum all numbers in list.
Parameters: - list (List<int>)
Constraints: - Must use loop.
=========================================================== */

int sumList(List<int> list) {
  // STUDENT CODE STARTS HERE
int sum=0;
for(int i=0;i<list.length;i++){
  sum+=list[i];
}
return sum;
  // STUDENT CODE ENDS HERE
}

/* ===========================================================
8
Purpose:
Create Student object using Map data.
Parameters: - data (Map<String, dynamic>)
Constraints: - Must return Student object.
=========================================================== */

Student createStudent(Map<String, dynamic> data) {
  // STUDENT CODE STARTS HERE
Student s=new Student(data["name"],data["id"],data["course"]);
return s;
  // STUDENT CODE ENDS HERE
}

/* ===========================================================
9
Purpose:
Display role using polymorphism.
Parameters: - person (Person)
Constraints: - Must call overridden method.
=========================================================== */

String displayRole(Person person) {
  // STUDENT CODE STARTS HERE
return person.getRole();
}
// STUDENT CODE ENDS HERE

/* ===========================================================
10
Purpose:
Use mixin Logger to print message.
Parameters: - message (String)
Constraints: - Create Teacher object.
- Call log() method.
=========================================================== */

void useLogger(String message) {
  // STUDENT CODE STARTS HERE
Teacher tc=new Teacher("Math");
tc.log(message);
  // STUDENT CODE ENDS HERE
}

/* ===========================================================
11
Purpose:
Demonstrate local scope variable.
Parameters:
None
Constraints: - Declare local variable inside function.
- Return its value.
=========================================================== */

int scopeExample() {
  // STUDENT CODE STARTS HERE
int x=10;
return x;
  // STUDENT CODE ENDS HERE
}

/* ===========================================================
12
Purpose:
Task is to implement Grade system using switch.
Parameters: - marks (int)
Constraints: - Must use switch statement.
Test Case:
grade(90) → "A"
=========================================================== */

String grade(int marks) {
  // STUDENT CODE STARTS HERE
int p= marks~/10;;
switch(p){
  case 9:
  return "A";
  case 8:
  return "B";
  case 7:
  return "C";
  default:
  return "Invalid";
}
  // STUDENT CODE ENDS HERE
}

/* ===========================================================
13
Purpose:
Create Future that returns message after 1 second.
Parameters: - message (String)
Constraints: - Must use Future.delayed.
=========================================================== */

Future<String> fetchData(String message) {
  // STUDENT CODE STARTS HERE
return Future.delayed(Duration(seconds:1),()=>message);
  // STUDENT CODE ENDS HERE
}

/* ===========================================================
14
Purpose:
Consume Future using async/await.
Parameters: - future (Future<String>)
Constraints:
- Must use async/await.
- Print result.
=========================================================== */

Future<void> consumeFuture(Future<String> future) async {
  // STUDENT CODE STARTS HERE
String a=await future;
print(a);
  // STUDENT CODE ENDS HERE
}

/* ===========================================================
15
Purpose:
Handle Future error using try/catch.
Constraints: - Must use try/catch.
=========================================================== */

Future<void> errorHandling() async {
  // STUDENT CODE STARTS HERE
try{
  await Future.delayed(Duration(seconds:1));
  throw Exception("Error");
}catch(e){
print(e);
}
  // STUDENT CODE ENDS HERE
}
/* =========================================================== 
COMBINATION QUESTIONS 
=========================================================== */

/* =========================================================== 
16 
Purpose: 
Count even numbers using loop + if. 
Parameters: - list (List<int>) 
=========================================================== */

int countEven(List<int> list) { 
// STUDENT CODE STARTS HERE 
int sum=0;
for(int i=0;i<list.length;i++){
  if(list[i]%2==0){
    sum++;
  }
}return sum;
}
// STUDENT CODE ENDS HERE 
 

/* =========================================================== 
17 
Purpose: 
To perform Inheritance + object creation. 
Parameters: 
None 
Constraints: - Create Student object. - Return role. 
=========================================================== */

String studentRoleTest() { 
// STUDENT CODE STARTS HERE 
Student s=new Student("Anavsj",29,"CS");
return s.getRole();
// STUDENT CODE ENDS HERE 
} 

/* =========================================================== 
18 
Purpose: 
To perform Mixin + object behavior. 
Constraints: - Create Teacher object. - Call log(). 
=========================================================== */

void mixinTest() { 
// STUDENT CODE STARTS HERE 
Teacher t=new Teacher("Math");
t.log("Mixing");
// STUDENT CODE ENDS HERE 
} 

/* =========================================================== 
19 
Purpose: 
Future chaining using then(). 
Parameters: - message (String) 
=========================================================== */

Future<String> futureChain(String message) { 
// STUDENT CODE STARTS HERE 
return Future.delayed(Duration(seconds:1),()=>message)
.then((value){
  return value+" done";
});
// STUDENT CODE ENDS HERE 
} 

/* =========================================================== 
20 
Purpose: 
async + loop combination. 
=========================================================== */

Future<void> asyncLoop() async { 
// STUDENT CODE STARTS HERE 
for(int i=1;i<=5;i++){
await Future.delayed(Duration(seconds:1));
print(i);
}
// STUDENT CODE ENDS HERE 
} 

/* =========================================================== 
21 
Purpose: 
While loop sum from 1 to n. 
Parameters: - n (int) 
=========================================================== */

int sumWhile(int n) { 
// STUDENT CODE STARTS HERE 
int i=1;
int sum=0;
while(i<=n){
sum+=i;
i++;
}
return sum;
// STUDENT CODE ENDS HERE 
} 

/* =========================================================== 
22 
Purpose: 
Encapsulation example using private variable. 
Constraints: - Declare private variable inside class or function. 
=========================================================== */

int encapsulationExample() { 
// STUDENT CODE STARTS HERE 
int _private =598;
return _private;
// STUDENT CODE ENDS HERE 
} 

/* =========================================================== 
23 
Purpose: 
Nested loop printing pattern. 
=========================================================== */

void nestedLoop(int n) { 
// STUDENT CODE STARTS HERE 
for(int i=1;i<n;i++){
  for(int j=i+1;j<=i;j++){
    print("*");
  }
}
} 
// STUDENT CODE ENDS HERE 

/* =========================================================== 
24 
Purpose: 
Create Person object. 
Parameters: - name (String) 
=========================================================== */

Person createPerson(String name) { 
// STUDENT CODE STARTS HERE 
Person p=new Person(name);
return p;

// STUDENT CODE ENDS HERE 
} 

/* =========================================================== 
25 
Purpose: 
Future.delayed returning value. 
=========================================================== */

Future<String> delayedMessage() { 
// STUDENT CODE STARTS HERE 
return Future.delayed(Duration(seconds:1),()=>"Hello");
// STUDENT CODE ENDS HERE 
} 

/* =========================================================== 
26 
Purpose: 
async returning integer sum. 
=========================================================== */

Future<int> asyncSum(int a, int b) async { 
// STUDENT CODE STARTS HERE 
return a+b;
// STUDENT CODE ENDS HERE 
} 

/* =========================================================== 
27 
Purpose: 
Filter list greater than 20 using loop. 
=========================================================== */

List<int> filterGreaterThan20(List<int> list) { 
// STUDENT CODE STARTS HERE 
List<int> l=[];
for(int i=0;i<list.length;i++){
  if(list[i]>20){
    l.add(list[i]);
  }
}return l;

} 
// STUDENT CODE ENDS HERE 

/* =========================================================== 
28 
Purpose: 
Switch calculator. 
Parameters: - a (int) - b (int) - operator (String) 
=========================================================== */

dynamic calculator(int a, int b, String operator) { 
// STUDENT CODE STARTS HERE 
switch(operator){
  case "+":
  return a+b;
  case "-":
  return a-b;
  case "*":
  return a*b;
  case "/":
  if(b==0)return "not posssine";
  return a/b;
  default:
  return "invalid";
}
// STUDENT CODE ENDS HERE 
} 

/* =========================================================== 
29 
Purpose: 
Polymorphism test. 
=========================================================== */

String polymorphismTest() { 
// STUDENT CODE STARTS HERE 
Person p=Student("Aarace",23,"sfb");
return (p.getRole());
// STUDENT CODE ENDS HERE 
} 

/* =========================================================== 
30 
Purpose: 
Display Full integration (OOP + async + loop). 
=========================================================== */

Future<void> integrationTest() async { 
// STUDENT CODE STARTS HERE 
Student s=new Student("suyfg",13,"fg");
print(s.getRole());
for(int i=0;i<numbers.length;i++){
  await Future.delayed(Duration(seconds:2));
  print(numbers[i]);
}
// STUDENT CODE ENDS HERE 
}

/* ===========================================================
DRIVER CODE
Used to test all functions
=========================================================== */

Future<void> main() async {

  print("Q1 Add:");
  print(add(5,5));

  print("Q2 Even Check:");
  print(isEven(4));

  print("Q3 Max:");
  print(findMax(10,20));

  print("Q4 Factorial:");
  print(factorial(5));

  print("Q5 Count Elements:");
  print(countElements(numbers));

  print("Q6 Reverse List:");
  print(reverseList(numbers));

  print("Q7 Sum List:");
  print(sumList(numbers));

  print("Q8 Create Student:");
  Student s = createStudent(studentData);
  print(s.name);

  print("Q9 Display Role:");
  print(displayRole(s));

  print("Q10 Logger Test:");
  useLogger("Testing Logger");

  print("Q11 Scope Example:");
  print(scopeExample());

  print("Q12 Grade:");
  print(grade(90));

  print("Q13 Fetch Data:");
  var future = fetchData("Hello Future");

  print("Q14 Consume Future:");
  await consumeFuture(future);

  print("Q15 Error Handling:");
  await errorHandling();

  print("Q16 Count Even:");
  print(countEven(numbers));

  print("Q17 Student Role Test:");
  print(studentRoleTest());

  print("Q18 Mixin Test:");
  mixinTest();

  print("Q19 Future Chain:");
  print(await futureChain("Future Chain"));

  print("Q20 Async Loop:");
  await asyncLoop();

  print("Q21 Sum While:");
  print(sumWhile(5));

  print("Q22 Encapsulation:");
  print(encapsulationExample());

  print("Q23 Nested Loop Pattern:");
  nestedLoop(3);

  print("Q24 Create Person:");
  Person p = createPerson("Aarav");
  print(p.name);

  print("Q25 Delayed Message:");
  print(await delayedMessage());

  print("Q26 Async Sum:");
  print(await asyncSum(10,20));

  print("Q27 Filter >20:");
  print(filterGreaterThan20(numbers));

  print("Q28 Calculator:");
  print(calculator(10,5,"+"));

  print("Q29 Polymorphism:");
  print(polymorphismTest());

  print("Q30 Integration Test:");
  await integrationTest();
}