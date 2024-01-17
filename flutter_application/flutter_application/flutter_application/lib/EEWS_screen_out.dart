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
            leading: Padding(
              padding: EdgeInsets.only(left: 10.0, top: 10.0), // Fix the syntax error here
              child: Image.asset('assets/img/BMG.png'),
            ),
            leadingWidth: 60,
            title: Text('EEWS'),
            expandedHeight: 320,
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
                        width: 130,
                        height: 110,
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            // Add your countdown widget
                            TimeCircularCountdown(
                              unit: CountdownUnit.second,
                              countdownTotal: 12,
                              onUpdated: (unit, remainingTime) {
                                // You can add logic here to update numbers based on the remaining time
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
                              top: 32,
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
              child: Stack(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Container(
                      height: 200,
                      color: Colors.green[600],
                    ),
                  ),
                  Positioned(
                    top: 50, // adjust the top position as needed
                    left: 20, // adjust the left position as needed
                    child: Image.asset(
                      'assets/img/clock_new.png', // replace 'your_image.png' with the path to your image asset
                      width: 100, // set the width of the image
                      height: 100, // set the height of the image
          ),
        ),
      ],
    ),
  ),
),

          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(5.0),
              child: Stack(
                children :[
                  ClipRRect( 
                    borderRadius: BorderRadius.circular(20),
                    child: Container(
                      height: 200,
                      color: Colors.green[600],
                ),
              ),
              Positioned(
                top: 50,
                left: 20, 
                child: Image.asset(
                  'assets/img/tsunami.png', 
                  width: 100,
                  height: 100,
            )
          )
        ],
      ),
    ),
  ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(5.0),
              child: Stack(
                children: [
                  ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Container(
                    height: 200,
                    color: Colors.green[600],
                  ),
                ),
                Positioned(
                  top: 50,
                  left: 20,
                  child: Image.asset('assets/img/intensity.png',
                  width: 100,
                  height: 100,
              )
            )
        ],
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
    // In this example, counting down from 10 to 0
    return remainingTime - 1;
  }
}
