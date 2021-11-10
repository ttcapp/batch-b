import 'package:batch_b_demo/demo_page.dart';
import 'package:batch_b_demo/list_page.dart';
import 'package:batch_b_demo/log_in.dart';
import 'package:flutter/material.dart';
import 'package:slide_drawer/slide_drawer.dart';
void main() {
  runApp( MyApp());
}
double conHeight=50;
double conWidth=50;

class MyApp extends StatelessWidget {
   MyApp({Key? key}) : super(key: key);

final navigatorKey= GlobalKey<NavigatorState>();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: navigatorKey,
      home: SlideDrawer(
        offsetFromRight: 120,
        duration: Duration(milliseconds: 4000),
        headDrawer: Container(
          height:200,
          child: Image.network("https://cdn.pixabay.com/photo/2015/04/19/08/32/marguerite-729510__480.jpg"
          ,fit: BoxFit.fitWidth,),
        ),
        backgroundColor: Colors.blueGrey,
        items: [
          MenuItem('Home',
              icon: Icons.account_balance,
              onTap: (){}),
          MenuItem('Demo Page',
              icon: Icons.ac_unit,
              onTap: (){
            // navigatorKey.currentState!.push(
            //   MaterialPageRoute(builder: (context)=>DemoPage())
            // );
              }),
          MenuItem('Favourite',
              icon: Icons.visibility,
              onTap: (){}),
          MenuItem('Profile',
              icon: Icons.account_circle_rounded,
              onTap: (){}),
          MenuItem('Setting',
              icon: Icons.account_balance,
              onTap: (){}),
        ],
        child: MyHomePage(),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    double height= MediaQuery.of(context).size.height;
    double width= MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.menu),
          // call toggle from SlideDrawer to alternate between open and close
          // when pressed menu button
          onPressed: () => SlideDrawer.of(context)!.toggle(),
        ),
        centerTitle: true,
        title: Text("First App"),
      ),
      body: Column(
        children: [
          ElevatedButton(
              onPressed: (){
                Navigator.push(context,
                    MaterialPageRoute(builder:
                        (context)=>LogIn()));
              },
              child: Text("Go To Demo page")),
          InkWell(
            onTap: (){
              setState(() {
                conHeight=height;
                conWidth=width;
              });
            },
            onDoubleTap: (){
              setState(() {
                conHeight=50;
                conWidth=50;
              });
            },
            child: AnimatedContainer(
              height: conHeight,
              width: conWidth,
              color: Colors.purple,
              duration: Duration(milliseconds: 4000),
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Container(
                  height: width/5,
                  width: width/5,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.deepOrange,width: 3),
                    borderRadius: BorderRadius.circular(180),
                    image: DecorationImage(
                        image: NetworkImage("https://cdn.iconscout.com/icon/free/png-256/face-1659512-1410034.png")
                    )
                  ),
                ),

                Expanded(
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Spacer(),
                          Column(
                            children: [
                              Text("3,405",style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20
                              ),
                              ),
                              Text("Posts")
                            ],
                          ),
                          Spacer(),
                          Column(
                            children: [
                              Text("3,405",style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20
                              ),
                              ),
                              Text("Posts")
                            ],
                          ),
                          Spacer(),
                          Column(
                            children: [
                              Text("3,405",style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20
                              ),
                              ),
                              Text("Posts")
                            ],
                          ),
                          Spacer(),
                        ],
                      )
                    ],
                  ),
                ),

              ],
            ),
          )
        ],
      ),
    );
  }
}


