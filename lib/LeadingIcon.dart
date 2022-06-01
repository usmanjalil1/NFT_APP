import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class LeadingIcon extends StatelessWidget {
  const LeadingIcon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return VxCircle(
      child: ZStack([
        VxCircle(
          child: FittedBox(
              child: const Icon(
                CupertinoIcons.infinite,
                color: Vx.gray300,
              ).p(8),
              fit: BoxFit.contain),
          backgroundColor: Vx.purple800,
          radius: 33,
          border: Border.all(width: 2, color: Vx.gray300),
        )
      ]).centered(),
      backgroundColor: Vx.purple800,
      radius: 40,
    );
  }
}
