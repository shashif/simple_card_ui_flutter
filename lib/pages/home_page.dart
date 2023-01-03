import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../widget/count_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI calculator'),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(FontAwesomeIcons.moon))
        ],
      ),
      drawer: Drawer(),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Expanded(
              child: Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: CountWidget(),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Expanded(
                      child: CountWidget(),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              elevation: 10,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text('cm'),
                        CupertinoSwitch(value: true, onChanged: (value) {}),
                        Text('ft'),
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text('Height'),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: 150,
                          height: 120,
                          child: Card(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20)),
                            elevation: 10,
                            color: Colors.blueGrey.withOpacity(0.50),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text('4'),
                                SizedBox(
                                  width: 15,
                                ),
                                Icon(Icons.arrow_drop_down),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          width: 150,
                          height: 120,
                          child: Card(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20)),
                            elevation: 10,
                            color: Colors.blueGrey.withOpacity(0.50),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text('4'),
                                SizedBox(
                                  width: 15,
                                ),
                                Icon(Icons.arrow_drop_down),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Expanded(
              child: Card(

                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                elevation: 10,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text("Gender"),
                      SizedBox(
                        height: 5,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text("I'm"),
                          Text("Male"),
                          CupertinoSwitch(value: true, onChanged: (value) {}),
                          Text("Female"),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text('Button'),
              style: ElevatedButton.styleFrom(shape: StadiumBorder()),
            ),
          ],
        ),
      ),
    );
  }
}
