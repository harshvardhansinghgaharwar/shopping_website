import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:shopping_website/utils/colors.dart';

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
      theme: ThemeData(primaryColor: AppColors.backgroundColor),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    Key? key,
  }) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: const [
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 5),
                        child: Text("Customer Service"),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        child: Text("NewsLetter"),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        child: Text("Find a Store"),
                      ),
                      IconButton(
                          onPressed: null, icon: Icon(Icons.more_horiz_sharp))
                    ],
                  ),
                ),
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: const [
                      Icon(Icons.person_rounded),
                      Text("Sign in"),
                      SizedBox(
                        width: 10,
                      ),
                      Icon(Icons.favorite_outline),
                      Text("Favourites"),
                      SizedBox(
                        width: 10,
                      ),
                      Icon(Icons.shopping_bag_outlined),
                      Text("Shopping bag(o)"),
                    ],
                  ),
                )
              ],
            ),
            Center(
              child: Image.asset("assets/images/h.png", fit: BoxFit.contain),
            )
          ],
        ),
      ),
    );
  }
}
