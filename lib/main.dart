import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: Scaffold(
        appBar: AppBar(
          title: Text('List View Builder'),
        ),
        body: LvBuilder(),
      ),
    );
  }
}

class LvBuilder extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<Student> Students = new List<Student>();
    Students.add(Student('Sayed Ahmad Jan', '0707525294', 'images/one.jpg'));
    Students.add(Student('Ghufran Ataie', '0798122319', 'images/two.jpg'));
    Students.add(Student('Gul Rahman', '0764444226', 'images/three.jpg'));
    Students.add(Student('Sayed Ahmad Jan', '0707525294', 'images/one.jpg'));
    Students.add(Student('Ghufran Ataie', '0798122319', 'images/two.jpg'));
    Students.add(Student('Gul Rahman', '0764444226', 'images/three.jpg'));
    Students.add(Student('Ghufran Ataie', '0798122319', 'images/two.jpg'));
    Students.add(Student('Gul Rahman', '0764444226', 'images/three.jpg'));
    Students.add(Student('Sayed Ahmad Jan', '0707525294', 'images/one.jpg'));
    Students.add(Student('Ghufran Ataie', '0798122319', 'images/two.jpg'));
    Students.add(Student('Sayed Ahmad Jan', '0707525294', 'images/one.jpg'));
    Students.add(Student('Ghufran Ataie', '0798122319', 'images/two.jpg'));
    return ListView.builder(
        itemCount: Students.length,
        itemBuilder: (Context, Index){
          return Card(
            margin: EdgeInsets.all(8),
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            color: Colors.amberAccent,
            child: ListTile(
              leading: Image.asset(Students[Index].photo),
              title: Text(Students[Index].name),
              subtitle: Text(Students[Index].phone),
              trailing: Icon(Icons.arrow_right),
            ),
          );
        }
    );
  }
}

class Student {
  String name;
  String phone;
  String photo;
  Student(this.name, this.phone, this.photo);
}
