import 'dart:async';
import 'package:webview_flutter/webview_flutter.dart';

import 'package:flutter/material.dart';
import 'package:webflutterios/navegetr.dart';


class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool isLoding=true;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  Future.delayed(Duration(seconds: 5),(){
    setState(() {
      isLoding = false;
    });
  });
  }
  @override
  // ignore: missing_return
  Widget build(BuildContext context) {
   return isLoding?imagePage(context
   ):_webApp(context);
  }

  _webApp(BuildContext context) {
   return Scaffold(
     appBar: AppBar(
       elevation: 0,
       centerTitle: true,
       backgroundColor: Colors.deepOrange,
       title: SizedBox(height: 40,width: 40,
       child: Image.network('https://aljwhar.com/uploads/logo_image/logo_85.png',fit: BoxFit.cover,),
       ),
       
     ),
     body: WebView(
       initialUrl: 'https://aljwhar.com',
       javascriptMode: JavascriptMode.unrestricted,
     ),
   );
  }

  imagePage(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        color: Colors.deepOrange,
        child: Center(
          child: Image.network('https://aljwhar.com/uploads/logo_image/logo_85.png'),
        ),
      ),
    );}
}
