import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Color pink = Color(0xFFD18585);
  Color grey = Color(0xFFC4C4C4);
  Color green = Color(0xFFA8D8AD);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.all(10),
          child: Column(
            children: [
              Flexible(
                child: FractionallySizedBox(
                  widthFactor: 1,
                  heightFactor: 0.5,
                  child: Card(
                    color: pink,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Flexible(
                          child: FractionallySizedBox(
                            heightFactor: 1,
                            widthFactor: 0.5,
                            child: Container(
                              margin:
                                  EdgeInsets.only(left: 8, top: 8, bottom: 4),
                              color: grey,
                            ),
                          ),
                        ),
                        Flexible(
                          child: FractionallySizedBox(
                            heightFactor: 1,
                            widthFactor: 1,
                            child: Container(
                              margin: const EdgeInsets.only(
                                  left: 8, top: 4, bottom: 8, right: 8),
                              color: green,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Flexible(
                child: FractionallySizedBox(
                  heightFactor: 0.1,
                ),
              ),
              Flexible(
                child: FractionallySizedBox(
                  widthFactor: 1,
                  heightFactor: 0.5,
                  child: Card(
                    color: pink,
                    child: Stack(
                      clipBehavior: Clip.none,
                      children: [
                        Align(
                          alignment: Alignment.bottomCenter,
                          child: Flexible(
                            child: FractionallySizedBox(
                              heightFactor: 0.5,
                              widthFactor: 1,
                              child: Container(
                                margin: EdgeInsets.only(
                                    left: 8, top: 4, bottom: 8, right: 8),
                                color: green,
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          right: MediaQuery.of(context).size.width * 0.25,
                          left: MediaQuery.of(context).size.width * 0.25,
                          top: -20,
                          child: Container(
                            height: MediaQuery.of(context).size.height * 0.08,
                            width: MediaQuery.of(context).size.width  * 0.8,
                            color: grey,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
