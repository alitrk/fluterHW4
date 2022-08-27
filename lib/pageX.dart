import 'package:flutter/material.dart';
import 'package:odev4/pageY.dart';
class pageX extends StatelessWidget {
  const pageX({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title: const Text("Page X", style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold),),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(width: 200,height: 50,
              child: TextButton(
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(
                      builder: (context) => pageY()
                  ));
                },
                child: const Text("Go to page Y", style: TextStyle(color: Colors.white, fontSize: 18),),
                style: TextButton.styleFrom(backgroundColor: Colors.amber),
              ),
            ),
          ],
        ),
      ),
    );
  }
}