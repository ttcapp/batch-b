import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

List<String> questionList=[
  "(১) বঙ্গবন্ধু ম্যাট্রিক পাশ করেন কোন স্কুল থেকে, কত সালে?",
  "(২) বঙ্গবন্ধু কলকাতা ইসলামিয়া কলেজের বেকার হোষ্টেলের কত নম্বর কক্ষে থাকতেন?",
  "(৩) বঙ্গবন্ধু কত সালে হোসেন শহীদ সোহরাওয়ার্দীর সহকারী নিযুক্ত হন?"
];
List<String> answerList=[
  "উত্তর: গোপালগঞ্জ মিশনারি স্কুলে, ১৯৪২ সালে।",
  "উত্তর: ২৪ নম্বর কক্ষে।",
  "উত্তর: ১৯৪৬ সালে।"
];
List<bool> visibilityAns=[
  false,
  false,
  false
];
List<IconData> iconList=[
  Icons.arrow_drop_down_circle_outlined,
  Icons.arrow_drop_down_circle_outlined,
  Icons.arrow_drop_down_circle_outlined
];



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
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: questionList.length,
                itemBuilder: (context,index){
                  return Column(
                    children: [
                      Row(
                        children: [
                          Container(
                            width:MediaQuery.of(context).size.width/1.1,
                            child: Text(questionList[index],
                              textAlign:TextAlign.start,
                              maxLines: 3,
                              style: TextStyle(
                                color: Colors.purple, fontSize: 20,fontWeight: FontWeight.bold
                            )),
                          ),
                          InkWell(
                            onTap: (){
                              setState(() {
                                if(visibilityAns[index]==true){
                                  visibilityAns[index]=false;
                                  iconList[index]= Icons.arrow_circle_up_outlined;
                                }else
                                  {
                                    visibilityAns[index]=true;
                                    iconList[index]= Icons.arrow_drop_down_circle_outlined;

                                  }
                              });
                            },
                              child:
                          Icon(iconList[index]))
                        ],
                      ),
                      Visibility(
                        visible: visibilityAns[index] ,
                        child: Container(
                          padding: EdgeInsets.all(8),
                          width:MediaQuery.of(context).size.width/1.1,
                          child: Text(answerList[index],
                              textAlign:TextAlign.start,
                              maxLines: 3,
                              style: TextStyle(
                                  color: Colors.green,
                                  fontSize: 18,fontWeight: FontWeight.bold
                              )),
                        ),
                      ),
                    ],
                  );

                }
            ),
          )
        ],
      ),
    );
  }
}
