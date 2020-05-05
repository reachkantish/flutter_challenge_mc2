import 'package:flutter/material.dart';
import 'package:flutterchallengemc2/views/legosets.dart';
import 'package:flutterchallengemc2/data/legotheme.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
            child: Stack(
          children: <Widget>[
            Column(
              children: <Widget>[
                Expanded(
                    flex: 1,
                    child: Image.asset(
                      "assets/images/legoheads.jpg",
                      fit: BoxFit.cover,
                    )),
                Expanded(
                  flex: 2,
                  child: Container(
                    color: Colors.white,
                  ),
                )
              ],
            ),
            Column(
              children: <Widget>[
                Expanded(
                  flex: 1,
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Padding(
                      padding: const EdgeInsets.all(13.0),
                      child: Image.asset(
                        "assets/images/legologo.jpg",
                        height: MediaQuery.of(context).size.height / 9,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 4,
                  child: Container(
                    margin: EdgeInsets.only(
                        left: MediaQuery.of(context).size.width * 0.08),
                    width: MediaQuery.of(context).size.width * 0.92,
                    //height: MediaQuery.of(context).size.height * 0.66,
                    decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black12,
                              blurRadius: 20.0,
                              offset: Offset(2.0, -20.0))
                        ],
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(18.0),
                          topRight: Radius.circular(8.0),
                          bottomLeft: Radius.circular(18.0),
                        ),
                        color: Colors.white),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 26.0, top: 31.0, bottom: 12.0),
                          child: Text(
                            "Lego Themes",
                            style: TextStyle(
                              fontSize: 26,
                              fontWeight: FontWeight.bold,
                              color: Color(0xffff0000),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 26.0,
                            vertical: 8.0,
                          ),
                          child: Text(
                            "Explore various Lego themes with Lego sets for all ages and experience levels.",
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.black38,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          height: 270,
                          child: ListView.builder(
                              shrinkWrap: true,
                              scrollDirection: Axis.horizontal,
                              itemCount: legoThemes.length,
                              itemBuilder: (BuildContext ctxt, int index) {
                                LegoTheme legoTheme = legoThemes[index];
                                return InkWell(
                                  onTap: () => Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (_) => LegoSets(
                                        legoTheme: legoTheme,
                                      ),
                                    ),
                                  ),
                                  child: Stack(
                                    children: <Widget>[
                                      Container(
                                        margin: EdgeInsets.only(
                                            left: 60.0, top: 20, right: 60.0),
                                        height: 270,
                                        width: 170,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(15.0),
                                          gradient: LinearGradient(
                                            colors: [
                                              Colors.yellow,
                                              Colors.yellowAccent
                                            ],
                                            begin: Alignment.topCenter,
                                            end: Alignment.bottomCenter,
                                          ),
                                        ),
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(left: 100.0),
                                        child: Image.asset(
                                          legoTheme.themeImgPath,
                                          height: 100,
                                        ),
                                      ),
                                      Container(
                                        padding: EdgeInsets.only(left: 80.0),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: <Widget>[
                                            SizedBox(
                                              height: 130,
                                            ),
                                            Text(
                                              legoTheme.title,
                                              style: TextStyle(
                                                  fontSize: 20,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            SizedBox(
                                              height: 20,
                                            ),
                                            Container(
                                              width: 130,
                                              child: Text(
                                                legoTheme.description,
                                                style: TextStyle(fontSize: 15),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                );
                              }),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Container(),
                )
              ],
            )
          ],
        )),
      ),
    );
  }
}
