import 'package:bookplug_ebook_app/screens/home_screen.dart';
import 'package:bookplug_ebook_app/widgets/rounded_button.dart';
import 'package:flutter/material.dart';

import 'consttants.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Book App',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.black,
        textTheme: Theme.of(context).textTheme.apply(
          displayColor: cLightColor,
        ),
      ),
      home: WelcomeScreen(),
    );
  }
}

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/bg1.jpg"),
            fit: BoxFit.fill,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RichText(
              text: TextSpan(
                style: Theme.of(context).textTheme.headline2,
                children: [
                  TextSpan(
                      text: "Book",
                      style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white)
                  ),
                  TextSpan(
                    text: " Plug",
                    style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white70),
                  ),
                ],
              ),
            ),

            SizedBox(height: 30,),

            Text("All your books in one place" ,  style: TextStyle( color: Colors.white70),),

            SizedBox(height:  MediaQuery.of(context).size.width * .6),

            SizedBox(
              width: MediaQuery.of(context).size.width * .6,
              child: RoundedButton(
                text: "start reading",
                fontSize: 20,
                press: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return HomeScreen();
                    },
                  ),
                )
              ),
            ),
          ],
        ),
      ),
    );
  }
}
