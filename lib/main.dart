import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>  with SingleTickerProviderStateMixin{
 late AnimationController _animationController;

 @override
  void initState() {
   _animationController = AnimationController(
     vsync: this,
     duration: const Duration(milliseconds: 500),
   );
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: const Text("Stackoverflow playground",style: TextStyle(fontSize: 15,fontWeight: FontWeight.normal,color: Colors.white),),
        centerTitle: true,
      ),
      body: Column(
        children: <Widget>[
          CupertinoFullscreenDialogTransition(
          primaryRouteAnimation: _animationController,
          secondaryRouteAnimation: _animationController,
          linearTransition: true,
            child: Center(
              child: Container(
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topRight,
                    end: Alignment.bottomLeft,
                    colors: [
                      Colors.green,
                      Colors.yellow,
                      Colors.red,
                    ],
                  )
                ),
                width: 280,
                height: 280,
              ),
            ),
          ),
          Column(
            children: <Widget>[
              InkWell(
                onTap: () => _animationController.forward(),
                child: Container(
                  height: 35,
                  width: 120,
                  alignment: Alignment.center,
                    decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(50)
                  ),
                  child: const Text(
                    "Forward",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 10,),
              InkWell(
                onTap: () => _animationController.repeat(),
                child: Container(
                  height: 35,
                  width: 120,
                  alignment: Alignment.center,
                    decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(50)
                  ),
                  child: const Text(
                    "Repeat",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 10,),
              InkWell(
                onTap: () => _animationController.fling(),
                child: Container(
                  height: 35,
                  width: 120,
                  alignment: Alignment.center,
                    decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(50)
                  ),
                  child: const Text(
                    "Fling",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 10,),
              InkWell(
                onTap: () => _animationController.reverse(),
                child: Container(
                  height: 35,
                  width: 120,
                  alignment: Alignment.center,
                    decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(50)
                  ),
                  child: const Text(
                    "Reverse",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 10,),
              InkWell(
                onTap: () => _animationController.stop(),
                child: Container(
                  height: 35,
                  width: 120,
                  alignment: Alignment.center,
                    decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(50)
                  ),
                  child: const Text(
                    "Stop",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      )
    );
  }
}
