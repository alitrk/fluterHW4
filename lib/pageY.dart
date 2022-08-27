import 'package:flutter/material.dart';
import 'package:odev4/main.dart';
class pageY extends StatelessWidget {
  const pageY({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        Navigator.push(context, MaterialPageRoute(
            builder: (context) => HomePage()
        ));
        return false;
      },
      child: Scaffold(
        backgroundColor: Colors.amber,
        appBar: AppBar(
          title: const Text("Page Y", style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold),),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text("You are now on Page Y",style: TextStyle(fontSize: 24),)
            ],
          ),
        ),
      ),
    );
  }
}