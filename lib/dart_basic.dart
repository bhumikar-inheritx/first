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


 */