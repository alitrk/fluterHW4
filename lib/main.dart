import 'package:flutter/material.dart';
import 'package:odev4/pageA.dart';
import 'package:odev4/pageX.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  State<HomePage> createState() => _HomePageState();
}
class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home Page", style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold),),
        centerTitle: true,
        automaticallyImplyLeading: false,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(width: 200,height: 50,
              child: TextButton(
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(
                      builder: (context) => pageA()
                  ));
                },
                child: const Text("Go to page A", style: TextStyle(color: Colors.white, fontSize: 18),),
                style: TextButton.styleFrom(backgroundColor: Colors.orange),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 24),
              child: SizedBox(width: 200,height: 50,
                child: TextButton(
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(
                        builder: (context) => pageX()
                    ));
                  },
                  child: const Text("Go to page X", style: TextStyle(color: Colors.white, fontSize: 18),),
                  style: TextButton.styleFrom(backgroundColor: Colors.grey),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
