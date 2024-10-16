import 'package:flutter/material.dart';

class loginPage extends StatefulWidget {
  const loginPage({super.key});

  @override
  State<loginPage> createState() => _loginPageState();
}

class _loginPageState extends State<loginPage> {
  @override
  Widget build(BuildContext context) {
    TextEditingController username=TextEditingController();
    TextEditingController pass= TextEditingController();
    return Scaffold(
      backgroundColor: Colors.black,
      appBar:AppBar(),
      body:Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          Container (
            color:Colors.green,
            height: 100,
            width: 300,
            child:Image.network(
              fit:BoxFit.cover,
                'https://images.ctfassets.net/y2ske730sjqp/1aONibCke6niZhgPxuiilC/2c401b05a07288746ddf3bd3943fbc76/BrandAssets_Logos_01-Wordmark.jpg?w=940'
            ),
      ),
            Center(
              child:SizedBox(
                width:300,
                child: TextFormField(
                  controller: username,
                ),
              ),
            ),
            Center(
              child: SizedBox(
                width:300,
                child: TextFormField(
                  controller: pass,
                ),
              ),
            ),

      ]
      )
    );
  }
}
