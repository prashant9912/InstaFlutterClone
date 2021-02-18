import 'package:flutter/material.dart';
import 'body.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  const App({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Instagram Clone",
      home: Home(),
    );
  }
}

class Bottom extends StatelessWidget {
  const Bottom({Key key}) : super(key: key);

  Widget click(Widget a) {
    return Expanded(
        flex: 1,
        child: Center(
          child: InkWell(
              borderRadius: BorderRadius.circular(100),
              onTap: () {},
              child: Container(
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(100)),
                  padding: EdgeInsets.all(12),
                  child: a)),
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          click(Icon(Icons.home)),
          click(Icon(Icons.search)),
          click(Icon(Icons.add_circle_outline_sharp)),
          click(Icon(Icons.favorite)),
          click(Icon(Icons.person))
        ],
      ),
    );
  }
}

class Home extends StatelessWidget {
  const Home({Key key}) : super(key: key);

  Widget cont(Color color) {
    return Container(
      height: 200,
      width: 200,
      color: color,
    );
  }

  Widget card(int a){
    return Container(
                        margin: EdgeInsets.all(10),
                        width: double.infinity, height: 200,
                        // color: Colors.red,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.red,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black54,
                                blurRadius: 10.0,
                              ),
                            ]),
                            child: Text(a.toString()),
                      );
  }

  @override
  Widget build(BuildContext context) {

      final List a = [1,2,3,4,5];

    return Scaffold(
      body: SafeArea(
        child: Container(
          key: key,
          child: Column(
            children: [
              Expanded(
                  flex: 1, // 20%
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        padding: EdgeInsets.only(left: 20),
                        child: Icon(Icons.add_box_outlined),
                      ),
                      Container(
                        padding: EdgeInsets.all(14),
                        child: Image.network(
                            'https://pngimage.net/wp-content/uploads/2018/06/nome-instagram-png-5.png'),
                      ),
                      Container(
                        padding: EdgeInsets.only(right: 20),
                        child: Icon(Icons.mail),
                      )
                    ],
                  )),
              Expanded(
                flex: 10, // 60%
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Body()
                    ],
                  ),
                ),
              ),
              Expanded(
                  flex: 1, // 20%
                  child: Bottom())
            ],
          ),
        ),
      ),
    );
  }
}
