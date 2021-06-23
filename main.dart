import 'package:flutter/material.dart';

void main() {
  runApp(tabdemo());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            extendBodyBehindAppBar: true,
            appBar: AppBar(
                backgroundColor: Colors.transparent,
                elevation: 0,
                leading: IconButton(
                  icon: Icon(Icons.arrow_back),
                  onPressed: () {},
                ),
                actions: [
                  IconButton(
                    icon: Icon(Icons.menu),
                    onPressed: () {},
                  ),
                ]),
                
            body: Column(
              children: [Image.asset("assets/appbar_back.png")],
            )));
  }
}


class tabdemo extends StatefulWidget {
  const tabdemo({ Key? key }) : super(key: key);

  @override
  _tabdemoState createState() => _tabdemoState();
}

class _tabdemoState extends State<tabdemo> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            flexibleSpace: Image(
              image: AssetImage('assets/appbar_back.png'),
              fit: BoxFit.cover,
            ),
            backgroundColor: Colors.transparent,
            leading: IconButton(
              icon: Icon(Icons.arrow_back),
              onPressed: () {},
            ),
            actions: [
              IconButton(
                icon: Icon(Icons.menu),
                onPressed: () {},
              ),
                ],
            bottom: TabBar(
              indicatorSize: TabBarIndicatorSize.label, 
              indicatorColor: Colors.white,
              tabs: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text('Designer',style: TextStyle(fontSize: 18),),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('Category',style: TextStyle(fontSize: 18),),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('Attention',style: TextStyle(fontSize: 18),),
                ),
              ]
            ),
          ),
          body: TabBarView(
              children: [
                Icon(Icons.alt_route),
                Icon(Icons.directions_transit),
                Icon(Icons.directions_bike),
              ],
        )
        )
    ));
  }
}