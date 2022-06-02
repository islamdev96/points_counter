import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(PointsCounter());
}

// ignore: must_be_immutable
class PointsCounter extends StatefulWidget {
  PointsCounter({Key? key}) : super(key: key);

  @override
  State<PointsCounter> createState() => _PointsCounterState();
}

class _PointsCounterState extends State<PointsCounter> {
  int teamAPoints = 0;
  int teamBPoints = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.orange,
          title: const Text('Points Counter'),
        ),
        body: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    const Text(
                      'Team A',
                      style: TextStyle(fontSize: 30, color: Colors.black),
                    ),
                    AutoSizeText(
                      '$teamAPoints',
                      maxLines: 5,
                      style: TextStyle(
                          fontSize: 150,
                          color: Colors.black,
                          overflow: TextOverflow.ellipsis),
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(primary: Colors.orange),
                      onPressed: () {
                        setState(() {
                          teamAPoints++;
                        });
                      },
                      child: const Text(
                        'Add 1 point',
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(primary: Colors.orange),
                      onPressed: () {
                        setState(() {
                          teamAPoints += 2;
                        });
                      },
                      child: const Text('Add 2 point',
                          style: TextStyle(color: Colors.black)),
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(primary: Colors.orange),
                      onPressed: () {
                        setState(() {
                          teamAPoints += 3;
                        });
                      },
                      child: const Text('Add 3 point',
                          style: TextStyle(color: Colors.black)),
                    ),
                  ],
                ),
                Container(
                  height: 450,
                  child: const VerticalDivider(
                    endIndent: 35,
                    indent: 40,
                    color: Colors.black,
                    thickness: 1,
                  ),
                ),
                Column(
                  children: [
                    const Text(
                      'Team B',
                      style: TextStyle(fontSize: 30, color: Colors.black),
                    ),
                    Text(
                      '$teamBPoints',
                      style: TextStyle(fontSize: 150, color: Colors.black),
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(primary: Colors.orange),
                      onPressed: () {
                        setState(() {
                          teamBPoints += 1;
                        });
                      },
                      child: const Text('Add 1 point',
                          style: TextStyle(color: Colors.black)),
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(primary: Colors.orange),
                      onPressed: () {
                        setState(() {
                          teamBPoints += 2;
                        });
                      },
                      child: const Text('Add 2 point',
                          style: TextStyle(color: Colors.black)),
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(primary: Colors.orange),
                      onPressed: () {
                        setState(() {
                          teamBPoints += 3;
                        });
                      },
                      child: const Text('Add 3 point',
                          style: TextStyle(color: Colors.black)),
                    ),
                  ],
                ),
              ],
            ),
            const Divider(
              color: Colors.black,
              endIndent: 50,
              indent: 50,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(primary: Colors.orange),
              onPressed: () {
                setState(() {
                  teamBPoints = 0;
                  teamAPoints = 0;
                });
              },
              child: const Text('Reset', style: TextStyle(color: Colors.black)),
            ),
          ],
        ),
      ),
    );
  }
}
