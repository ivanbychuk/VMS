import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:location/location.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  bool _isDriverActive = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _isDriverActive ? ActiveTaskView() : InactiveDriverMapView(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            _isDriverActive = !_isDriverActive;
          });
        },
        backgroundColor: Color(0xFF5668FF),
        child: Icon(
          _isDriverActive ? Icons.pause : Icons.play_arrow,
          color: Colors.white,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,
    );
  }
}

class ActiveTaskView extends StatelessWidget {

  Widget _taskCreator(String name) {
    return Container(
      width: 380,
      height: 50,
      decoration: ShapeDecoration(
        color: Color(0xFF5668FF),
        shape: RoundedRectangleBorder(
          side: BorderSide(
            width: 1.50,
            strokeAlign: BorderSide.strokeAlignCenter,
            color: Color(0xFF5668FF),
          ),
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(width: 10.w,),
          Text(
            name,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
              fontSize: 16.sp,
              fontFamily: 'Airbnb Cereal App',
              fontWeight: FontWeight.w400,
              height: 1,
            ),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(top: 100, left: 10, right: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Active tasks:',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 22.sp,
                    fontFamily: 'Airbnb Cereal App',
                    fontWeight: FontWeight.bold,
                    height: 1,
                  ),
                ),
                SizedBox(height: 20.h,),
                _taskCreator("Vehicle Inspection and Maintenance Check"),
                SizedBox(height: 10.h,),
                _taskCreator("Route Planning and Optimization"),
                SizedBox(height: 10.h,),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class InactiveDriverMapView extends StatefulWidget {
  @override
  _InactiveDriverMapViewState createState() => _InactiveDriverMapViewState();
}

class _InactiveDriverMapViewState extends State<InactiveDriverMapView> {
  LatLng currentLocation = LatLng(0, 0);
  GoogleMapController? mapController;
  Location location = new Location();

  @override
  void initState() {
    super.initState();
    _getLocation();
  }

  void _getLocation() async {
    bool _serviceEnabled;
    PermissionStatus _permissionGranted;
    LocationData _locationData;

    _serviceEnabled = await location.serviceEnabled();
    if (!_serviceEnabled) {
      _serviceEnabled = await location.requestService();
      if (!_serviceEnabled) {
        return;
      }
    }

    _permissionGranted = await location.hasPermission();
    if (_permissionGranted == PermissionStatus.denied) {
      _permissionGranted = await location.requestPermission();
      if (_permissionGranted != PermissionStatus.granted) {
        return;
      }
    }

    _locationData = await location.getLocation();
    setState(() {
      currentLocation = LatLng(_locationData.latitude!, _locationData.longitude!);
    });

    mapController?.animateCamera(
      CameraUpdate.newCameraPosition(
        CameraPosition(
          target: LatLng(_locationData.latitude!, _locationData.longitude!),
          zoom: 14.4746,
        ),
      ),
    );
  }

  void _moveToCurrentLocation() async {
    var locData = await location.getLocation();
    mapController?.animateCamera(
      CameraUpdate.newCameraPosition(
        CameraPosition(
          target: LatLng(locData.latitude!, locData.longitude!),
          zoom: 14.4746,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        GoogleMap(
          initialCameraPosition: CameraPosition(
            target: currentLocation,
            zoom: 14.4746,
          ),
          onMapCreated: (GoogleMapController controller) {
            mapController = controller;
          },
          myLocationEnabled: true,
          myLocationButtonEnabled: false,
        ),
        Positioned(
          bottom: 20,
          right: 15,
          child: FloatingActionButton(
            mini: false, // if you want a smaller button
            onPressed: _moveToCurrentLocation,
            materialTapTargetSize: MaterialTapTargetSize.padded,
            backgroundColor: Colors.white,
            child: Icon(Icons.my_location, color: Colors.black),
          ),
        ),
      ],
    );
  }
}

