import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mobileapp_moneyac/pages/login_page.dart';
import 'package:mobileapp_moneyac/services/sign_in.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({this.email, this.name, this.image});
  String email;
  String name;
  String image;

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 12,
      child: SafeArea(
        child: Scaffold(
          body: AnnotatedRegion<SystemUiOverlayStyle>(
            value: SystemUiOverlayStyle.dark.copyWith(
              statusBarColor: const Color(0xfff8faf7),
            ),
            child: Container(
              margin: EdgeInsets.only(top: 40, left: 15, right: 15, bottom: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Hello!",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold)),
                        Text("name user")
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 10),
                    child: Stack(children: <Widget>[
                      Container(
                        width: double.infinity,
                        height: 150.0,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage("assets/content.png")),
                          borderRadius: BorderRadius.all(Radius.circular(16.0)),
                          color: Colors.redAccent,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 30, left: 160.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Total Amount",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                              ),
                            ),
                            Text(
                              "Rp. 1.500.000",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "\n\nNever Spend Your Money Before You Have Earned It.",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 11),
                            )
                          ],
                        ),
                      ),
                    ]),
                  ),
                  TabBar(
                    isScrollable: true,
                    indicatorColor: const Color(0xff26c165),
                    unselectedLabelColor: Colors.black,
                    labelColor: const Color(0xff26c165),
                    tabs: [
                      new Container(
                        child: new Tab(text: 'January'),
                      ),
                      new Container(
                        child: new Tab(text: 'February'),
                      ),
                      new Container(
                        child: new Tab(text: 'March'),
                      ),
                      new Container(
                        child: new Tab(text: 'April'),
                      ),
                      new Container(
                        child: new Tab(text: 'Mei'),
                      ),
                      new Container(
                        child: new Tab(text: 'June'),
                      ),
                      new Container(
                        child: new Tab(text: 'July'),
                      ),
                      new Container(
                        child: new Tab(text: 'August'),
                      ),
                      new Container(
                        child: new Tab(text: 'September'),
                      ),
                      new Container(
                        child: new Tab(text: 'October'),
                      ),
                      new Container(
                        child: new Tab(text: 'November'),
                      ),
                      new Container(
                        child: new Tab(text: 'December'),
                      ),
                    ],
                  ),
                  Expanded(
                    child: TabBarView(
                      children: [
                        // first tab bar view widget
                        Expanded(child: Text("1")),
                        Expanded(child: Text("2")),
                        Expanded(child: Text("3")),
                        Expanded(child: Text("4")),
                        Expanded(child: Text("5")),
                        Expanded(child: Text("6")),
                        Expanded(child: Text("7")),
                        Expanded(child: Text("8")),
                        Expanded(child: Text("9")),
                        Expanded(child: Text("10")),
                        Expanded(child: Text("11")),
                        Expanded(child: Text("12")),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
