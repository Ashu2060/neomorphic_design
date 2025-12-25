import 'package:flutter/material.dart';
import 'package:percent_indicator/flutter_percent_indicator.dart';
import 'costomContainer.dart';

void main() => runApp(const FlutterUi());

class FlutterUi extends StatelessWidget {
  const FlutterUi({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.grey.shade300,
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Costomcontainer(
                      height: 60,
                      width: 60,
                      child: Icon(Icons.arrow_back),
                    ),
                    Text("P L A Y I S T"),
                    Costomcontainer(
                      height: 60,
                      width: 60,
                      child: Icon(Icons.menu),
                    ),
                  ],
                ),
                const SizedBox(height:35),
                Costomcontainer(height: 400, width:double.infinity,child: Column(
                  children: [
                    Image.asset("images/music.png"),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                        Text("ROMANTIC SONG",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.brown),),
                        SizedBox(height: 5,),
                        Text("EMOTIONAL & SAD ",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.pink),)
                        ]),
                        Icon(Icons.favorite,size: 24, color: Colors.red,)
                      ],
                    ),
                  ],
                )),
                SizedBox(height: 25,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                  Text("00:0"),
                  Icon(Icons.shuffle),
                  Icon(Icons.repeat),
                  Text("4:22"),
                ],),
                SizedBox(height: 10,),
                Costomcontainer(height:35, width:350, child: LinearPercentIndicator(
                  lineHeight:10,
                  percent: 0.8,
                  backgroundColor: Colors.transparent,
                  progressColor: Colors.green,)),
                SizedBox(height: 10,),
                Row(children: [
                  Expanded(child: Costomcontainer(height: 60, width: 30, child: Icon(Icons.skip_previous,size: 34,))),
                  Expanded(
                      flex: 2,
                      child: Costomcontainer(height: 60, width: 30, child: Icon(Icons.play_arrow,size: 34,))),
                  Expanded(child: Costomcontainer(height: 60, width: 30, child: Icon(Icons.skip_next,size: 34,))),
                ],)

              ],
            ),
          ),
        ),
      ),
    );
  }
}
