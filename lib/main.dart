import 'dart:async';

import 'package:coolicons/coolicons.dart';
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
      title: '요소수',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: ''),
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
  List<Marker> markerItems = [];

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
                builder: (ctx) => GestureDetector(
                      onTap: () {
                        print("MarkerTap");
                        _mapController.move(
                          LatLng(double.parse(item.lat!), double.parse(item.lang!)),
                          12,
                        );
                        setState(() {});
                      },
                      child: CircleAvatar(
                        backgroundColor: Colors.purpleAccent,
                        child: Text(
                          "${item.stock}",
                          style: const TextStyle(fontSize: 10),
                        ),
                      ),
                    )),
          );
        }
      }
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: <Widget>[
            Positioned(
                left: 0,
                right: 0,
                bottom: 0,
                top: 0,
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
                )),
            Positioned(
                left: 16,
                bottom: 16,
                right: 0,
                child: remoteItems.isNotEmpty
                    ? SizedBox(
                        height: 200,
                        child: ListView.builder(
                            itemCount: remoteItems.length,
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (context, index) {
                              var item = remoteItems[index];
                              return SizedBox(
                                width: 360,
                                child: Card(
                                  elevation: 4,
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          children: [
                                            Container(
                                              decoration: BoxDecoration(
                                                border: Border.all(color: Colors.black),
                                                borderRadius: BorderRadius.circular(4),
                                              ),
                                              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
                                              child: Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  const Text(
                                                    "입고량",
                                                    style: TextStyle(fontSize: 12),
                                                  ),
                                                  Text(
                                                    "${item.input}",
                                                    style: const TextStyle(fontSize: 16),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            const SizedBox(
                                              width: 16,
                                            ),
                                            Container(
                                              decoration: BoxDecoration(
                                                border: Border.all(color: Colors.black),
                                                borderRadius: BorderRadius.circular(4),
                                              ),
                                              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
                                              child: Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  const Text(
                                                    "재고량",
                                                    style: TextStyle(fontSize: 12),
                                                  ),
                                                  Text(
                                                    "${item.input}",
                                                    style: const TextStyle(fontSize: 16),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            const Spacer(),
                                            IconButton(
                                                onPressed: () {},
                                                icon: const Icon(
                                                  Coolicons.share_outline,
                                                ))
                                          ],
                                        ),

                                        Padding(
                                          padding: const EdgeInsets.symmetric(vertical: 4),
                                          child: Text("${item.name}"),
                                        ),
                                        Text("${item.address}"),
                                        Text("${item.phone}"),
                                        Text("${item.date}"),
                                      ],
                                    ),
                                  ),
                                ),
                              );
                            }),
                      )
                    : const SizedBox.shrink()),
            Positioned(
              right: 16,
              top: 16,
              child: FloatingActionButton(
                heroTag: "my_location",
                backgroundColor: Colors.white,
                foregroundColor: Colors.black,
                onPressed: () {
                  _mapController.move(
                    LatLng(_locationData?.latitude ?? 37.5360317, _locationData?.longitude ?? 127.06399),
                    12,
                  );
                  setState(() {});
                },
                tooltip: 'Location',
                child: const Icon(Icons.flutter_dash),
              ),
            ),
            Positioned(
                top: 16,
                left: 16,
                child: FloatingActionButton.extended(
                  tooltip: "setting",
                  backgroundColor: Colors.white,
                  foregroundColor: Colors.black,
                  onPressed: () {},
                  label: const Text("설정"),
                  icon: const Icon(Coolicons.settings_future),
                ))
          ],
        ),
      ),
    );
  }
}
