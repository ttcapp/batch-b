import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DemoPage extends StatefulWidget {
  const DemoPage({Key? key}) : super(key: key);

  @override
  _DemoPageState createState() => _DemoPageState();
}

class _DemoPageState extends State<DemoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.account_balance),
            SizedBox(width: 5,),
            Text("Demo Page"),
          ],
        ),
      ),
      body: Center(
        child: Column(
          children: [
            Text("Hello Students",textAlign:TextAlign.center,style: TextStyle(
              color: Colors.purple, fontSize: 30,fontWeight: FontWeight.bold
            ),)
          ],
        ),
      ),
    );
  }
}
