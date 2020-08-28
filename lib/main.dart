import 'package:first_app/video_date_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final items = List<String>.generate(1000, (i) => 'Item $i');
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          primaryColor: Colors.white
      ),
      home: Scaffold(
        appBar: AppBar(
          centerTitle: false,
          leading: Icon(Icons.video_call),
          title: const Text(
              'バレーボール動画'
          ),
          actions: <Widget> [
            SizedBox (
              width: 44,
              child: FlatButton(
                child: Icon(Icons.search),
                onPressed: (){
                  // todo
                },
              ),
            ),
            SizedBox (
              width: 44,
              child:FlatButton(
                child: Icon(Icons.more_vert),
                onPressed: (){
                  // todo
                },
              ),
            ),
          ],
        ),
        body: Container(
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: <Widget>[
                    Image.asset(
                      'image/volley.jpg',
                      width: 150,
                    ),
                    Column(
                      children: <Widget>[
                        const Text(
                            'バレーボール動画'
                        ),
                        FlatButton (
                          child: Row(
                            children: <Widget>[
                              Icon(
                                Icons.video_call,
                                color: Colors.red,
                              ),
                              Text('登録する')
                            ],
                          ),
                          onPressed: () {
                            //todo
                          },
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: items.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      onTap: () async {
                        await Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => VideoDatePage(),
                          ),
                        );
                      },
                      leading: Image.asset(
                        'image/volley2.png',
                      ),
                      title: Column(
                        children: <Widget>[
                          Text(
                            'スクラッチ VS paopao 決勝戦',
                            style: TextStyle(
                                fontWeight: FontWeight.w500
                            ),
                          ),
                          Row(
                            children: <Widget> [
                              Text(
                                '30万回再生',
                                style: TextStyle(fontSize: 13),
                              ),
                              Text(
                                '1年前',
                                style: TextStyle(fontSize: 13),
                              ),
                            ],
                          )
                        ],
                      ),
                      trailing: Icon(Icons.more_vert),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
