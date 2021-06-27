import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'ListItem.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 2,
        child: MyScaff()
      )
    );
  }
}

class MyScaff extends StatelessWidget {
  const MyScaff({
    Key? key,
  }) : super(key: key);  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[850],
        leading: IconButton(
          icon: Icon(Icons.menu,color: Colors.grey,),
          onPressed: () {},
        ),
        centerTitle: true,
        title: Text('Explore', style: TextStyle(fontSize: 18),),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.notifications_none_outlined,color: Colors.grey)),
          IconButton(onPressed: () {}, icon: Icon(Icons.search,color: Colors.grey))
          ],
        bottom: TabBar(
              indicatorSize: TabBarIndicatorSize.label, 
              indicatorColor: Colors.pink,
              indicatorWeight: 4,
              tabs: [
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Text('   D I S C O V E R   ',style: TextStyle(fontSize: 14),),
                ),
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Text('   A C T I V I T I E S   ',style: TextStyle(fontSize: 14),),
                ),
              ]
            ),
      ),
      body: TabBarView(
        children: [
          Icon(Icons.hourglass_empty),
          page1()
        ],
      )
    );
  }
}

class page1 extends StatelessWidget {
  const page1({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[900],
      child: Column(children: [
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: Container(
            height: 150,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              gradient: new LinearGradient(
                      colors: [Colors.pink, Colors.yellow],
                      begin: Alignment.bottomLeft,
                      end: Alignment.topRight,
                      stops: [0.0, 1.0],
                      tileMode: TileMode.clamp
                    ),
              image: DecorationImage(
                image: AssetImage('assets/file-20210115-21-90wsyw.jpeg'),
                fit: BoxFit.cover,
                colorFilter: new ColorFilter.mode(Colors.black.withOpacity(0.2), BlendMode.dstATop)
                ),
              ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
          child: StaggeredGridView.countBuilder(
            crossAxisCount: 2,
            crossAxisSpacing: 12,
            mainAxisSpacing: 12,
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            addAutomaticKeepAlives: true,
            itemCount: listItems.length,
            itemBuilder: (context, int index) { return listItems[index]; },
            staggeredTileBuilder: (int index) => new StaggeredTile.count(1, index.isEven?1.4:1),
          ),
        ),
      ],)
    );
  }
}

