import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MobileAppBar extends StatelessWidget {
  const MobileAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70.h,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(flex: 2, child: Text('Hello Bangladesh')),
          Expanded(flex: 1, child: InkWell(
              child: Icon(Icons.menu),
            onTap: ()=> Navbar(),

          )),
        ],
      ),
    );
  }
}



class Navbar extends StatelessWidget {
  const Navbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 100,
      color: Colors.deepOrange,
      child: Column(
        children: [
          Text('Home'),
          Text('Home'),
          Text('Home'),
          Text('Home'),

        ],
      ),
    );
  }
}
