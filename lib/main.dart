import 'package:flutter/material.dart';
import 'package:navbar_app/grediant_icon.dart';

void main() {
  runApp(const MyApp());
}

// main class

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: NavBar(),
    );
  }
}

// botttom nav bar calling class

class NavBar extends StatefulWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("NavBar"),
        ),
        bottomNavigationBar: NaviBar());
  }
}

//  bottom nav bar widgets

class NaviBar extends StatefulWidget {
  const NaviBar({Key? key}) : super(key: key);

  @override
  State<NaviBar> createState() => _NaviBarState();
}

class _NaviBarState extends State<NaviBar> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    Widget circularicon() {
      return Padding(
        padding: const EdgeInsets.only(left: 170, top: 10),
        child: Container(
          width: width * 0.18,
          height: height * 0.11,
          decoration: BoxDecoration(
            color: Colors.white.withOpacity(0),
            boxShadow: [
              BoxShadow(
                  blurRadius: 3, spreadRadius: 2, color: Color(0XFF00ACEE))
            ],
            borderRadius: BorderRadius.circular(50),
          ),
          child: InkWell(
            onTap: () {},
            child: Padding(
              padding: const EdgeInsets.all(7),
              child: Container(
                  width: width * 0.5,
                  height: height * 0.5,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                          blurRadius: 10,
                          spreadRadius: 2,
                          color: Colors.grey.withOpacity(0.6))
                    ],
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: GradientIcon(
                    Icons.home,
                    35,
                    LinearGradient(
                      colors: [Color(0XFF00ACEE), Color(0XFF1DBF73)],
                    ),
                  )),
            ),
          ),
        ),
      );
    }

    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 34),
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.08,
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                    blurRadius: 5, spreadRadius: 2, color: Color(0XFF00ACEE))
              ],
              gradient: LinearGradient(
                colors: [Color(0XFF00ACEE), Color(0XFF1DBF73)],
              ),
            ),
          ),
        ),
        // Container(

        //   child: Padding(
        //     padding: EdgeInsets.only(left: 190, top: 27),
        //     child: Icon(
        //       Icons.home,
        //       size: 35,
        //     ),
        //   ),
        // ),

        // Padding(
        //   padding: EdgeInsets.only(left: 183, top: 60),
        //   child: Text(
        //     "Home",
        //     style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
        //   ),
        // )
        circularicon(),
      ],
    );
  }
}
