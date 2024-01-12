import 'package:flutter/material.dart';
import 'package:circular_countdown/circular_countdown.dart';

class EEWSScreenOut extends StatefulWidget {
  const EEWSScreenOut({Key? key}) : super(key: key);

  @override
  State<EEWSScreenOut> createState() => _EEWSScreenOutState();
}

class _EEWSScreenOutState extends State<EEWSScreenOut> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: [
          // Sliver APPBAR
          SliverAppBar(
            leading: Icon(Icons.menu),
            title: Text('E E W S B M K G'),
            expandedHeight: 300,
            floating: true,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              background: Stack(
                children: [
                  Container(
                    color: Colors.blue[900],
                  ),
                  Center(
                    child: Container(
                      width: 200,
                      height: 200,
                      child: TimeCircularCountdown(
                        unit: CountdownUnit.second,
                        countdownTotal: 8,
                        onUpdated: (unit, remainingTime) => print('Updated'),
                        onFinished: () => print('Finished'),
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
}
