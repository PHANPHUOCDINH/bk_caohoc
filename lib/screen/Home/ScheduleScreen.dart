import 'package:bk_caohoc/constant.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ScheduleScreen extends StatefulWidget {
  @override
  _ScheduleScreen createState() => _ScheduleScreen();
}

class _ScheduleScreen extends State<ScheduleScreen> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(title: Text("Thời khóa biểu"), actions: <Widget>[
        IconButton(
            icon: Image.asset("assets/images/notification.png"),
            onPressed: () {})
      ]),
      body: Stack(
        children: [
          Container(
              decoration: BoxDecoration(color: kPrimaryLightColor

              ),
              padding: EdgeInsets.symmetric(horizontal: 30, vertical: 50),
              child: Column(
                children: [
                  Container(
                    alignment: Alignment.centerRight,
                    child: RichText(
                      text: TextSpan(
                          text: "Mon",
                          style: TextStyle(
                              color: kPrimaryColor,
                              fontSize: 14,
                              fontWeight: FontWeight.bold),
                          children: [
                            TextSpan(
                                text: " 13 Sep",
                                style: TextStyle(
                                    color: kPrimaryColor,
                                    fontSize: 14,
                                    fontWeight: FontWeight.normal))
                          ]),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            border:
                                Border.all(width: 1, color: kPrimaryLightColor),
                            boxShadow: [
                              BoxShadow(
                                  color: kPrimaryColor.withOpacity(0.2),
                                  blurRadius: 12,
                                  spreadRadius: 8)
                            ],
                            image: DecorationImage(
                                image: new ExactAssetImage(
                                    "assets/images/bk.png"))),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Hi Student",
                            style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                                color: kPrimaryColor),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "Your schedule today",
                            style:
                                TextStyle(fontSize: 15, color: kPrimaryColor),
                          ),
                        ],
                      )
                    ],
                  )
                ],
              )),
          Positioned(
            top: 185,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 25),
              height: MediaQuery.of(context).size.height - 230,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(30)),


                child: ListView(
                  children: [
                    buildTitleRow("Today's classes",3),
                    SizedBox(
                      height: 20,
                    ),
                    buildClassItem(),
                    buildClassItem(),
                    buildClassItem(),
                    SizedBox(height: 25,),
                    buildTitleRow("My tasks", 4),
                    SizedBox(height: 20,),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(children: [
                        buildTaskItem(3,"Bài tập 1",Colors.red),
                        buildTaskItem(2,"Bài tập 2",Colors.yellow),
                        buildTaskItem(5,"Bài tập 3",Colors.green),
                      ],),
                    ),
                    SizedBox(height: 90,),
                  ],
                ),

            ),
          )
        ],
      ),
    );
  }

  Container buildTaskItem(int numDays,String courseTitle,Color color) {
    return Container(
      margin: EdgeInsets.only(right: 15),
                    padding: EdgeInsets.all(12),
                    height: 140,
                    width: 140,
                    decoration: BoxDecoration(
                      color: color.withOpacity(0.2),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Deadline",style: TextStyle(fontSize: 10,color: Colors.grey),),
                        SizedBox(height: 5,),
                        Row(children: [
                          Container(
                            height: 6,
                            width: 6,
                            decoration: BoxDecoration(
                              color: Colors.red,
                              borderRadius: BorderRadius.circular(3)
                            ),
                          ),
                          SizedBox(width: 5,),
                          Text("$numDays days left",style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),)
                        ],),
                        SizedBox(height: 20,),
                        Container(
                            width: 100,
                            child: Text(courseTitle,style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold)))
                      ],
                    ),
                  );
  }

  Row buildTitleRow(String title,int number) {
    return Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    RichText(
                      text: TextSpan(
                          text: title,
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                          children: [
                            TextSpan(
                              text: "($number)",
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.normal,
                                  color: kPrimaryColor),
                            )
                          ]),
                    ),
                    Text(" See all",
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.normal,
                            color: Colors.grey))
                  ],
                );
  }

  Container buildClassItem() {
    return Container(
      margin: EdgeInsets.only(bottom: 15),
                  padding: EdgeInsets.all(10),
                  height: 100,
                  decoration: BoxDecoration(
                      color: kPrimaryLightColor,
                      borderRadius: BorderRadius.circular(30)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "07:00",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "AM",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.grey),
                          ),
                        ],
                      ),
                      Container(
                        height: 100,
                        width: 1,
                        color: Colors.grey.withOpacity(0.5),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                              width: MediaQuery.of(context).size.width - 160,
                              child: Text("Môn A",overflow: TextOverflow.ellipsis,)),
                          Row(
                            children: [
                              Icon(
                                Icons.location_on,
                                color: Colors.grey,
                                size: 20,
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Container(
                                width:
                                    MediaQuery.of(context).size.width - 160,
                                child: Text(
                                  "Phòng A1, Tòa A Khoa Điện Tử",
                                  style: TextStyle(
                                      color: Colors.grey, fontSize: 13),
                                  overflow: TextOverflow.ellipsis,
                                ),
                              )
                            ],
                          ),
                          Row(
                            children: [
                              CircleAvatar(
                                backgroundImage:
                                    AssetImage("assets/images/bk.png"),
                                radius: 10,
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                "ThS Nguyễn Văn A",
                                style: TextStyle(
                                    color: Colors.grey, fontSize: 13),
                              )
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                );
  }
}
