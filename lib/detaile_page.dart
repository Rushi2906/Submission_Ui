import 'package:flutter/material.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({super.key});

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 217, 213, 214),
      body: SafeArea(
        child: ListView(
          scrollDirection: Axis.vertical,
          children: [
            Column(
              children: [
                Container(
                  child: Row(
                    children: [
                      Expanded(
                        child: Container(
                          margin: EdgeInsets.all(15),
                          child: IconButton(
                              onPressed: () {
                                Navigator.pop(context);
                              }, icon: Icon(Icons.arrow_back)),
                        ),
                      ),
                      Expanded(
                          child: Container(
                            child: Text(
                              "Course details",
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            ),
                          )),
                      Expanded(
                          child: Container(
                            child: Icon(Icons.notifications),
                          ))
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 50),
                  height: 250,
                  width: 400,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(30)),
                  ),
                  child: Image(
                    image: AssetImage(
                      "assets/images/image2_detail_page.jpg",
                    ),
                    fit: BoxFit.fill,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 50, top: 20),
                  child: Text(
                    "Business Management",
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                  alignment: Alignment.centerLeft,
                ),
                Container(
                  margin: EdgeInsets.only(left: 50, top: 20),
                  child: Text(
                    "The degree will provide students with all the\ntools nedeed to create and manage company.\nincorporating training elements related to the\ndigital economy",
                    style: TextStyle(
                      fontSize: 15,
                    ),
                  ),
                  alignment: Alignment.centerLeft,
                ),
                Container(
                  margin: EdgeInsets.only(left: 50, top: 20),
                  child: Text(
                    "First lessons Free",
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                  alignment: Alignment.centerLeft,
                ),
                Container(
                  height: 180,
                  child: ListView(
                    scrollDirection: Axis.vertical,
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 60, top: 10, right: 20),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(10),
                              bottomLeft: Radius.circular(10),
                              topRight: Radius.circular(50),
                              bottomRight: Radius.circular(50)),
                          color: Colors.white,
                        ),
                        height: 70,
                        child: Row(
                          children: [
                            Expanded(
                                flex: 2,
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(10),
                                      bottomLeft: Radius.circular(10),
                                    ),

                                  ),
                                  child: Container(
                                    margin: EdgeInsets.all(10),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(10),
                                      ),
                                      color: Color.fromARGB(255, 100, 63, 57),
                                    ),
                                    child: Icon(Icons.add_chart_rounded,size: 40,color: Colors.white,),
                                  ),
                                )),
                            Expanded(
                                flex: 5,
                                child: Container(
                                  child: Column(
                                    children: [
                                      Expanded(child: Container(
                                        margin: EdgeInsets.only(top: 10),
                                        child: Text("Intro. What is bussiness",style:
                                        TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 16
                                        ),),
                                      )),
                                      Expanded(child: Container(
                                        child: Text("2 hours 15 minutes"),
                                        alignment: Alignment.topLeft,
                                      ))
                                    ],
                                  ),
                                )),
                            Expanded(
                                flex: 2,
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                        topRight: Radius.circular(50),
                                        bottomRight: Radius.circular(50)),
                                  ),
                                  child: Icon(Icons.play_circle_fill_rounded,size: 40,color: Color.fromARGB(255, 80, 123, 108),),
                                )),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 60, top: 10, right: 20),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(10),
                              bottomLeft: Radius.circular(10),
                              topRight: Radius.circular(50),
                              bottomRight: Radius.circular(50)),
                          color: Colors.white,
                        ),
                        height: 70,
                        child: Row(
                          children: [
                            Expanded(
                                flex: 2,
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(10),
                                      bottomLeft: Radius.circular(10),
                                    ),

                                  ),
                                  child: Container(
                                    margin: EdgeInsets.all(10),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(10),
                                      ),
                                      color: Color.fromARGB(255, 100, 63, 57),
                                    ),
                                    child: Icon(Icons.pie_chart,size: 40,color: Colors.white,),
                                  ),
                                )),
                            Expanded(
                                flex: 5,
                                child: Container(
                                  child: Column(
                                    children: [
                                      Expanded(child: Container(
                                        margin: EdgeInsets.only(top: 10),
                                        child: Text("Bussiness model",style:
                                        TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 16
                                        ),),
                                        alignment: Alignment.centerLeft,
                                      )),
                                      Expanded(child: Container(
                                        child: Text("1 hours 35 minutes"),
                                        alignment: Alignment.topLeft,
                                      ))
                                    ],
                                  ),
                                )),
                            Expanded(
                                flex: 2,
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                        topRight: Radius.circular(50),
                                        bottomRight: Radius.circular(50)),
                                  ),
                                  child: Icon(Icons.play_circle_fill_rounded,size: 40,color: Color.fromARGB(255, 80, 123, 108),),
                                )),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 60, top: 10, right: 20),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(10),
                              bottomLeft: Radius.circular(10),
                              topRight: Radius.circular(50),
                              bottomRight: Radius.circular(50)),
                          color: Colors.white,
                        ),
                        height: 70,
                        child: Row(
                          children: [
                            Expanded(
                                flex: 2,
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(10),
                                      bottomLeft: Radius.circular(10),
                                    ),

                                  ),
                                  child: Container(
                                    margin: EdgeInsets.all(10),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(10),
                                      ),
                                      color: Color.fromARGB(255, 100, 63, 57),
                                    ),
                                    child: Icon(Icons.add_chart_rounded,size: 40,color: Colors.white,),
                                  ),
                                )),
                            Expanded(
                                flex: 5,
                                child: Container(
                                  child: Column(
                                    children: [
                                      Expanded(child: Container(
                                        margin: EdgeInsets.only(top: 10),
                                        child: Text("Intro. What is bussiness",style:
                                        TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 16
                                        ),),
                                      )),
                                      Expanded(child: Container(
                                        child: Text("2 hours 15 minutes"),
                                        alignment: Alignment.topLeft,
                                      ))
                                    ],
                                  ),
                                )),
                            Expanded(
                                flex: 2,
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                        topRight: Radius.circular(50),
                                        bottomRight: Radius.circular(50)),
                                  ),
                                  child: Icon(Icons.play_circle_fill_rounded,size: 40,color: Color.fromARGB(255, 80, 123, 108),),
                                )),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 40,top: 10,right: 30),
                  height: 70,
                  child: Row(
                    children: [
                      Expanded(
                          flex: 5,
                          child: Container(
                            decoration: BoxDecoration(
                                color: Colors.black,
                                borderRadius: BorderRadius.all(Radius.circular(20))
                            ),
                            height: double.infinity,
                            child: Row(
                              children: [
                                Expanded(
                                    child: Container(
                                      child: Image(
                                        image: AssetImage(
                                            "assets/images/home.png"
                                        ),
                                        height: 40,
                                      )
                                    )),
                                Expanded(
                                    child: Container(
                                      child: Image(
                                        image: AssetImage(
                                            "assets/images/profile.png"
                                        ),
                                        height: 45,
                                        color: Colors.white,
                                      )
                                    )),
                                Expanded(
                                    child: Container(
                                      child: Image(
                                        image: AssetImage(
                                            "assets/images/calendar.png"
                                        ),
                                        height: 35,
                                        color: Colors.white,
                                      )
                                    ))
                              ],
                            ),
                          )),
                      Expanded(flex: 2, child: Container(
                        margin: EdgeInsets.only(left: 10),
                        decoration: BoxDecoration(
                            color: Color.fromARGB(255, 116, 176, 164),
                            borderRadius: BorderRadius.all(Radius.circular(20))
                        ),
                        child: Column(children: [
                          Expanded(child: Container(margin:EdgeInsets.only(top:10),child: Icon(Icons.play_circle,size: 35,color: Colors.white,),)),
                          Expanded(child: Container(margin:EdgeInsets.only(top:10),child: Text("Audio",style: TextStyle(
                              fontSize: 15,
                              color: Colors.white
                          ),),))
                        ],),))
                    ],
                  ),
                )
              ],
            ),
          ],
        )
      ),
    );
  }
}
