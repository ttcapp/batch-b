import 'package:batch_b_demo/demo_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class ListPage extends StatefulWidget {
  const ListPage({Key? key}) : super(key: key);

  @override
  _ListPageState createState() => _ListPageState();
}

List <String> stdList=[
  "Alamin",
  "Dipto",
  "Tamjid",
  "Rafi",
  "Alamin",
  "Dipto",
  "Tamjid",
  "Rafi",
];

class _ListPageState extends State<ListPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("List View Page"),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: stdList.length,
                itemBuilder: (context,index){
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: InkWell(
                      onTap: (){
                        Navigator.push(context,
                        MaterialPageRoute(builder:
                        (context)=>DemoPage()));
                      },
                      child: Container(
                        height: 50,
                        width: 180,
                        color: Colors.greenAccent,
                        child: Text(stdList[index],
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.red,
                        fontWeight: FontWeight.bold,fontSize: 30),),
                      ),
                    ),
                  );
                }
            ),
          )
        ],
      ),
    );
  }
}
