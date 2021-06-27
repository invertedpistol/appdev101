import 'package:flutter/material.dart';

var listItems = <Widget> [l1(),l2(),l3(),l4()];

class l1 extends StatelessWidget {
  const l1({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
            width: 150,
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
          );
  }
}



class l2 extends StatelessWidget {
  const l2({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
            width: 150,
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
          );
  }
}



class l3 extends StatelessWidget {
  const l3({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
            width: 150,
            height: 300,
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
          );
  }
}



class l4 extends StatelessWidget {
  const l4({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
            width: 150,
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
          );
  }
}