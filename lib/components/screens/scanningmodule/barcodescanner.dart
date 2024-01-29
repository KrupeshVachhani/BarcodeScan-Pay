// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';

// class RandomScan extends StatefulWidget {
//   const RandomScan({Key? key}) : super(key: key);

//   @override
//   State<RandomScan> createState() => _RandomState();
// }

// class _RandomState extends State<RandomScan> {
//   String _scanBarcode = ''; // Declare _scanBarcode variable

//   Future<void> scanBarcodeNormal() async {
//     String barcodeScanRes;
//     try {
//       barcodeScanRes = await FlutterBarcodeScanner.scanBarcode(
//         '#ff6666',
//         'Cancel',
//         true,
//         ScanMode.BARCODE,
//       );
//       debugPrint(barcodeScanRes);
//     } on PlatformException {
//       barcodeScanRes = 'Error:';
//     }
//     if (!mounted) return;

//     setState(() {
//       _scanBarcode = barcodeScanRes;
//     });
//   }

//   @override
//   Widget build(BuildContext context) => Scaffold(
//         appBar: AppBar(
//           title: const Text('Scan Barcode'),
//         ),
//         body: Builder(
//           builder: (context) => Container(
//             alignment: Alignment.center,
//             child: Flex(
//               direction: Axis.vertical,
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 ElevatedButton(
//                   onPressed: scanBarcodeNormal,
//                   child: const Text('Start Barcode Scan'),
//                 ),
//                 Text(
//                   'Scan result : $_scanBarcode\n',
//                   style: TextStyle(fontSize: 20),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       );
// }
