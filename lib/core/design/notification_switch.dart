import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shared_preferences/shared_preferences.dart';

class NotificationSwitch  extends StatefulWidget {
  final String title;
  const NotificationSwitch({super.key, required this.title});

  @override
  State<NotificationSwitch> createState() => _NotificationSwitchState();
}

class _NotificationSwitchState extends State<NotificationSwitch> {
  bool isSwitchedFT = false;
  @override
  void initState() {
    super.initState();
    getSwitchValues();
  }
  getSwitchValues() async {
    isSwitchedFT = await getSwitchState();
    setState(() {});
  }
  Future saveSwitchState(bool value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setBool("switchState", value);
    print('Switch Value saved $value');
    return prefs.setBool("switchState", value);
  }
  Future getSwitchState() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    bool? isSwitchedFT = prefs.getBool("switchState");
    print(isSwitchedFT);
    return isSwitchedFT;
  }
  // Future<bool?> _getSwitchState() async {
  //   SharedPreferences prefs = await SharedPreferences.getInstance();
  //   bool? switchState = prefs.getBool('switchState');
  //   return switchState;
  // }
  //
  // Future<void> _saveSwitchState(bool value) async {
  //   SharedPreferences prefs = await SharedPreferences.getInstance();
  //   await prefs.setBool('switchState', value);
  // }
  //
  // bool _isSwitched = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:EdgeInsetsDirectional.only(start: 24,end: 24),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            widget.title,
            style: TextStyle(
              fontSize: 16.sp,
              fontWeight: FontWeight.w400,
            ),
          ),

          Switch(
            value: isSwitchedFT,
            onChanged: (bool value) {
              setState(() {
                isSwitchedFT = value;
                saveSwitchState(value);
                print('Saved state is $isSwitchedFT');
                //switch works
              });
              print(isSwitchedFT);
            },
            // activeTrackColor: Color(0xFF1D1F33),
            // activeColor: Colors.purple[500],
          ),

        ],
      ),
    );
  }
}
