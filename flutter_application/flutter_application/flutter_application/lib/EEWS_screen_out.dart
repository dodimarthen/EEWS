import 'package:flutter/material.dart';
import 'package:circular_countdown/circular_countdown.dart';

class EEWSScreenOut extends StatefulWidget {
  const EEWSScreenOut({Key? key}) : super(key: key);

  @override
  State<EEWSScreenOut> createState() => _EEWSScreenOutState();
}

class _EEWSScreenOutState extends State<EEWSScreenOut> {
  int countdown = 10;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: [
          // Sliver APPBAR
          SliverAppBar(
            leading: Icon(Icons.menu),
            title: Text('E E W S'),
            expandedHeight: 300,
            floating: true,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              background: Stack(
                children: [
                  Container(
                    color: Colors.blue[900],
                  ),
                  Positioned(
                    top: 60,
                    left: 130,
                    bottom: 1,
                    child: Center(
                      child: Container(
                        width: 150,
                        height: 110,
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            // Add your countdown widget
                            TimeCircularCountdown(
                              unit: CountdownUnit.second,
                              countdownTotal: 12,
                              onUpdated: (unit, remainingTime) {
                                // You can add logic here to update letters based on the remaining time
                                int number = getNumberForTime(remainingTime);
                                // Update your UI to display the number
                                setState(() {
                                  countdown = number;
                                });
                              },
                              onFinished: () => print("Countdown Finished"),
                            ),
                            // Add a widget to display the number (adjust position as needed)
                            Positioned(
                              top: 30,
                              child: Text(
                                '$countdown',
                                style: TextStyle(fontSize: 40, color: Colors.white),
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

          // Sliver Items
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(5.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Container(
                  height: 200,
                  color: Colors.green[600],
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(5.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Container(
                  height: 200,
                  color: Colors.green[600],
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(5.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Container(
                  height: 200,
                  color: Colors.green[600],
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(5.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Container(
                  height: 200,
                  color: Colors.green[600],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  int getNumberForTime(int remainingTime) {
    // Your logic to determine the number based on remaining time
    // In this example, counting down from 10
    return remainingTime;
  }
}
