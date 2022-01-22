import 'package:bookplug_ebook_app/consttants.dart';
import 'package:bookplug_ebook_app/widgets/book_rating.dart';
import 'package:bookplug_ebook_app/widgets/rounded_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DetailsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
     body: SingleChildScrollView(
        physics: ClampingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Stack(
              alignment: Alignment.topCenter,
              children: <Widget>[
                Container(
                  alignment: Alignment.topCenter,
                  padding: EdgeInsets.only(top: size.height * .15, left: size.width * .1, right: size.width * .02),
                  height: size.height * .48,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/images/details.jpg"),
                      fit: BoxFit.fitWidth,
                    ),
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(50),
                      bottomRight: Radius.circular(50),
                    ),
                  ),
                  child: BookInfo(size: size,)
                ),

                Positioned(
                  left: 20.0,
                    top: 50.0,
                    child: IconButton(icon: Icon(Icons.adaptive.arrow_back, color: Colors.white, size: 26.0,), onPressed: () => Navigator.pop(context),)),

                Padding(
                  padding: EdgeInsets.only(top: size.height * .48 - 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      ChapterCard(
                        name: "Instanbul",
                        chapterNumber: 1,
                        tag: "Saturday, September 5. Ten p.m",
                        press: () {},
                      ),
                      ChapterCard(
                        name: "Berlin",
                        chapterNumber: 2,
                        tag: "Monday, September 7. Ten a.m",
                        press: () {},
                      ),
                      ChapterCard(
                        name: "Rome",
                        chapterNumber: 3,
                        tag: "Monday, September 7. Six p.m",
                        press: () {},
                      ),
                      ChapterCard(
                        name: "Buenos Aires",
                        chapterNumber: 4,
                        tag: "Monday, September 7. Three p.m",
                        press: () {},
                      ),
                      SizedBox(height: 10),

                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 30.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              alignment: Alignment.centerRight,
                              decoration: BoxDecoration(
                                  color: cLightColor,
                                shape: BoxShape.circle
                              ),
                              child: IconButton(
                                icon: Icon(CupertinoIcons.back),
                                onPressed: (){},
                                color: cDarkColor,
                              ),
                            ),

                            TextButton(
                              onPressed: (){},
                              child: Text("Go to chapter", style: TextStyle(decoration: TextDecoration.underline),)

                            ),

                            Container(
                              decoration: BoxDecoration(
                                  color: cLightColor,
                                  shape: BoxShape.circle
                              ),
                              child: IconButton(
                                icon: Icon(CupertinoIcons.forward),
                                onPressed: (){},
                                color: cDarkColor,
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  RichText(
                    text: TextSpan(
                      style: Theme.of(context).textTheme.headline5,
                      children: [
                        TextSpan(
                          text: "You might also ",
                        ),
                        TextSpan(
                          text: "like….",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20),
                  Stack(
                    children: <Widget>[
                      Container(
                        height: 180,
                        width: double.infinity,
                      ),
                      Positioned(
                        bottom: 0,
                        left: 0,
                        right: 0,
                        child: Container(
                          padding:
                              EdgeInsets.only(left: 24, top: 24, right: 150),
                          height: 160,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(29),
                            color: cLightColor,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              RichText(
                                text: TextSpan(
                                  style: TextStyle(color: cLightColor),
                                  children: [
                                    TextSpan(
                                      text:
                                          "Once upon\na river \n",
                                      style: TextStyle(
                                        fontSize: 15,
                                          color: Colors.black,
                                        fontWeight: FontWeight.bold
                                      ),

                                    ),
                                    TextSpan(
                                      text: "Diane Setterfield",
                                      style: TextStyle(color: cDarkColor),
                                    ),
                                  ],
                                ),
                              ),
                              Row(
                                children: <Widget>[
                                  BookRating(
                                    score: 4.9,
                                  ),
                                  SizedBox(width: 10),
                                  Expanded(
                                    child: RoundedButton(
                                      text: "Read",
                                      verticalPadding: 10, press: (){},
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 0,
                        right: 0,
                        child:Container(
                          color: Colors.transparent,
                          padding: EdgeInsets.only(bottom: 20) ,
                          child: Image.asset(
                            "assets/images/book2.jpeg",
                            height: 150,
                            alignment: Alignment.topRight,

                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              height: 40,
            ),
          ],
        ),
      ),
    );
  }
}

class ChapterCard extends StatelessWidget {
  final String? name;
  final String? tag;
  final int? chapterNumber;
  final Function? press;
  const ChapterCard({
    Key? key,
    this.name,
    this.tag,
    this.chapterNumber,
    this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.symmetric(vertical: 20, horizontal: 30),
      margin: EdgeInsets.only(bottom: 16),
      width: size.width - 48,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(38.5),
        boxShadow: [
          BoxShadow(
            offset: Offset(0, 10),
            blurRadius: 33,
            color: cShadowColor,
          ),
        ],
      ),
      child: Row(
        children: <Widget>[
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: "Chapter $chapterNumber : $name \n",
                  style: TextStyle(
                    fontSize: 16,
                    color: cDarkColor,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                TextSpan(
                  text: tag,
                  style: TextStyle(color: cDarkColor),
                ),
              ],
            ),
          ),
          Spacer(),
          IconButton(
            icon: Icon(
              Icons.arrow_forward_ios,
              size: 18,
            ),
            onPressed: () => press,
          )
        ],
      ),
    );
  }
}

class BookInfo extends StatelessWidget {
  
  const BookInfo({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Flex(
        crossAxisAlignment: CrossAxisAlignment.start,
        direction: Axis.horizontal,
        children: <Widget>[
          Expanded(
            flex: 1,
            child: Column(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(top: this.size.height * .005),
                  alignment: Alignment.centerLeft,
                  padding: EdgeInsets.only(top: 0),
                  child: Text(
                    "Bloodline",
                    style: Theme.of(context).textTheme.subtitle1!.copyWith(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Row(
                  children: <Widget>[
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          width: this.size.width * .3,
                          padding: EdgeInsets.only(top: this.size.height * .02),
                          child: Text(
                            "When the daughter of one of the world's richest men inherits his multi-billion-dollar business, she inherits his position at the top of the company and at the top of the victim's list of his murderer!.",
                            maxLines: 5,
                            style: TextStyle(
                              fontSize: 11,
                              color: cLightColor,
                              overflow: TextOverflow.ellipsis
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: this.size.height * .015),
                          padding: EdgeInsets.only(left: 10, right: 10),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: FlatButton(
                            onPressed: () {},
                            child: Text("Read", style: TextStyle(fontWeight: FontWeight.bold),),
                          ), 
                        )
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        IconButton(
                            icon: Icon(Icons.favorite_border, size: 20, color: Colors.grey,),
                            onPressed: () {},
                        ), 
                        BookRating(score: 4.9),
                      ],
                    )
                  ],
                )
              ],
            )
          ),
          Expanded(
            flex: 1,
            child: Container(
              color: Colors.transparent,
              padding: EdgeInsets.only(bottom: 50) ,
              child: Image.asset(
                "assets/images/book1.jpeg",
                height: double.infinity,
                alignment: Alignment.topRight,

              ),
          )),
        ],
      ),
    );
  }
}