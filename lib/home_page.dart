import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:motogp_trying_flutter/calendar_page.dart';
import 'package:motogp_trying_flutter/post.dart';
import 'package:motogp_trying_flutter/widgets/post_view.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;
  final List<String> imgList = [
    'assets/images/ktm.png',
    'assets/images/yamaha.png',
    'assets/images/ducati.png',
    'assets/images/aprilia.png'
  ];
  final Post post1 = const Post(
      title: 'COTA king Rins',
      description:
          'It was a sensational weekend in Austin for the LCR Honda Castrol star.',
      picture: 'assets/images/rins.png');
  final Post post2 = const Post(
      title: 'Heroic third place for Quartararo',
      description:
          'Despite being far from having the best machine in the paddock, the Yamaha rider finished with a hopeful third place.',
      picture: 'assets/images/fabio.png');
  final Post post3 = const Post(
      title: 'Marini takes silver home',
      description:
          'After the sprint race did not go as planned, Marini claims a well deserved second place on Sunday.',
      picture: 'assets/images/marini.png');

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
        //backgroundColor: Colors.black45,
      ),
      drawer: Drawer(
        width: 200,
        backgroundColor: Colors.black45,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
                child: Image(image: AssetImage('assets/images/logoGP.png'))),
            const ListTile(
              title: Text('Profile'),
              textColor: Colors.white,
            ),
            ListTile(
              title: const Text('Calendar'),
              textColor: Colors.white,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const CalendarPage()),
                );
              },
            ),
            const ListTile(
              title: Text('Settings'),
              textColor: Colors.white,
            )
          ],
        ),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: ListView(
          children: <Widget>[
            CarouselSlider(
                items: widget.imgList.map((e) {
                  return Builder(
                    builder: (BuildContext context) {
                      return Container(
                        width: MediaQuery.of(context).size.width,
                        child: Image(image: AssetImage(e)),
                      );
                    },
                  );
                }).toList(),
                options: CarouselOptions(height: 300, autoPlay: true)),
            Row(children: const <Widget>[
              Padding(
                padding: EdgeInsets.all(12),
                child: Text(
                  'NEWS',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
              )
            ]),
            PostView(post: widget.post1),
            PostView(post: widget.post2),
            PostView(post: widget.post3)
          ],
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
