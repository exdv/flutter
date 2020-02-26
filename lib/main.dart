import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  Container MyArticles(String imagefile, String icon, String header, String subheafer){
    return Container(child: 
              GestureDetector(
              onTap: () {
                print(header);
              },
              child:       
                Container(
                width: 96,
                padding: EdgeInsets.symmetric(horizontal: 3),
                child:
                Column(children: <Widget>[
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10.0),
                    child: Image.asset(imagefile) ,
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 2.0, bottom: 10),
                    child:
                    Row(mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          width: 20, 
                          height: 20,                        
                          child:
                          Image.asset(icon)
                        ), 
                        Container(
                          padding: EdgeInsets.only(left:0), 
                          child:
                          Text(header, style: TextStyle(fontSize: 14))
                        )
                      ]
                    ),
                  ),
                ])
                )
              )
            );
  }
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        //primaryColor: Color(0xff622F72),
        primaryColor: Colors.white
      ),
      home: Scaffold(
        body: Stack(children: <Widget>[ 
          SingleChildScrollView(child: 
            Column(
              children: <Widget>[
                SizedBox(height: 60),
                Text('HOROSCOPES', style: TextStyle(fontSize: 35)),
                Padding(
                  padding: const EdgeInsets.only(top: 30, bottom: 10), 
                  child: Text("Choose your zodiac sign:", style: TextStyle(fontSize: 16)),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 14), 
                  child:
                Wrap(
                  children: <Widget>[
                      MyArticles('assets/aries_120.jpg', 'assets/icons/aries.png', 'Aries', 'Mar 21-Apr 19'),
                      MyArticles('assets/taurus_120.jpg', 'assets/icons/taurus.png', 'Taurus', 'Apr 20-May 20'),
                      MyArticles('assets/gemini_120.jpg', 'assets/icons/cheminucos.png', 'Gemini', 'May 21-June 20'),
                      MyArticles('assets/cancer_120.jpg', 'assets/icons/cancer.png', 'Cancer', 'Jun 21-Jul 22'),
                      MyArticles('assets/leo_120.jpg', 'assets/icons/leo.png', 'Leo', 'Jul 23-Aug 22'),
                      MyArticles('assets/virgo_120.jpg', 'assets/icons/virgio.png', 'Virgo', 'Aug 23-Sep 22'),
                      MyArticles('assets/libra_120.jpg', 'assets/icons/libra.png', 'Libra', 'Sep 23-Oct 22'),
                      MyArticles('assets/scorpio_120.jpg', 'assets/icons/scorpio.png', 'Scorpio', 'Oct 23-Nov 21'),
                      MyArticles('assets/sagittarius_120.jpg', 'assets/icons/sachitario.png', 'Sagittarius', '22-Dec 21'),
                      MyArticles('assets/capricorn_120.jpg', 'assets/icons/capricornio.png', 'Capricorn', 'Dec 22-Jan 19'),
                      MyArticles('assets/aquarius_120.jpg', 'assets/icons/aquario.png', 'Aquarius', 'Jan 20-Feb 18'),
                      MyArticles('assets/pisces_120.jpg', 'assets/icons/piscis.png', 'Pisces', 'Feb 19-Mar 20')
                    ],
                )),
                SizedBox(height: 40),
                SizedBox(
                  width: 300.0,
                  height: 50.0,
                  child: OutlineButton(
                      shape: RoundedRectangleBorder(borderRadius: new BorderRadius.circular(10.0)),
                      borderSide: BorderSide(width: 1.0),
                      child: Text('What Is My Zodiac Sign?', style: TextStyle(fontSize: 16)),
                      onPressed: (() {})),
                ),
              ]
           )
          )
        ]
        )
      )
    );
  }
}