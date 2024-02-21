import 'package:flutter/material.dart';

class TasbehScreen extends StatefulWidget {
  static const String routeName = 'tasbehPage';
  TasbehScreen({super.key});

  @override
  State<TasbehScreen> createState() => _TasbehScreenState();
}

class _TasbehScreenState extends State<TasbehScreen> {
  int Counter = 0;
  int index = 0;
  double Rotate = 0;

  List<String> zikr = [
    "سبحان الله",
    "الحمد لله",
    "لا اله الا الله",
    "لا حول ولا قوه الا بالله",
    "الله اكبر"
  ];

  @override
  Widget build(BuildContext context) {
    CalcCounter(Counter);
    return Center(
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.symmetric(vertical: 30),
            child: Stack(
              alignment: Alignment.topCenter,
              children: [
                Image.asset("assets/images/head_sebha_logo.png"),
                InkWell(
                    highlightColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    splashColor: Colors.transparent,
                    onTap: () {
                      setState(() {
                        Rotate += 20;
                        Counter++;
                      });
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(top: 73),
                      child: Transform.rotate(
                          angle: Rotate,
                          child: Image.asset(
                              "assets/images/body_sebha_logo.png")),
                    )),
              ],
            ),
          ),
          Text(
            "عدد التسبيحات",
            style: TextStyle(
              fontSize: 25,
            ),
          ),
          Container(
              margin: EdgeInsets.symmetric(vertical: 20),
              decoration: BoxDecoration(
                  color: Color(0xFFB7935F),
                  borderRadius: BorderRadius.circular(25)),
              alignment: Alignment.center,
              height: 81,
              width: 69,
              child: Text(
                "$Counter",
                style: TextStyle(
                  fontSize: 25,
                ),
              )),
          Row(
            children: [
              Spacer(),
              Container(
                  padding: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                      color: Color(0xFFB7935F),
                      borderRadius: BorderRadius.circular(25)),
                  alignment: Alignment.center,
                  child: Text(
                    "${zikr[index]}",
                    style: TextStyle(fontSize: 25, color: Colors.white),
                  )),
              Spacer()
            ],
          ),
        ],
      ),
    );
  }

  void CalcCounter(int counter) {
    if (counter == 34) {
      Counter = 0;
      if (index >= zikr.length-1) {
        index = 0;
      } else {
        index++;
      }
    }
  }
}
