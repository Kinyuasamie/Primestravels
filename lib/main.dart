//import 'dart:nativewrappers/_internal/vm/lib/ffi_native_type_patch.dart';

//import 'dart:ui';
import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(fontFamily: 'Nunito'),
        home: HomePage(),
      ),
    );

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  PageController _pageController = PageController(
    initialPage: 2,
  );
  int totalPage = 4;
  void _onScroll() {}

  @override
  void initState() {
    _pageController = PageController(
      initialPage: 0,
    )..addListener(_onScroll);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        children: <Widget>[
          makePage(
            page: 1,
            image: 'assets/images/ONE.jpeg',
            title: 'South Carolina',
            description: 'The Epic mountains and lake basins of America',
          ),
          makePage(
            page: 2,
            image: 'assets/images/TWO.jpeg',
            title: 'Dubai prime towers',
            description:
                'The eagle amster cross street where poer belongs to people',
          ),
          makePage(
            page: 3,
            image: 'assets/images/FIVE.jpeg',
            title: 'The Bridge between',
            description:
                'Here is the father wooden bridge of southern America ',
          ),
          makePage(
              page: 4,
              image: 'assets/images/FOUR.jpeg',
              title: 'Couple vendie ',
              description: 'Couple plus avenue washington DC lupato marine'),
        ],
      ),
    );
  }

  Widget makePage({image, title, description, page}) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
        image: AssetImage(image),
        fit: BoxFit.cover,
      )),
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(begin: Alignment.bottomRight, stops: [
            0.3,
            0.9
          ], colors: [
            Colors.black.withOpacity(.9),
            Colors.black.withOpacity(.2),
          ]),
        ),
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              SizedBox(
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.baseline,
                textBaseline: TextBaseline.alphabetic,
                children: <Widget>[
                  Text(
                    page.toString(),
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    '/' + totalPage.toString(),
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                    ),
                  ),
                ],
              ),
              Expanded(
                  child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    title,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 50,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(right: 3),
                        child: Icon(
                          Icons.star,
                          color: Colors.yellow,
                          size: 15,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(right: 3),
                        child: Icon(
                          Icons.star,
                          color: Colors.yellow,
                          size: 15,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(right: 3),
                        child: Icon(
                          Icons.star,
                          color: Colors.yellow,
                          size: 15,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(right: 3),
                        child: Icon(
                          Icons.star,
                          color: Colors.yellow,
                          size: 15,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(right: 5),
                        child: Icon(
                          Icons.star,
                          color: Colors.grey,
                          size: 15,
                        ),
                      ),
                      Text(
                        '4.0',
                        style: TextStyle(color: Colors.white70),
                      ),
                      Text(
                        '(2300)',
                        style: TextStyle(color: Colors.white38, fontSize: 12),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 50),
                    child: Text(
                      description,
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.white.withOpacity(.7),
                          height: 1.9),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Read more',
                    style: TextStyle(color: Colors.white),
                  )
                ],
              )),
            ],
          ),
        ),
      ),
    );
  }
}
