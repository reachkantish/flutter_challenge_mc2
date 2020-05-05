import 'package:flutter/material.dart';
import 'package:flutterchallengemc2/data/legosetsdata.dart';
import 'package:flutterchallengemc2/data/legotheme.dart';
import 'package:flutterchallengemc2/views/legothemedetails.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

class LegoSets extends StatefulWidget {
  final LegoTheme legoTheme;
  const LegoSets({Key key, this.legoTheme}) : super(key: key);
  @override
  _LegoSetsState createState() => _LegoSetsState();
}

class _LegoSetsState extends State<LegoSets> {
  List<LegoSet> legoSetList = [];
  List<LegoSet> filteredSetList = [];

  @override
  void initState() {
    LegoSetBuilder lsb = new LegoSetBuilder();
    List<LegoSet> tmpList = new List<LegoSet>();
    for (int i = 0; i < lsb.getLegoSets().length; i++) {
      tmpList.add(lsb.getLegoSets()[i]);
    }

    setState(() {
      legoSetList = tmpList;
      for (int j = 0; j < legoSetList.length; j++) {
        if (legoSetList[j].legoSetListKey == widget.legoTheme.legoSetListKey) {
          filteredSetList.add(legoSetList[j]);
        }
      }
    });
    super.initState();
  }

  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: <Widget>[
            Container(
              color: Colors.yellow,
            ),
            Column(
              children: <Widget>[
                Expanded(
                  flex: 3,
                  child: Container(
                    child: Align(
                      alignment: Alignment.topRight,
                      child: Image.asset(
                        widget.legoTheme.themeImgPath,
                        height: 180,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 7,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(60.0),
                        topLeft: Radius.circular(60.0),
                      ),
                    ),
                    child: Column(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(
                            top: 40.0,
                            left: 40.0,
                            right: 40.0,
                            bottom: 10.0,
                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text(
                                widget.legoTheme.title,
                                style: TextStyle(
                                  fontSize: 26,
                                  fontWeight: FontWeight.w500,
                                  color: Color(0xffff0000),
                                ),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  color: Colors.yellow,
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                                height: 40,
                                width: 100,
                                child: FlatButton(
                                  onPressed: () => Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (_) => ThemePage(
                                        legoThemeDesc:
                                            widget.legoTheme.longdesc,
                                      ),
                                    ),
                                  ),
                                  child: Center(
                                      child: Text(
                                    "Details",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 18.0,
                                    ),
                                  )),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                            vertical: 10.0,
                            horizontal: 40.0,
                          ),
                          child: Text(
                            widget.legoTheme.description,
                            style: TextStyle(
                              fontSize: 20.0,
                              color: Colors.black38,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 10.0, left: 40.0, right: 40.0, bottom: 20.0),
                          child: Align(
                            alignment: Alignment.topLeft,
                            child: Text(
                              "Available Sets:",
                              //legoSetList[0].legoSetListKey,

                              style: TextStyle(
                                fontSize: 20.0,
                                //color: Colors.black38,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          height: 320,
                          child: ListView.builder(
                            shrinkWrap: true,
                            scrollDirection: Axis.vertical,
                            itemCount: filteredSetList.length,
                            itemBuilder: (BuildContext ctxt, int index) {
                              LegoSet legoSet = filteredSetList[index];
                              return InkWell(
                                onTap: () {
                                  Alert(
                                    context: context,
                                    title: legoSet.setName,
                                    desc: legoSet.price,
                                    image: Image.asset(legoSet.setImgPath),
                                    buttons: [
                                      DialogButton(
                                        child: Text('Close'),
                                        onPressed: () {
                                          Navigator.pop(context);
                                        },
                                      ),
                                    ],
                                  ).show();
                                },
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 20.0),
                                  child: Column(
                                    children: <Widget>[
                                      ListTile(
                                        title: Padding(
                                          padding:
                                              const EdgeInsets.only(left: 12.0),
                                          child: Text(
                                            legoSet.setName,
                                            style: TextStyle(
                                              color: Colors.black38,
                                              fontSize: 20,
                                            ),
                                          ),
                                        ),
                                        leading: Image.asset(
                                          legoSet.setImgPath,
                                          height: 40,
                                          width: 50,
                                        ),
                                        trailing: Text(
                                          legoSet.price,
                                          style: TextStyle(
                                            color: Colors.black38,
                                            fontSize: 20,
                                          ),
                                        ),
                                      ),
                                      Divider(),
                                    ],
                                  ),
                                ),
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
