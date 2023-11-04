 import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:lumia/app_const/color_consts.dart';
import 'package:lumia/app_const/constants.dart';
 
import 'package:velocity_x/velocity_x.dart';
 
import 'package:permission_handler/permission_handler.dart';
import'package:flutter_blue/flutter_blue.dart';




 class Bluetooth extends StatefulWidget {
  const Bluetooth({super.key});

  @override
  State<Bluetooth> createState() => _BluetoothState();
}

class _BluetoothState extends State<Bluetooth> {
 bool scanPressed = false;
   FlutterBlue _flutterBlue = FlutterBlue.instance;
  BluetoothDevice? _selectedDevice;
  BluetoothCharacteristic? _characteristic;
  Stream<List<int>> _listStream = Stream.empty();
  StreamSubscription<List<int>>? _streamSubscription;
  List<BluetoothDevice> _discoveredDevices = [];

  @override
  void initState() {
    super.initState();
    _initBluetooth();
    _checkPermissionsAndStartScanning();
  }

  Future<void> _checkPermissionsAndStartScanning() async {
    final status = await Permission.location.status;
    if (status.isGranted) {
      // Location permission granted, you can start scanning here
      _scanForDevices();
    } else {
      // Request location permission
      final result = await Permission.location.request();
      if (result.isGranted) {
        // Location permission granted, you can start scanning here
        _scanForDevices();
      } else {
        // Handle permission denied
        print('Location permission denied');
      }
    }
  }

  void _initBluetooth() {
    _flutterBlue.state.listen((state) {
      if (state == BluetoothState.on) {
        _scanForDevices();
      }
    });
  }

  void _scanForDevices() {
    _flutterBlue.scan(timeout: Duration(seconds: 4)).listen((scanResult) {
      print("Found device: ${scanResult.device.name}");
      setState(() {
        _discoveredDevices.add(scanResult.device);
      });
    }).onDone(() {
      // Scanning is done, you can handle this event if needed
    });
  }

  void _stopScanning() {
    _flutterBlue.stopScan();
  }

  void _connectToDevice(BluetoothDevice device) async {
    if (device != null) {
      await device.connect();
      _discoverServices(device);
    }
  }

  void _discoverServices(BluetoothDevice device) async {
    if (device != null) {
      List<BluetoothService> services = await device.discoverServices();

      services.forEach((service) {
        service.characteristics.forEach((characteristic) {
          setState(() {
            _characteristic = characteristic;
          });

          _streamSubscription = _characteristic?.value.listen((data) {
            _interpretReceivedData(utf8.decode(data));
          });
        });
      });
    }
  }

  void _interpretReceivedData(String data) {
    print("Received data: $data");
  }

  void _sendData(String dataString) async {
    List<int> data = utf8.encode(dataString);

    if (_selectedDevice != null && _characteristic != null) {
      await _characteristic?.write(data);
    }
  }

  @override
  void dispose() {
    _streamSubscription?.cancel();
    super.dispose();
  }


 
  
   

  Future<void> onRefresh() async {
    await Future.delayed(Duration(seconds: 2));
    setState(() {
      scanPressed = true;
      
    });
  }

 
  
    

  @override
  Widget build(BuildContext context) {
    var height = context.screenHeight * 0.03;
    return SafeArea(
      child: 
      Scaffold(
        extendBody: true, // This will hide the bottom navigation bar
        backgroundColor: primaryColor2,
        appBar: AppBar(
          leading: GestureDetector(
            onTap: () {
              Navigator.of(context).pop(); // Navigate back when the image is tapped
            },
            child: Image.asset(ic_back),
          ),
          backgroundColor: Colors.transparent,
          centerTitle: true,
          title: Text("Available Bluetooth"), // Display titleStr in the title
        ),
        body: 
        RefreshIndicator(
          onRefresh: onRefresh,
          child: Container(
            width: double.infinity,
            child: Column(
              children: [
                SizedBox(),
                Visibility(
                  visible: scanPressed,
                  child: Column(
                    children: [
                      Container(
                        height: context.screenHeight * 0.6,
                        margin: EdgeInsets.symmetric(
                            horizontal: context.screenWidth * 0.07),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(7.5),
                          color: BluetoothScreenColor,
                        ),
                        child: Column(
                          children: [
                            Expanded(
                              child: SingleChildScrollView(
                                child: Column(
                                  children: [
                                    Column(
                                      children: [
                                        ListTile(
                                          leading: Container(
                                            width: 45,
                                            height: 48,
                                            decoration: BoxDecoration(
                                              color: Colors.black,
                                              shape: BoxShape.circle,
                                            ),
                                            child: Center(
                                              child: Image.asset(ic_bluetoothBtn),
                                            ),
                                          ),
                                          title: "".text.size(1).white.make(), // Display titleStr
                                          subtitle: "".text.size(1).white.make(), // Display subtitleStr
                                          trailing: ElevatedButton(
                                            onPressed:(){} ,
                                            child: "Connect".text.make(),
                                            style: ElevatedButton.styleFrom(
                                              primary: primaryColor,
                                              shape: RoundedRectangleBorder(
                                                borderRadius: BorderRadius.circular(18.0),
                                              ),
                                            ),
                                          ),
                                        ),
                                        const Divider(
                                          indent: 20,
                                          endIndent: 20,
                                          thickness: 1,
                                          color: DividerColor,
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      // height.heightBox,
                      Padding(
                        padding: const EdgeInsets.only(bottom: 30.0),
                        child: Container(
                          width: context.screenWidth * 0.4, // 30% of the screen width
                          child: ElevatedButton(
                            onPressed: () {
                              // Add your button's onPressed action here
                            },
                            child: Center(child: "Add Device".text.white.make()),
                            style: ElevatedButton.styleFrom(
                              primary: Colors.orange,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Spacer(),
                Padding(
                  padding: const EdgeInsets.only(bottom: 30.0),
                  child: Container(
                    width: context.screenWidth * 0.4,
                    child: ElevatedButton(
                      onPressed: onRefresh,
                      child: Center(child: "Scan".text.white.make()),
                      style: ElevatedButton.styleFrom(
                        primary: Colors.orange,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
