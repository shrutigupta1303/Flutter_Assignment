import 'package:flutter/material.dart';

class LocateUSPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text("This is LocateUS page"),
    );
  }
}

// import 'package:flutter/material.dart';
// import 'package:google_maps_flutter/google_maps_flutter.dart';
//
//
// class LocateUSPage extends StatefulWidget {
//   @override
//   _LocateUSPageState createState() => _LocateUSPageState();
// }
//
// class _LocateUSPageState extends State<LocateUSPage> {
//   GoogleMapController myController;
//
//   final LatLng _center = const LatLng(45.521563, -122.677433);
//
//   void _onMapCreated(GoogleMapController controller) {
//     myController = controller;
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text('Flutter Maps Demo'),
//           backgroundColor: Colors.green,
//         ),
//         body: Stack(
//           children: <Widget>[
//             GoogleMap(
//               onMapCreated: _onMapCreated,
//               initialCameraPosition: CameraPosition(
//                 target: _center,
//                 zoom: 10.0,
//               ),
//             ),
//             Padding(
//               padding: const EdgeInsets.all(14.0),
//               child: Align(
//                 alignment: Alignment.topRight,
//                 child: FloatingActionButton(
//                   onPressed: () => print('You have pressed the button'),
//                   materialTapTargetSize: MaterialTapTargetSize.padded,
//                   backgroundColor: Colors.green,
//                   child: const Icon(Icons.map, size: 30.0),
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
//
