
import 'package:flutter/material.dart';
import 'package:submission_ui/detaile_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  GlobalKey<ScaffoldState> _globalKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _globalKey,
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              child: Text(
                "Drawer Header",
                style: TextStyle(
                    fontSize: 30,
                    color: Colors.white
                ),
              ),
              decoration: BoxDecoration(color: Colors.blue),
            ),
            SizedBox(
              height: 20,
            ),
            ListTile(
              leading: Icon(
                  Icons.home
              ),
              title: const Text("Page 1"),
              tileColor: Colors.teal,
              onTap: (){
                Navigator.pop(context);
              },
            ),
            SizedBox(
              height: 20,
            ),
            ListTile(
              leading: Icon(
                  Icons.access_time_filled
              ),
              title: const Text("Page 2"),
              tileColor: Colors.teal,
              onTap: (){
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      body: SafeArea(
        child: ListView(
          scrollDirection: Axis.vertical,
          children: [
            Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 20),
                    child: Row(
                      children: [
                        Expanded(
                          child: Container(
                            alignment: Alignment.centerLeft,
                            child: InkWell(
                              onTap: (){
                                _globalKey.currentState?.openDrawer();
                              },
                              child: Icon(
                                Icons.menu_rounded,
                                size: 30,
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                            child: Container(
                              alignment: Alignment.centerRight,
                              child: Icon(Icons.notifications, size: 30),
                            ))
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 15),
                    height: 60,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        Container(
                          margin: EdgeInsets.only(top: 10),
                          height: 60,
                          width: 100,
                          child: Card(
                              color: Colors.black,
                              shape: BeveledRectangleBorder(
                                  borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(30),
                                      bottomRight: Radius.circular(30))),
                              child: Container(
                                margin:EdgeInsets.only(top: 10,right: 20),
                                child: Text(
                                  "All",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                  textAlign: TextAlign.center,
                                ),
                              )),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 10),
                          height: 60,
                          width: 150,
                          child: Card(
                              color: Color.fromARGB(255, 105, 160, 145),
                              shape: BeveledRectangleBorder(
                                  borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(30),
                                      bottomRight: Radius.circular(30))),
                              child: Container(
                                margin:EdgeInsets.only(top: 10,right: 20),
                                child: Text(
                                  "Bussiness",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                  textAlign: TextAlign.center,
                                ),
                              )),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 10),
                          height: 60,
                          width: 180,
                          child: Card(
                              color: Color.fromARGB(255, 105, 160, 145),
                              shape: BeveledRectangleBorder(
                                  borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(30),
                                      bottomRight: Radius.circular(30))),
                              child: Container(
                                margin:EdgeInsets.only(top: 10,right: 20),
                                child: Text(
                                  "Development",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                  textAlign: TextAlign.center,
                                ),
                              )),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(15),
                    height: 530,
                    child: ListView(
                      scrollDirection: Axis.vertical,
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => const DetailPage(),));
                          },
                          child: Container(
                            margin: EdgeInsets.symmetric(vertical: 20),
                            height: 200,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(Radius.circular(20)),
                                color: Color.fromARGB(255, 73, 43, 37)),
                            child: Column(
                              children: [
                                Container(
                                  margin:
                                  EdgeInsets.only(top: 20, left: 20, right: 20),
                                  child: Row(
                                    children: [
                                      Expanded(
                                          flex: 5,
                                          child: Container(
                                            child: Text(
                                              "Business Management",
                                              style: TextStyle(
                                                  fontSize: 23, color: Colors.white),
                                            ),
                                            alignment: Alignment.centerLeft,
                                          )),
                                      Expanded(
                                          child: Container(
                                            child: Icon(
                                              Icons.more_horiz_rounded,
                                              color: Colors.white,
                                            ),
                                            alignment: Alignment.centerRight,
                                          )),
                                    ],
                                  ),
                                ),
                                Container(
                                  margin:
                                  EdgeInsets.only(top: 5, left: 20, right: 20),
                                  child: Text(
                                    "Business & investment",
                                    style: TextStyle(
                                        fontSize: 18,
                                        color: Color.fromARGB(255, 134, 111, 104)),
                                  ),
                                  alignment: Alignment.centerLeft,
                                ),
                                Container(
                                  margin:
                                  EdgeInsets.only(top: 5, left: 20, right: 20),
                                  child: Row(
                                    children: [
                                      Expanded(
                                          child: Container(
                                            child: Row(
                                              children: [
                                                Icon(
                                                  Icons.watch_later_rounded,
                                                  color: Colors.white,
                                                ),
                                                Container(
                                                  margin: EdgeInsets.only(left: 10),
                                                  child: Text(
                                                    "4 months",
                                                    style: TextStyle(
                                                        fontSize: 18,
                                                        color: Color.fromARGB(
                                                            255, 134, 111, 104)),
                                                  ),
                                                )
                                              ],
                                            ),
                                          )),
                                      Expanded(
                                          child: Container(
                                            child: Row(
                                              children: [
                                                Icon(
                                                  Icons.note_add_rounded,
                                                  color: Colors.white,
                                                ),
                                                Container(
                                                  margin: EdgeInsets.only(left: 10),
                                                  child: Text(
                                                    "46 lessons",
                                                    style: TextStyle(
                                                        fontSize: 18,
                                                        color: Color.fromARGB(
                                                            255, 134, 111, 104)),
                                                  ),
                                                )
                                              ],
                                            ),
                                          )),
                                    ],
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.symmetric(
                                      vertical: 10, horizontal: 20),
                                  child: Divider(
                                    color: Colors.white,
                                  ),
                                ),
                                Container(
                                  margin:
                                  EdgeInsets.only(top: 5, left: 20, right: 20),
                                  child: Row(
                                    children: [
                                      Expanded(
                                        child: Container(
                                          child: Text(
                                            "Price   \$399",
                                            style: TextStyle(
                                                fontSize: 20, color: Colors.white),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        alignment: Alignment.centerRight,
                                        child: Row(
                                          children: [
                                            Container(
                                                margin: EdgeInsets.only(right: 10),
                                                child: Icon(
                                                  Icons.star,
                                                  color: Colors.white,
                                                )),
                                            Text(
                                              "4.8",
                                              style: TextStyle(
                                                  color: Colors.white, fontSize: 20),
                                            )
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        InkWell(
                          onTap:  () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => const DetailPage(),));
                          },
                          child: Container(
                            margin: EdgeInsets.symmetric(vertical: 20),
                            height: 200,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(Radius.circular(20)),
                                color: Color.fromARGB(255, 193, 192, 191)),
                            child: Column(
                              children: [
                                Container(
                                  margin:
                                  EdgeInsets.only(top: 20, left: 20, right: 20),
                                  child: Row(
                                    children: [
                                      Expanded(
                                          flex: 6,
                                          child: Container(
                                            child: Text(
                                              "Designing Interior",
                                              style: TextStyle(
                                                  fontSize: 25,
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            alignment: Alignment.centerLeft,
                                          )),
                                      Expanded(
                                          child: Container(
                                            child: Icon(
                                              Icons.more_horiz_rounded,
                                              color: Colors.black,
                                            ),
                                            alignment: Alignment.centerRight,
                                          )),
                                    ],
                                  ),
                                ),
                                Container(
                                  margin:
                                  EdgeInsets.only(top: 5, left: 20, right: 20),
                                  child: Text(
                                    "Architecture",
                                    style: TextStyle(
                                        fontSize: 18,
                                        color: Colors.black54,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  alignment: Alignment.centerLeft,
                                ),
                                Container(
                                  margin:
                                  EdgeInsets.only(top: 5, left: 20, right: 20),
                                  child: Row(
                                    children: [
                                      Expanded(
                                          child: Container(
                                            child: Row(
                                              children: [
                                                Icon(
                                                  Icons.watch_later_rounded,
                                                  color: Colors.black,
                                                ),
                                                Container(
                                                  margin: EdgeInsets.only(left: 10),
                                                  child: Text(
                                                    "8 months",
                                                    style: TextStyle(
                                                        fontSize: 18,
                                                        color: Colors.black54,
                                                        fontWeight: FontWeight.bold),
                                                  ),
                                                )
                                              ],
                                            ),
                                          )),
                                      Expanded(
                                          child: Container(
                                            child: Row(
                                              children: [
                                                Icon(
                                                  Icons.note_add_rounded,
                                                  color: Colors.black,
                                                ),
                                                Container(
                                                  margin: EdgeInsets.only(left: 10),
                                                  child: Text(
                                                    "64 lessons",
                                                    style: TextStyle(
                                                        fontSize: 18,
                                                        color: Colors.black54,
                                                        fontWeight: FontWeight.bold),
                                                  ),
                                                )
                                              ],
                                            ),
                                          )),
                                    ],
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.symmetric(
                                      vertical: 10, horizontal: 20),
                                  child: Divider(
                                    color: Colors.black,
                                  ),
                                ),
                                Container(
                                  margin:
                                  EdgeInsets.only(top: 5, left: 20, right: 20),
                                  child: Row(
                                    children: [
                                      Expanded(
                                        child: Container(
                                          child: Text(
                                            "Price   \$699",
                                            style: TextStyle(
                                                fontSize: 20,
                                                color: Colors.black,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        alignment: Alignment.centerRight,
                                        child: Row(
                                          children: [
                                            Container(
                                                margin: EdgeInsets.only(right: 10),
                                                child: Icon(
                                                  Icons.star,
                                                  color: Colors.black,
                                                )),
                                            Text(
                                              "4.8",
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 20),
                                            )
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        InkWell(
                          onTap:  () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => const DetailPage(),));
                          },
                          child: Container(
                            margin: EdgeInsets.symmetric(vertical: 20),
                            height: 200,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(Radius.circular(20)),
                                color: Color.fromARGB(255, 193, 192, 191)),
                            child: Column(
                              children: [
                                Container(
                                  margin:
                                  EdgeInsets.only(top: 20, left: 20, right: 20),
                                  child: Row(
                                    children: [
                                      Expanded(
                                          flex: 6,
                                          child: Container(
                                            child: Text(
                                              "Facebook Targeting",
                                              style: TextStyle(
                                                  fontSize: 25,
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            alignment: Alignment.centerLeft,
                                          )),
                                      Expanded(
                                          child: Container(
                                            child: Icon(
                                              Icons.more_horiz_rounded,
                                              color: Colors.black,
                                            ),
                                            alignment: Alignment.centerRight,
                                          )),
                                    ],
                                  ),
                                ),
                                Container(
                                  margin:
                                  EdgeInsets.only(top: 5, left: 20, right: 20),
                                  child: Text(
                                    "Marketing",
                                    style: TextStyle(
                                        fontSize: 18,
                                        color: Colors.black54,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  alignment: Alignment.centerLeft,
                                ),
                                Container(
                                  margin:
                                  EdgeInsets.only(top: 5, left: 20, right: 20),
                                  child: Row(
                                    children: [
                                      Expanded(
                                          child: Container(
                                            child: Row(
                                              children: [
                                                Icon(
                                                  Icons.watch_later_rounded,
                                                  color: Colors.black,
                                                ),
                                                Container(
                                                  margin: EdgeInsets.only(left: 10),
                                                  child: Text(
                                                    "2 months",
                                                    style: TextStyle(
                                                        fontSize: 18,
                                                        color: Colors.black54,
                                                        fontWeight: FontWeight.bold),
                                                  ),
                                                )
                                              ],
                                            ),
                                          )),
                                      Expanded(
                                          child: Container(
                                            child: Row(
                                              children: [
                                                Icon(
                                                  Icons.note_add_rounded,
                                                  color: Colors.black,
                                                ),
                                                Container(
                                                  margin: EdgeInsets.only(left: 10),
                                                  child: Text(
                                                    "22 lessons",
                                                    style: TextStyle(
                                                        fontSize: 18,
                                                        color: Colors.black54,
                                                        fontWeight: FontWeight.bold),
                                                  ),
                                                )
                                              ],
                                            ),
                                          )),
                                    ],
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.symmetric(
                                      vertical: 10, horizontal: 20),
                                  child: Divider(
                                    color: Colors.black,
                                  ),
                                ),
                                Container(
                                  margin:
                                  EdgeInsets.only(top: 5, left: 20, right: 20),
                                  child: Row(
                                    children: [
                                      Expanded(
                                        child: Container(
                                          child: Text(
                                            "Price   \$599",
                                            style: TextStyle(
                                                fontSize: 20,
                                                color: Colors.black,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        alignment: Alignment.centerRight,
                                        child: Row(
                                          children: [
                                            Container(
                                                margin: EdgeInsets.only(right: 10),
                                                child: Icon(
                                                  Icons.star,
                                                  color: Colors.black,
                                                )),
                                            Text(
                                              "4.5",
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 20),
                                            )
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 10,right: 10),
                    height: 65,
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
                            Expanded(child: Container(margin:EdgeInsets.only(top:10),child: Icon(Icons.play_circle,size: 30,color: Colors.white,),)),
                            Expanded(child: Container(margin:EdgeInsets.only(top:8),child: Text("Audio",style: TextStyle(
                                fontSize: 15,
                                color: Colors.white
                            ),),))
                          ],),))
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        )
      ),
    );
  }
}
