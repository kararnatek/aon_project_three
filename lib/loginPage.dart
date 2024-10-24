
import 'package:first_project/homePage.dart';
import 'package:flutter/material.dart';

class Loginpage extends StatelessWidget {
  const Loginpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: IconButton(onPressed: (){
          Navigator.of(context).pop();
        },
          icon: Icon(
            Icons.arrow_back_ios,
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(height: 100,),
          Container(
            child: Text(
              "Login",
              style: TextStyle(
                fontSize: 50,
                fontWeight: FontWeight.bold,
                color: Colors.red,
              ),
            ),
          ),
          SizedBox(height: 40,),
          Container(
            margin: EdgeInsets.only(left: 20 ,right: 20),
            child: Text(
              "Enter Pelaes Email ",
              style: TextStyle(
                fontSize: 20,
                color: Colors.black,
              ),
            ),
            width: 400,
            height: 55, decoration: BoxDecoration(
            border: Border.all( color: Colors.black, width: 2),
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(10),
              bottomRight: Radius.circular(10),
              topRight: Radius.circular(10),
              bottomLeft: Radius.circular(10),
            ),
          ),
          ),
          SizedBox(height:40),
          Container(
            margin: EdgeInsets.only(left: 20 ,right: 20),
            child: Text(
              "Enter Pelaes password ",
              style: TextStyle(
                fontSize: 20,
                color: Colors.black,
              ),
            ),
            width: 400,
            height: 55,
            decoration: BoxDecoration(
              border: Border.all( color: Colors.black, width: 2),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10),
                bottomRight: Radius.circular(10),
                topRight: Radius.circular(10),
                bottomLeft: Radius.circular(10),
              ),
            ),
          ),
          SizedBox(height:5),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                "Dont have an accunt?",
              ),
              TextButton(onPressed:(){},
                  child:Text("Sign Up") ),
            ],
          ),
          SizedBox(height:20),
          InkWell(
            onTap:(){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Homepage ()),
              );
            },
            child:
            Container(
              child: Row (
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(

                    child: Text("Login",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,),),
                    padding: EdgeInsets.only(left: 170,top:15 ),
                    width: 390,
                    height: 60,
                    decoration: BoxDecoration(
                        color: Colors.red,
                        border: Border.all(color: Colors.black,),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(10),
                          bottomLeft:Radius.circular(10),
                          bottomRight: Radius.circular(10),
                        )
                    ),

                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
