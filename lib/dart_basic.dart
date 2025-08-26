/*


* PROBLEM - 1

void main() {

  String sentence = "Dart is fun and Dart is powerful";

    var words = sentence.split(" ");    split the sentence into word
    var counts = {};

  for (var w in words){
    counts[w] = (counts[w] ?? 0) +1;  check if the word count and putting in to dictionary

  }
    print(counts);
}

output=  {Dart: 2, is: 2, fun: 1, and: 1, powerful: 1}
Time complexity: O(n),
Space complexity: O(m)




* PROBLEM- 2


void main() async {

  print("Fetching..");
  await Future.delayed(Duration(seconds: 2));
  print(" Data Fetched");

} output = Fetching..
           Data Fetched


2)

void main() {
  print("First Operation");
  Future.delayed(Duration(seconds:3),()=>print('Second Big Operation')); taking 3 seconds to load
  print("Third Operation");
  print("Last Operation");

}



* PROBLEM - 3


 enum ResultStatus{pass,fail}

abstract class StudentBase{

  String name;
  int marks;

  StudentBase(this.name, this.marks);

  ResultStatus getResult();
}

class Student  extends StudentBase{

  Student(String name , int marks): super(name,marks);

  @override
  ResultStatus getResult(){
    return marks>= 40 ? ResultStatus.pass : ResultStatus.fail;
  }
}

int getHighest(List<Student> students){
   int highest = students[0].marks;
   for(var s in students){
     if (s.marks > highest){
       highest = s.marks;
     }
   }

  return highest;

}

double getAverage(List<Student> students){
  int total = 0;
  for(var s in students){
    total += s.marks;
  }
  return total/ students.length;
}

void main() {

  List<Student> students= [
    Student ("Alice",50),
    Student ("Bob",35),
    Student ("Charlie",75),
  ];

  int highest = getHighest(students);
  double average = getAverage(students);


  print ("Highest Score : $highest");
  print ("Average Score : ${average.toStringAsFixed(1)}");

  for(var s in students){
    print ("${s.marks} : ${s.getResult() == ResultStatus.pass ? 'Pass' : 'Fail'}");
  }


}

output =

Highest Score : 75
Average Score : 53.3
50 : Pass
35 : Fail
75 : Pass

Time complexity: O(n),
Space complexity: O(n),
 */



// date : 25|8|25


import 'dart:io';

void main(){
  /*print('hello i am \' john josaph\'');

  final int num = 7;
  print(num);

# Write a program in Dart that finds simple interest. Formula= (p * t * r) / 100

  stdout.write("Enter Principle Amount P :");
  double p = double.parse(stdin.readLineSync()!);

  stdout.write("Enter time Duration T :");
  double t= double.parse(stdin.readLineSync()!);

  stdout.write("Enter Intrest Rate R :");
  double r= double.parse(stdin.readLineSync()!);

  double simpleIntrest = (p * t * r) / 100;

  print("Simple Intrest is $simpleIntrest");

#Write a program to print a square of a number using user input.

  stdout.write("Enter number :");
  int num = int.parse(stdin.readLineSync()!);

  int sqr= (num*num);
  print(sqr);

  String name = "Bhumika";

  stdout.write("Enter your Last");
  String last = stdin.readLineSync()!;

  String fullName= "$name $last";

  print(fullName);



  // # Write a program to find quotient and remainder of two integers.

  stdout.write("Enter first number :");
  int num1= int.parse(stdin.readLineSync()!);

  stdout.write("Enter Second Number :");
  int num2 = int.parse(stdin.readLineSync()!);

  int quotient = num1 ~/ num2;
  int remainder = num1 % num2;


  print("Quotient : $quotient");
  print("Remainder : $remainder");


  // # Write a program to swap two numbers.


  stdout.write("Enter first number : ");
  int a = int.parse(stdin.readLineSync()!);

  stdout.write("Enter  Second Number : ");
  int b = int.parse(stdin.readLineSync()!);

  print("Befor Swap a=$a and b=$b");

  // int temp = a;
  // a=b;              #with temp
  // b=temp;

  a= a+b;
  b= a-b;             #without temp
  a= b-a;

  print("After Swap a=$a and b=$b");

//#Write a program in Dart to remove all whitespaces from String.

stdout.write("Enter Any String here");
String input = stdin.readLineSync()!;

// String result= input.replaceAll(" ","");
  String result= input.replaceAll(RegExp(r"\s+"),""); # included TAB , Enter TOO

print(result);



  // # Write a Dart program to convert String to int

   stdout.write("Enter String here : ");
   String input = stdin.readLineSync()!;

   int num = int.parse(input);
   print("${num + 10}");

# Suppose, you often go to restaurant with friends and you have to split amount of bill. Write a program to calculate split amount of bill.
   Formula= (total bill amount) / number of peopleSuppose, you often go to restaurant with friends and you have to split amount of bill.
   Write a program to calculate split amount of bill. Formula= (total bill amount) / number of people

   stdout.write("Enter Total bill Amount  :");
   double amt = double.parse(stdin.readLineSync()!);

   stdout.write("Enter number of People  :");
   int person = int.parse(stdin.readLineSync()!);

   double amountToPay = (amt/person);
    print("Total amount to pay Individual is $amountToPay");

  // # Suppose, your distance to office from home is 25 km and you travel 40 km per hour. Write a program to calculate time taken to reach office in minutes.
  // Formula= (distance) / (speed);

  double distance = 25;
  double speed = 40;

  double time = (distance) / (speed);
  double timeInMini = time * 60;

  print ( " Time take to reach office in minutes : $timeInMini");


  var dayOfWeek = 5;
  switch (dayOfWeek) {
    case 1:
      print("Day is Sunday.");
      break;
    case 2:
      print("Day is Monday.");
      break;
    case 3:
      print("Day is Tuesday.");
      break;
    case 4:
      print("Day is Wednesday.");
      break;
    case 5:
      print("Day is Thursday.");
      break;
    case 6:
      print("Day is Friday.");
      break;
    case 7:
      print("Day is Saturday.");
      break;
    default:
      print("Invalid Weekday.");
      break;

    # Create an int variable age and initialize it with your age. Write ternary statement to print “Teenager” if age is between 13 and 19 and “Not Teenager”
    if age is not between 13 and 19.
  }

stdout.write("Enter Your age :");
int age = int.parse(stdin.readLineSync()!);

String result = (age>=13 && age<=19) ? "Teenager" : " Not Teenager";

print(result);*/




}










