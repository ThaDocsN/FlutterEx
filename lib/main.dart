import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart'show debugPaintSizeEnabled;

//void main() => runApp(new MyApp());
void main() {
  debugPaintSizeEnabled = false;
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    Widget titleSection = Container(
      padding: const EdgeInsets.all(32.0),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.only(bottom: 8.0),
                  child: Text('Charles Is The Man',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),),
                ),
                Text(
                  'Magnolia, arkansas',
                  style: TextStyle(color: Colors.grey[500]),
                )
              ],
            ),
          ),
          Icon(
            Icons.star,
            color: Colors.red[500],
          ),
          Text('41'),
        ],
      ),
    );

    Column buildButtonColumn(IconData icon, String label){
      Color color = Theme.of(context).primaryColor;

      return Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, color: color),
          Container(margin: const EdgeInsets.only(top: 8.0),
          child: Text(label,
          style: TextStyle(
            fontSize: 12.0,
            fontWeight: FontWeight.w400,
            color: color,
          ),),)
        ],
      );
    }

    Widget buttonSection = Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          buildButtonColumn(Icons.call, 'CALL'),
          buildButtonColumn(Icons.near_me, 'ROUTE'),
          buildButtonColumn(Icons.share, 'SHARE'),
        ],
      ),
    );
    
    Widget textSection = Container(
      padding: const EdgeInsets.all(32.0),
      child: Text(
        '''
        This is my second flutter app excersie. I will do more because this is fun..
        ''',
        softWrap: true,
      ),
    );

    return MaterialApp
    (
        title: 'Flutter Demo',
        home: Scaffold(
          appBar: AppBar(
            title: Text('My Place'),
          ),
          body: ListView(
            children: [
              Image.asset('images/panther.jpg',
              width: 600.0,
              height: 240.0,
              fit: BoxFit.cover,),
              titleSection,
              buttonSection,
              textSection,
            ],
          ),
        ),
    );
  }
}

