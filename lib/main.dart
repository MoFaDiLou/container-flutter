import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  //ce widget est la racine de votre application
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.deepPurple),
      home: const MyHomepage(),
    );
  }
}

class MyHomepage extends StatelessWidget {
  const MyHomepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          color: Colors.white,
          image: DecorationImage(
            image: NetworkImage(
                "https://images.unsplash.com/photo-1565299624946-b28f40a0ae38?ixlib=rb-4.0.3&dl=chad-montano-MqT0asuoIcU-unsplash.jpg&q=80&fm=jpg&crop=entropy&cs=tinysrgb"),
            fit: BoxFit.cover,
          ),
        ),
        alignment: Alignment.topCenter,
        child: Container(
            height:
                double.infinity, // MediaQuery.of(context).size.height * 3 / 4,
            width: double.infinity,
            padding: const EdgeInsets.only(top: 200, left: 100),
            decoration: const BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [Colors.black12, Colors.black])),
            alignment: Alignment.center,
            child: const Text("Pizzeria",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 70,
                    fontWeight: FontWeight.w400))),
      ),
    );
  }
}
