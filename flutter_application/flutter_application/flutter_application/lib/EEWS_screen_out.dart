import 'package:flutter/material.dart';

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
          //Sliver APPBAR
          SliverAppBar(
            leading: Icon(Icons.menu),
            title: Text('E E W S B M K G'),
            expandedHeight: 400,
            flexibleSpace: FlexibleSpaceBar(
              background: Container(
                color: Colors.black38,
              )
              ),
          ),
          //Sliver Items
          SliverToBoxAdapter(
            child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Container(
                    height: 180,
                    color: Colors.green[600],
                  ),
                )
            )
          ),
          SliverToBoxAdapter(
            child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Container(
                    height: 180,
                    color: Colors.green[600],
                  ),
                )
            )
          ),
          SliverToBoxAdapter(
            child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Container(
                    height: 180,
                    color: Colors.green[600],
                  ),
                )
            )
          ),
          SliverToBoxAdapter(
            child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Container(
                    height: 180,
                    color: Colors.green[600],
                  ),
                )
            )
          )
        ],
      ),
    );
  }
}
//       appBar: AppBar(
//         title: const Text('EEWS BMKG'),
//         backgroundColor: Colors.black87,
//       ),
//       body: SafeArea(
//         bottom: true,
//         child: Stack(
//           alignment: Alignment.center,
//           children: [
//             // Outer Circle
//             Container(
//               height: 200,
//               width: 200,
//               margin: EdgeInsets.all(100.0),
//               decoration: BoxDecoration(
//                 color: Color.fromARGB(236, 141, 137, 137),
//                 shape: BoxShape.circle,
//               ),
//             ),
//             // Inner Circle
//             Container(
//               height: 170,
//               width: 170,
//               decoration: BoxDecoration(
//                 color: Colors.black87,
//                 shape: BoxShape.circle,
//               ),
//               child: Center(
//                 child: Column(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     Text(
//                       "0",
//                       style: TextStyle(
//                         color: Colors.yellow,
//                         fontSize: 90.0,
//                         fontWeight: FontWeight.bold,
//                       ),
//                     ),
//                     SizedBox(height: 20),
//                     Padding(padding: EdgeInsets.only(top: 120.0)),
//                     SizedBox(
//                       width: 300.0,
//                       height: 100.0,
//                       child: Card(
//                         color: Colors.grey,
//                         child: Center(
//                           child: Text(
//                             'Testing',
//                             style: TextStyle(color: Colors.white),
//                           ),
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//       backgroundColor: Colors.white24,
//     );
//   }
// }
