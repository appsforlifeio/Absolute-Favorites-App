import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

final dbObject = {};

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget titleSection = Container(
      padding: const EdgeInsets.all(32),
      child: Row(
        children: [
          /*1*/
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              /*2*/
              Container(
                  padding: const EdgeInsets.fromLTRB(2, 2, 8, 2),
                  child: Image.asset(
                    'images/lake.jpg',
                    width: 100,
                    height: 100,
                    fit: BoxFit.contain,
                  )),
              Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      padding: const EdgeInsets.only(bottom: 8),
                      child: Expanded(
                        child: Text(
                          'Oeschinen Lake Campground',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    Text(
                      'Kandersteg, Switzerland',
                      style: TextStyle(
                        color: Colors.grey[500],
                      ),
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.star,
                          color: Colors.red[500],
                        ),
                        Text('41'),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),

          /*3*/
        ],
      ),
    );

    Column _buildButtonColumn(Color color, IconData icon, String label) {
      return Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, color: color),
          Container(
            margin: const EdgeInsets.only(top: 8),
            child: Text(
              label,
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w400,
                color: color,
              ),
            ),
          )
        ],
      );
    }

    Color color = Theme.of(context).primaryColor;

    Widget buttonSection = Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _buildButtonColumn(color, Icons.call, 'CALL'),
          _buildButtonColumn(color, Icons.near_me, 'ROUTE'),
          _buildButtonColumn(color, Icons.share, 'SHARE'),
        ],
      ),
    );

    Widget textSection2 = Container(
      padding: const EdgeInsets.all(32),
      child: Text(
        dbObject.toString(),
        softWrap: true,
      ),
    );

    return MaterialApp(
        title: 'Flutter Layout Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Scaffold(
          body: ListView(
            children: [
              Card(
                margin: EdgeInsets.all(20),
                child: Column(
                  children: [
                    Image.asset('images/lake.jpg'),
                    titleSection,
                    buttonSection,
                    textSection2,
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
