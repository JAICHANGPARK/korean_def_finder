import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';
import 'package:location/location.dart';

import 'src/model/remote_def.dart';
import 'src/remote/remote_api.dart';

final Location location = Location();

void main() {
  runApp(const MyApp());
}

PermissionStatus? _permissionGranted;

Future<PermissionStatus?> checkPermissions() async {
  final PermissionStatus permissionGrantedResult = await location.hasPermission();
  return permissionGrantedResult;
}

Future<void> requestPermission() async {
  if (_permissionGranted != PermissionStatus.granted) {
    final PermissionStatus permissionRequestedResult = await location.requestPermission();
  }
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  StreamSubscription? locationStreamSubscription;
  LocationData? _locationData;

  @override
  void dispose() {
    // TODO: implement dispose
    locationStreamSubscription?.cancel();
    super.dispose();
  }

  MapController _mapController = MapController();
  List<DefItem> remoteItems = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    locationStreamSubscription = location.onLocationChanged.listen((LocationData currentLocation) {
      // Use current location
      setState(() {
        _locationData = currentLocation;
        print("[_locationData] ${_locationData}");
      });
    });

    checkPermissions().then((value) async {
      if (value != PermissionStatus.granted) {
        await requestPermission();
        bool _serviceEnabled = await location.serviceEnabled();
        if (!_serviceEnabled) {
          _serviceEnabled = await location.requestService();
          if (!_serviceEnabled) {
            return;
          }
        }
      }
      _locationData = await location.getLocation();
      print(_locationData);
      _mapController.move(
        LatLng(_locationData?.latitude ?? 37.5360317, _locationData?.longitude ?? 127.06399),
        14,
      );
      setState(() {});
    });
    getRemoteData().then((value) {
      var result = value?.data ?? [];
      if (remoteItems.isNotEmpty) remoteItems.clear();
      remoteItems = result;
      for (var item in remoteItems) {
        if (item.lat != null && item.lang != null) {
          markerItems.add(
            Marker(
                height: 36,
                width: 36,
                point: LatLng(double.parse(item.lat!), double.parse(item.lang!)),
                builder: (ctx) => CircleAvatar(
                      backgroundColor: Colors.purpleAccent,
                      child: Text("${item.stock}",style: TextStyle(
                        fontSize: 10
                      ),),
                    )),
          );
        }
      }
      setState(() {});
    });
  }

  List<Marker> markerItems = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Stack(
          children: <Widget>[
            Positioned(
                child: FlutterMap(
              mapController: _mapController,
              options: MapOptions(
                center: LatLng(
                  _locationData?.latitude ?? 37.5360317,
                  _locationData?.longitude ?? 127.06399,
                ),
                zoom: 14.0,
              ),
              layers: [
                TileLayerOptions(
                  urlTemplate: "https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png",
                  subdomains: ['a', 'b', 'c'],
                  attributionBuilder: (_) {
                    return const Text("© OpenStreetMap contributors");
                  },
                ),
                MarkerLayerOptions(
                  markers: [
                    Marker(
                        width: 18.0,
                        height: 18.0,
                        point: LatLng(
                          _locationData?.latitude ?? 37.5360317,
                          _locationData?.longitude ?? 127.06399,
                        ),
                        builder: (ctx) => const CircleAvatar(
                              radius: 8,
                              backgroundColor: Colors.blueAccent,
                            )),
                    ...markerItems
                  ],
                ),
              ],
            ))
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
