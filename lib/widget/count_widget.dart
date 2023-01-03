import 'package:flutter/material.dart';

class CountWidget extends StatelessWidget {
  const CountWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20)
      ),
      elevation: 10,
      child: Container(
        // height: 150,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text('Age (In Year)'),
            Text('18'),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(
                  onPressed: () {},
                  child: Icon(
                    Icons.add,
                    color: Colors.white,
                    size: 40.0,
                  ),
                  style: ElevatedButton.styleFrom(
                      shape: CircleBorder(),
                      primary: Colors.green),
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: Icon(
                    Icons.remove,
                    color: Colors.white,
                    size: 40.0,
                  ),
                  style: ElevatedButton.styleFrom(
                      shape: CircleBorder(), primary: Colors.red),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
