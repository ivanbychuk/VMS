import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HistoryPage extends StatefulWidget {
  const HistoryPage({Key? key}) : super(key: key);

  @override
  State<HistoryPage> createState() => _HistoryPageState();
}

class _HistoryPageState extends State<HistoryPage> {
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
                  'History of completed tasks:',
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
                SingleChildScrollView(
                  child: Column(
                    children: [
                      _taskCreator("Cargo Loading and Unloading"),
                      SizedBox(height: 10.h,),
                      _taskCreator("Fuel Management and Refilling"),
                      SizedBox(height: 10.h,),
                      _taskCreator("Real-Time Traffic Monitoring"),
                      SizedBox(height: 10.h,),
                      _taskCreator("Emergency Response Preparedness"),
                      SizedBox(height: 10.h,),
                      _taskCreator("Client Communication and Coordination"),
                      SizedBox(height: 10.h,),
                      _taskCreator("Vehicle Sanitation and Cleanliness"),
                      SizedBox(height: 10.h,),
                      _taskCreator("Inventory Tracking and Management"),
                      SizedBox(height: 10.h,),
                      _taskCreator("Regulatory Compliance Checks"),
                      SizedBox(height: 10.h,),
                      _taskCreator("Route Reassessment and Adjustment"),
                      SizedBox(height: 10.h,),
                      _taskCreator("End-of-Day Vehicle Securing and Storage"),
                      SizedBox(height: 10.h,),
                      _taskCreator("Vehicle Inspection and Maintenance Check"),
                      SizedBox(height: 10.h,),
                      _taskCreator("Route Planning and Optimization"),
                      SizedBox(height: 10.h,),
                      _taskCreator("Load Verification and Securement"),
                      SizedBox(height: 10.h,),
                      _taskCreator("Timely Deliveries and Customer Interaction"),
                      SizedBox(height: 10.h,),
                      _taskCreator("Documentation and Reporting"),
                    ],
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
