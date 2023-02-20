import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class AddFaculty extends StatefulWidget{

  dynamic? map;
  AddFaculty(this.map);

  GlobalKey<FormState> formkey = GlobalKey();
  var name = new TextEditingController();
  var image = new TextEditingController();
  var email = new TextEditingController();
  var mobile_no = new TextEditingController();

  @override
  State<AddFaculty> createState() => _AddFacultyState();
}

class _AddFacultyState extends State<AddFaculty> {

  void initState(){
    widget.name.text = widget.map==null?'':widget.map['FacultyName'].toString();
    widget.image.text = widget.map==null?'':widget.map['FacultyImage'].toString();
    widget.email.text = widget.map==null?'':widget.map['FacultyEmail'].toString();
    widget.mobile_no.text = widget.map==null?'':widget.map['FacultyMobile'].toString();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Container(
                child: TextFormField(
                  controller: widget.name,
                  decoration: InputDecoration(
                    hintText: "Enter Faculty Name"
                  ),
                ),
              ),
              Container(
                child: TextFormField(
                  controller: widget.image,
                  decoration: InputDecoration(
                      hintText: "Enter Faculty Image"
                  ),
                ),
              ),
              Container(
                child: TextFormField(
                  controller: widget.email,
                  decoration: InputDecoration(
                      hintText: "Enter Faculty Email"
                  ),
                ),
              ),
              Container(
                child: TextFormField(
                  controller: widget.mobile_no,
                  decoration: InputDecoration(
                      hintText: "Enter Faculty Mobile No"
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 20),
                child: ElevatedButton(
                  onPressed: () async {
                    if(widget.map==null){
                      await addFaculty().then((value) => (value) {
                      });
                    }
                    else{
                      await editFaculty().then((value) => (value) {
                      });
                    }

                    Navigator.of(context).pop(true);

                  }, child: Text("Submit",style: TextStyle(fontSize: 24),),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Future<void> addFaculty() async{
    var map ={};
    map['FacultyName']=widget.name.text;
    map['FacultyImage']=widget.image.text;
    map['FacultyEmail']=widget.email.text;
    map['FacultyMobile']=widget.mobile_no.text;
    var response1 = http.post(Uri.parse("https://6312e462b466aa9b038f4bc1.mockapi.io/faculties",),body: map);
  }

  Future<void> editFaculty() async{
    var map ={};
    map['FacultyName']=widget.name.text;
    map['FacultyImage']=widget.image.text;
    map['FacultyEmail']=widget.email.text;
    map['FacultyMobile']=widget.mobile_no.text;
    var response1 = http.put(Uri.parse("https://6312e462b466aa9b038f4bc1.mockapi.io/faculties/"+widget.map['id'].toString(),),body: map);
  }
}