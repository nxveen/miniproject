import 'package:qr_code_scanner/qr_code_scanner.dart';
import 'package:flutter/material.dart';
import 'dart:developer';
import 'dart:io';
import 'package:miniproject/facil.dart';
import 'package:flutter/foundation.dart';

class QRViewExample extends StatefulWidget {
  const QRViewExample({Key? key}) : super(key: key);
  @override
  State<StatefulWidget> createState() => _QRViewExampleState();
}

class _QRViewExampleState extends State<QRViewExample> {
  Barcode? result=null;
  QRViewController? controller;
  final GlobalKey qrKey = GlobalKey(debugLabel: 'QR');
  @override
  void reassemble() {
    super.reassemble();
    if (Platform.isAndroid) {
      controller!.pauseCamera();
    }
    controller!.resumeCamera();
  }

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Column(
        children: <Widget>[
          Expanded(flex: 4, child: _buildQrView(context)),
          Expanded(
            flex: 1,
            child: FittedBox(
              fit: BoxFit.contain,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  if (result != null)
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Facility(text: result)),
                        );
                      },
                      child: Text(
                        'Continue',
                        style: TextStyle(
                          fontSize: h * (0.12 / 5.0),
                          fontWeight: FontWeight.bold,
                          letterSpacing: h * (0.1 / 60.0),
                          color: Colors.blueAccent,
                          fontFamily: 'Poppins',
                        ),
                      ),
                    )
                  else
                    TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Facility(text: result)),
                          );
                        },
                        child: Text(
                          'Scan a code',
                          style: TextStyle(
                            fontSize: h * (0.12 / 5.0),
                            fontWeight: FontWeight.bold,
                            letterSpacing: h * (0.1 / 60.0),
                            color: Colors.blueAccent,
                            fontFamily: 'Poppins',
                          ),
                        )),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        color: const Color.fromRGBO(77, 0, 237, 1),
                        margin: const EdgeInsets.all(8),
                        child: ElevatedButton(
                            onPressed: () async {
                              await controller?.toggleFlash();
                              setState(() {});
                            },
                            child: FutureBuilder(
                              future: controller?.getFlashStatus(),
                              builder: (context, snapshot) {
                                return Text('Flash: ${snapshot.data}',
                                    style: TextStyle(
                                      fontSize: h * (0.12 / 5.0),
                                      fontWeight: FontWeight.bold,
                                      letterSpacing: h * (0.1 / 60.0),
                                      color: Colors.white,
                                      fontFamily: 'Poppins',
                                    ));
                              },
                            )),
                      ),
                      Container(
                        color: const Color.fromRGBO(77, 0, 237, 1),
                        margin: const EdgeInsets.all(8),
                        child: ElevatedButton(
                            onPressed: () async {
                              await controller?.flipCamera();
                              setState(() {});
                            },
                            child: FutureBuilder(
                              future: controller?.getCameraInfo(),
                              builder: (context, snapshot) {
                                if (snapshot.data != null) {
                                  return Text(
                                      'Camera facing ${describeEnum(snapshot.data!)}',
                                      style: TextStyle(
                                        fontSize: h * (0.12 / 5.0),
                                        fontWeight: FontWeight.bold,
                                        letterSpacing: h * (0.1 / 60.0),
                                        color: Colors.white,
                                        fontFamily: 'Poppins',
                                      ));
                                } else {
                                  return const Text('loading');
                                }
                              },
                            )),
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        color: const Color.fromRGBO(77, 0, 237, 1),
                        margin: const EdgeInsets.all(8),
                        child: ElevatedButton(
                          onPressed: () async {
                            await controller?.pauseCamera();
                          },
                          child: Text('Pause',
                              style: TextStyle(
                                fontSize: h * (0.12 / 5.0),
                                fontWeight: FontWeight.bold,
                                letterSpacing: h * (0.1 / 60.0),
                                color: Colors.white,
                                fontFamily: 'Poppins',
                              )),
                        ),
                      ),
                      Container(
                        color: const Color.fromRGBO(77, 0, 237, 1),
                        margin: const EdgeInsets.all(8),
                        child: ElevatedButton(
                            onPressed: () async {
                              await controller?.resumeCamera();
                            },
                            child: Text(
                              'Resume',
                              style: TextStyle(
                                fontSize: h * (0.12 / 5.0),
                                fontWeight: FontWeight.bold,
                                letterSpacing: h * (0.1 / 60.0),
                                color: Colors.white,
                                fontFamily: 'Poppins',
                              ),
                            )),
                      )
                    ],
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget _buildQrView(BuildContext context) {
    // For this example we check how width or tall the device is and change the scanArea and overlay accordingly.
    var scanArea = (MediaQuery.of(context).size.width < 400 ||
            MediaQuery.of(context).size.height < 400)
        ? 150.0
        : 300.0;
    // To ensure the Scanner view is properly sizes after rotation
    // we need to listen for Flutter SizeChanged notification and update controller
    return QRView(
      key: qrKey,
      onQRViewCreated: _onQRViewCreated,
      overlay: QrScannerOverlayShape(
          borderColor: Colors.red,
          borderRadius: 10,
          borderLength: 30,
          borderWidth: 10,
          cutOutSize: scanArea),
      onPermissionSet: (ctrl, p) => _onPermissionSet(context, ctrl, p),
    );
  }

  void _onQRViewCreated(QRViewController controller) {
    setState(() {
      this.controller = controller;
    });
    controller.scannedDataStream.listen((scanData) {
      setState(() {
        result = scanData;
      });
    });
  }

  void _onPermissionSet(BuildContext context, QRViewController ctrl, bool p) {
    log('${DateTime.now().toIso8601String()}_onPermissionSet $p');
    if (!p) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('no Permission')),
      );
    }
  }

  @override
  void dispose() {
    controller?.dispose();
    super.dispose();
  }
}
