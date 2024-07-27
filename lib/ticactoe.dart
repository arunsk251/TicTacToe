import 'package:flutter/material.dart';
import 'package:myapp/mainwiget.dart';
import 'package:myapp/win.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

String text = "";

int num = 0;
List<String> list = ["", "", "", "", "", "", "", "", ""];

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    check() {
      if ("${list[0]}${list[1]}${list[2]}" == "xxx" ||
          "${list[0]}${list[3]}${list[6]}" == "xxx" ||
          "${list[6]}${list[7]}${list[8]}" == "xxx" ||
          "${list[2]}${list[5]}${list[8]}" == "xxx" ||
          "${list[0]}${list[4]}${list[8]}" == "xxx" ||
          "${list[2]}${list[4]}${list[6]}" == "xxx" ||
          "${list[1]}${list[4]}${list[7]}" == "xxx" ||
          "${list[3]}${list[4]}${list[5]}" == "xxx") {
        print("won");

        showDialog(
            context: context,
            builder: (context) {
              return AlertDialog(
                content: Container(
                  height: 150,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top:10),
                        child: Text("X WON",style: TextStyle(fontSize: 50),),
                      ),

                      Padding(
                        padding: const EdgeInsets.only(top: 20),
                        child: ElevatedButton(
                            child: Text("OKAY"),
                            onPressed: () {
                              Navigator.pop(context);
                              setState(() {
                                list = ["", "", "", "", "", "", "", "", ""];
                                num = 0;
                              });
                            }),
                      )
                    ],
                  ),
                ),
              );
            });
      } else if ("${list[0]}${list[1]}${list[2]}" == "ooo" ||
          "${list[0]}${list[3]}${list[6]}" == "ooo" ||
          "${list[6]}${list[7]}${list[8]}" == "ooo" ||
          "${list[2]}${list[5]}${list[8]}" == "ooo" ||
          "${list[0]}${list[4]}${list[8]}" == "ooo" ||
          "${list[2]}${list[4]}${list[6]}" == "ooo" ||
          "${list[1]}${list[4]}${list[7]}" == "ooo" ||
          "${list[3]}${list[4]}${list[5]}" == "ooo") {
        print("won");

        showDialog(
            context: context,
            builder: (context) {
              return AlertDialog(
                
                content: Container(
                  height: 150,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top:10),
                        child: Text("O WON",style: TextStyle(fontSize: 50),),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top:20),
                        child: ElevatedButton(
                            child: Text("OKAY"),
                            onPressed: () {
                              Navigator.pop(context);
                              setState(() {
                                list = ["", "", "", "", "", "", "", "", ""];
                                num = 0;
                              });
                            }),
                      )
                    ],
                  ),
                ),
              );
            });
      } 
      else if("${list[0]}"!=""&&"${list[1]}"!=""&&"${list[2]}"!=""&&"${list[3]}"!=""&&"${list[4]}"!=""&&"${list[5]}"!=""&&"${list[6]}"!=""&&"${list[7]}"!=""&&"${list[8]}"!=""){
        showDialog(
            context: context,
            builder: (context) {
              return AlertDialog(
                content: Container(
                  height: 150,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top:10.0),
                        child: Text("DRAW",style: TextStyle(fontSize: 50),),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top:20),
                        child: ElevatedButton(
                            child: Text("OKAY"),
                            onPressed: () {
                              Navigator.pop(context);
                              setState(() {
                                list = ["", "", "", "", "", "", "", "", ""];
                                num = 0;
                              });
                            }),
                      )
                    ],
                  ),
                ),
              );
            });
      }
    }

    return Scaffold(
      backgroundColor: Colors.white,
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              GestureDetector(
                onTap: () {
                  if (list[0] == "") {
                    setState(() {
                      if (num % 2 == 0) {
                        list[0] = "x";
                      } else {
                        list[0] = "o";
                      }
                      num += 1;
                    });
                  }
                  check();
                },
                child: gamewidget(
                  text: list[0],
                ),
              ),
              GestureDetector(
                  onTap: () {
                    if (list[1] == "") {
                      setState(() {
                        if (num % 2 == 0) {
                          list[1] = "x";
                        } else {
                          list[1] = "o";
                        }
                        num += 1;
                      });
                    }
                    check();
                  },
                  child: gamewidget(
                    text: list[1],
                  )),
              GestureDetector(
                  onTap: () {
                    if (list[2] == "") {
                      setState(() {
                        if (num % 2 == 0) {
                          list[2] = "x";
                        } else {
                          list[2] = "o";
                        }
                        num += 1;
                      });
                    }
                    check();
                  },
                  child: gamewidget(
                    text: list[2],
                  ))
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              GestureDetector(
                  onTap: () {
                    if (list[3] == "") {
                      setState(() {
                        if (num % 2 == 0) {
                          list[3] = "x";
                        } else {
                          list[3] = "o";
                        }
                        num += 1;
                      });
                    }
                    check();
                  },
                  child: gamewidget(
                    text: list[3],
                  )),
              GestureDetector(
                  onTap: () {
                    if (list[4] == "") {
                      setState(() {
                        if (num % 2 == 0) {
                          list[4] = "x";
                        } else {
                          list[4] = "o";
                        }
                        num += 1;
                      });
                    }
                    check();
                  },
                  child: gamewidget(
                    text: list[4],
                  )),
              GestureDetector(
                  onTap: () {
                    if (list[5] == "") {
                      setState(() {
                        if (num % 2 == 0) {
                          list[5] = "x";
                        } else {
                          list[5] = "o";
                        }
                        num += 1;
                        check();
                      });
                    }
                    check();
                  },
                  child: gamewidget(
                    text: list[5],
                  ))
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              GestureDetector(
                  onTap: () {
                    if (list[6] == "") {
                      setState(() {
                        if (num % 2 == 0) {
                          list[6] = "x";
                        } else {
                          list[6] = "o";
                        }
                        num += 1;
                      });
                    }
                    check();
                  },
                  child: gamewidget(
                    text: list[6],
                  )),
              GestureDetector(
                  onTap: () {
                    if (list[7] == "") {
                      setState(() {
                        if (num % 2 == 0) {
                          list[7] = "x";
                        } else {
                          list[7] = "o";
                        }
                        num += 1;
                      });
                    }
                    check();
                  },
                  child: gamewidget(
                    text: list[7],
                  )),
              GestureDetector(
                  onTap: () {
                    if (list[8] == "") {
                      setState(() {
                        if (num % 2 == 0) {
                          list[8] = "x";
                        } else {
                          list[8] = "o";
                        }
                        num += 1;
                      });
                    }
                    check();
                  },
                  child: gamewidget(
                    text: list[8],
                  ))
            ],
          ),
        ],
      ),
    );
  }
}
