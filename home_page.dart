import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;
  int _tabs = 0;

  @override
  Widget build(BuildContext context) {
    List pages = [
      SafeArea(
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: 800,
            color: Colors.black,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  //Profile & Title
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        width: 30,
                        height: 30,
                        margin: EdgeInsets.only(right: 10),
                        decoration: BoxDecoration(
                            color: Colors.white, shape: BoxShape.circle),
                      ),
                      Text(
                        "Feed",
                        style: GoogleFonts.montserrat(
                            color: Colors.white,
                            fontWeight: FontWeight.w700,
                            fontSize: 35),
                      ),
                      IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.menu,
                            color: Colors.white,
                          ))
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  //Tabs
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    physics: BouncingScrollPhysics(),
                    child: Row(
                      children: [
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              _tabs = 0;
                            });
                          },
                          child: Container(
                            height: 40,
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.white, width: 2),
                              borderRadius: BorderRadius.circular(50),
                              color: _tabs == 0 ? Colors.white : Colors.black,
                            ),
                            child: Container(
                                margin: EdgeInsets.only(left: 10, right: 10),
                                child: Center(
                                  child: Text(
                                    "All",
                                    style: GoogleFonts.montserrat(
                                        color: _tabs == 0
                                            ? Colors.black
                                            : Colors.white,
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600),
                                  ),
                                )),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              _tabs = 1;
                            });
                          },
                          child: Container(
                            height: 40,
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.white, width: 2),
                              borderRadius: BorderRadius.circular(50),
                              color: _tabs == 1 ? Colors.white : Colors.black,
                            ),
                            child: Container(
                                margin: EdgeInsets.only(left: 10, right: 10),
                                child: Center(
                                  child: Text(
                                    "Planets",
                                    style: GoogleFonts.montserrat(
                                        color: _tabs == 1
                                            ? Colors.black
                                            : Colors.white,
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600),
                                  ),
                                )),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              _tabs = 2;
                            });
                          },
                          child: Container(
                            height: 40,
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.white, width: 2),
                              borderRadius: BorderRadius.circular(50),
                              color: _tabs == 2 ? Colors.white : Colors.black,
                            ),
                            child: Container(
                                margin: EdgeInsets.only(left: 10, right: 10),
                                child: Center(
                                  child: Text(
                                    "Comets",
                                    style: GoogleFonts.montserrat(
                                        color: _tabs == 2
                                            ? Colors.black
                                            : Colors.white,
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600),
                                  ),
                                )),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              _tabs = 3;
                            });
                          },
                          child: Container(
                            height: 40,
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.white, width: 2),
                              borderRadius: BorderRadius.circular(50),
                              color: _tabs == 3 ? Colors.white : Colors.black,
                            ),
                            child: Container(
                                margin: EdgeInsets.only(left: 10, right: 10),
                                child: Center(
                                  child: Text(
                                    "Solar system",
                                    style: GoogleFonts.montserrat(
                                        color: _tabs == 3
                                            ? Colors.black
                                            : Colors.white,
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600),
                                  ),
                                )),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              _tabs = 4;
                            });
                          },
                          child: Container(
                            height: 40,
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.white, width: 2),
                              borderRadius: BorderRadius.circular(50),
                              color: _tabs == 4 ? Colors.white : Colors.black,
                            ),
                            child: Container(
                                margin: EdgeInsets.only(left: 10, right: 10),
                                child: Center(
                                  child: Text(
                                    "Asteroids",
                                    style: GoogleFonts.montserrat(
                                        color: _tabs == 4
                                            ? Colors.black
                                            : Colors.white,
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600),
                                  ),
                                )),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  //List
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width / 2.2,
                        height: 200,
                        child: Stack(
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Container(
                                  width: MediaQuery.of(context).size.width / 2.2,
                                  height: 150,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      border: Border.all(
                                          width: 1.5,
                                          color: Colors.white.withOpacity(0.3))),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Text("Mars",style: GoogleFonts.montserrat(color: Colors.white,fontWeight: FontWeight.w600,fontSize: 25),),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Icon(Icons.visibility,color: Colors.white.withOpacity(0.3),),
                                          SizedBox(width: 5,),
                                          Text("246 views",style: GoogleFonts.montserrat(color: Colors.white.withOpacity(0.3)),)
                                        ],
                                      ),
                                      SizedBox(height: 15,),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                    width: 100,
                                    height: 100,
                                    child: Image.network(
                                      "https://simanila.unila.ac.id/wp-content/uploads/revslider/solar-system-showcase-slider1/mars.png",
                                      fit: BoxFit.cover,
                                    )),
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width / 2.2,
                        height: 200,
                        child: Stack(
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Container(
                                  width: MediaQuery.of(context).size.width / 2.2,
                                  height: 150,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      border: Border.all(
                                          width: 1.5,
                                          color: Colors.white.withOpacity(0.3))),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Text("Mercury",style: GoogleFonts.montserrat(color: Colors.white,fontWeight: FontWeight.w600,fontSize: 25),),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Icon(Icons.visibility,color: Colors.white.withOpacity(0.3),),
                                          SizedBox(width: 5,),
                                          Text("6746 views",style: GoogleFonts.montserrat(color: Colors.white.withOpacity(0.3)),)
                                        ],
                                      ),
                                      SizedBox(height: 15,),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                    width: 100,
                                    height: 100,
                                    child: Image.network(
                                      "https://simanila.unila.ac.id/wp-content/uploads/revslider/solar-system-showcase-slider1/mercury.png",
                                      fit: BoxFit.cover,
                                    )),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 15,),
                  //Banner
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 160,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                          image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR6eJkijS2_xosC9BdxVcHsUQpzPJGeFCtdvw&usqp=CAU"),
                          fit: BoxFit.cover
                        ),
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.blue
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Row(
                          children: [
                            SizedBox(width: 10,),
                            Text("NASA \nout in space",style: GoogleFonts.montserrat(color: Colors.white,fontWeight: FontWeight.w700,fontSize: 25),),
                            SizedBox(width: 50,),
                            Container(
                              margin: EdgeInsets.only(top: 20),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Icon(Icons.visibility,color: Colors.white.withOpacity(0.6),),
                                  SizedBox(width: 5,),
                                  Text("6746 views",style: GoogleFonts.montserrat(color: Colors.white.withOpacity(0.6)),)
                                ],
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 10,),
                      ],
                    ),
                  ),
                  SizedBox(height: 15,),
                  //List
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width / 2.2,
                        height: 200,
                        child: Stack(
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Container(
                                  width: MediaQuery.of(context).size.width / 2.2,
                                  height: 150,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      border: Border.all(
                                          width: 1.5,
                                          color: Colors.white.withOpacity(0.3))),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Text("Mars",style: GoogleFonts.montserrat(color: Colors.white,fontWeight: FontWeight.w600,fontSize: 25),),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Icon(Icons.visibility,color: Colors.white.withOpacity(0.3),),
                                          SizedBox(width: 5,),
                                          Text("246 views",style: GoogleFonts.montserrat(color: Colors.white.withOpacity(0.3)),)
                                        ],
                                      ),
                                      SizedBox(height: 15,),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                    width: 100,
                                    height: 100,
                                    child: Image.network(
                                      "https://simanila.unila.ac.id/wp-content/uploads/revslider/solar-system-showcase-slider1/mars.png",
                                      fit: BoxFit.cover,
                                    )),
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width / 2.2,
                        height: 200,
                        child: Stack(
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Container(
                                  width: MediaQuery.of(context).size.width / 2.2,
                                  height: 150,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      border: Border.all(
                                          width: 1.5,
                                          color: Colors.white.withOpacity(0.3))),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Text("Mercury",style: GoogleFonts.montserrat(color: Colors.white,fontWeight: FontWeight.w600,fontSize: 25),),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Icon(Icons.visibility,color: Colors.white.withOpacity(0.3),),
                                          SizedBox(width: 5,),
                                          Text("6746 views",style: GoogleFonts.montserrat(color: Colors.white.withOpacity(0.3)),)
                                        ],
                                      ),
                                      SizedBox(height: 15,),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                    width: 100,
                                    height: 100,
                                    child: Image.network(
                                      "https://simanila.unila.ac.id/wp-content/uploads/revslider/solar-system-showcase-slider1/mercury.png",
                                      fit: BoxFit.cover,
                                    )),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 15,),
                ],
              ),
            ),
          ),
        ),
      ),
      Center(
        child: Text("Search"),
      )
    ];

    return Scaffold(
      backgroundColor: Colors.black,
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          unselectedFontSize: 0,
          selectedFontSize: 0,
          selectedItemColor: Colors.blue,
          unselectedItemColor: Colors.grey.shade400.withOpacity(0.5),
          backgroundColor: Colors.black,
          currentIndex: _currentIndex,
          onTap: (int index) {
            setState(() {
              _currentIndex = index;
            });
          },
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home_filled), label: ""),
            BottomNavigationBarItem(icon: Icon(Icons.search_rounded), label: "")
          ],
        ),
        body: pages.elementAt(_currentIndex));
  }
}
