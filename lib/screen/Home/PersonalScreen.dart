

import 'package:bk_caohoc/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';


class PersonalScreen extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(title: Text("Thông tin cá nhân"),actions: <Widget>[
        IconButton(icon: Image.asset("assets/images/notification.png"), onPressed: (){

        })
      ]),
      // body: Center(
      //   child: Text("ABC"),
      //
      // ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 10,),
            ProfileAvatar(),
            SizedBox(
              height: 20,
            ),
            ProfileMenu(
              icon: "assets/images/user_icon.svg",
              text: "Thông tin học viên",
              press: (){

              },
            ),
            ProfileMenu(
              icon: "assets/images/user_icon.svg",
              text: "Tin nhắn",
              press: (){

              },
            ),ProfileMenu(
              icon: "assets/images/user_icon.svg",
              text: "Tra cứu học phí",
              press: (){

              },
            ),
            ProfileMenu(
              icon: "assets/images/user_icon.svg",
              text: "Deadline",
              press: (){

              },
            ),
            ProfileMenu(
              icon: "assets/images/user_icon.svg",
              text: "Settings",
              press: (){

              },
            ),
            ProfileMenu(
              //icon: "assets/images/user_icon.svg",
              text: "Log out",
              press: (){

              },
            )
          ],
        ),
      ),
    );
  }

  SizedBox ProfileAvatar() {
    return SizedBox(height: 115,width :115,child: Stack(
          fit: StackFit.expand,
          overflow: Overflow.visible,
          children: [
            CircleAvatar(backgroundImage: AssetImage("assets/images/bk.png"),),
            // Positioned(
            //   right: -12,
            //   bottom: 0,
            //   child: SizedBox(
            //     height: 46,
            //     width:46,
            //     child: FlatButton(
            //       padding: EdgeInsets.zero,
            //     shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50))
            //     ,color: kPrimaryLightColor,
            //     onPressed: (){
            //
            //     },
            //     child: SvgPicture.asset("assets/images/camera_icon.svg")
            //       )
            //   ),
            // )
          ],
        ),
        );
  }
  
}

class ProfileMenu extends StatelessWidget{
  String text,icon;
  VoidCallback press;
  ProfileMenu({Key key,this.text,this.icon,this.press});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
      child: FlatButton(
          padding: EdgeInsets.all(20),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          color: icon!=null?kPrimaryLightColor:Color(0xFFE64A19),
          onPressed: press,
          child: Row(
            children: [
              if(icon!=null) SvgPicture.asset(icon,color:kPrimaryColor,),
              SizedBox(width: 20,),
              Expanded(child: Text(text,style: TextStyle(fontSize: 18),)),
              Icon(Icons.arrow_forward_ios,color: icon!=null?kPrimaryColor:Colors.black,)
            ],

          )),
    );
  }
  
}