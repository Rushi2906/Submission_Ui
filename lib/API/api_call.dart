import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:submission_ui/API/add_faculty.dart';

class ApiCall extends StatefulWidget {
  const ApiCall({super.key});

  @override
  State<ApiCall> createState() => _ApiCallState();
}

class _ApiCallState extends State<ApiCall> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("User List"),
        actions: [
          InkWell(
            onTap: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context) => AddFaculty(null),)).then((value){
                setState(() {
                  getData();
                });
              });
            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(Icons.add),
            ),
          )
        ],
      ),
      body: SafeArea(
        child: FutureBuilder<http.Response>(
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return ListView.builder(
                itemBuilder: (context, index) {
                  return Card(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: Container(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(jsonDecode(snapshot.data!.body.toString())[index]
                                          ['FacultyName']
                                      .toString()),
                                  Text(jsonDecode(snapshot.data!.body.toString())[index]
                                  ['FacultyMobile']
                                      .toString()),
                                ],
                              ),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.only(right: 20),
                            child: InkWell(
                              onTap: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) {
                                    return AddFaculty(jsonDecode(snapshot.data!.body.toString())[index]);
                                  },
                                )).then((value) {
                                  setState(() {

                                  });
                                },);
                              },
                              child: Icon(Icons.edit),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.only(right: 20),
                            child: InkWell(
                              onTap: ()  {
                                deletefaculty(jsonDecode(snapshot.data!.body.toString())[index]['id']).then((value){
                                  setState(() {
                                    getData();
                                  });
                                });
                              },
                              child: Icon(Icons.delete),
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
                itemCount: jsonDecode(snapshot.data!.body.toString()).length,
              );
            } else {
              return Center(
                child: CircularProgressIndicator(),
              );
            }
          },
          future: getData(),
        ),
      ),
    );
  }

  Future<http.Response> getData() async {
    var response = await http.get(
        Uri.parse("https://6312e462b466aa9b038f4bc1.mockapi.io/faculties"));
    print(response.body.toString());
    return response;
  }

  Future<void> deletefaculty(id) async {
    var response1 = await http.delete(Uri.parse(
        "https://6312e462b466aa9b038f4bc1.mockapi.io/faculties/"+id));
    return;
  }

}
