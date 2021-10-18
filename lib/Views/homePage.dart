import 'package:app_soccer/Models/competitions.dart';
import 'package:app_soccer/Models/daily.dart';
import 'package:app_soccer/Services/competitionsRepository.dart';
import 'package:app_soccer/Services/newsRepository.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Competitions> competitions = [];
  List<Articles> daily = [];
  int _currentIndex = 0;
  @override
  void initState() {
    super.initState();
    fetchCompetitions();
    fetchNews();
  }

  void fetchCompetitions() async {
    competitions = await CompetitionsRepository().getLeagues();
    setState(() {});
  }

  void fetchNews() async {
    daily = await DailyRepository().getDailyNews();
    setState(() {});
  }

  void setIndex(int index) {
    _currentIndex = index;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> _pages = <Widget>[
      Container(
        child: ListView(
          shrinkWrap: true,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(15),
              child: Text(
                'Stories',
                style: TextStyle(
                    fontSize: 40,
                    height: 2,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
                padding: EdgeInsets.all(10),
                child: CarouselSlider(
                    items: <Widget>[
                      for (var item in daily)
                        Container(
                            child: Stack(
                          children: <Widget>[
                            ClipRRect(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                              child: Image.network(
                                item.urlToImage,
                              ),
                            ),
                          ],
                        ))
                    ],
                    options: CarouselOptions(
                        height: 180,
                        autoPlay: true,
                        aspectRatio: 2.0,
                        enlargeCenterPage: true,
                        autoPlayInterval: Duration(seconds: 15),
                        autoPlayAnimationDuration:
                            const Duration(milliseconds: 800)))),
            SizedBox(),
            Padding(
              padding: EdgeInsets.all(15),
              child: Text(
                'Headlines',
                style: TextStyle(
                    fontSize: 40,
                    height: 2,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.bold),
              ),
            ),
            SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  for (var item in daily)
                    Card(
                      child: InkWell(
                        splashColor: Colors.green,
                        onTap: () {},
                        child: Padding(
                          padding: EdgeInsets.all(4),
                          child: Row(
                            children: <Widget>[
                              Padding(
                                padding: EdgeInsets.all(15),
                                child: Container(
                                  width: 70,
                                  height: 60,
                                  decoration: BoxDecoration(
                                      shape: BoxShape.rectangle,
                                      image: DecorationImage(
                                          image: NetworkImage(item.urlToImage),
                                          fit: BoxFit.cover)),
                                ),
                              ),
                              Flexible(
                                child: Text(
                                  item.title,
                                  style: TextStyle(fontSize: 16),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    )
                ],
              ),
            )
          ],
        ),
      ),
      GridView.count(
        crossAxisCount: 3,
        crossAxisSpacing: 10.0,
        mainAxisSpacing: 10.0,
        children: competitions.map((value) {
          return Container(
              alignment: Alignment.center,
              margin: EdgeInsets.all(8),
              child: Card(child: Text(value.name)));
        }).toList(),
      )
    ];
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        titleTextStyle: TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontFamily: 'Segoe UI',
            fontWeight: FontWeight.bold),
        title: Text(
          'XSoccer',
          style: TextStyle(
              fontFamily: 'Roboto', fontSize: 15, fontWeight: FontWeight.bold),
        ),
      ),
      body: _pages.elementAt(_currentIndex),
      bottomNavigationBar: BottomNavigationBar(
        elevation: 2,
        currentIndex: _currentIndex,
        onTap: setIndex,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home_filled), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.sports_football), label: 'Leagues')
        ],
      ),
    );
  }
}
