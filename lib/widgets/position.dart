import 'package:flutter/cupertino.dart';

class Position extends StatefulWidget {
  String position;
  String abbr;

  Position({
    required this.position,
    required this.abbr,
  });

  @override
  State<Position> createState() => _PositionState();
}

class _PositionState extends State<Position> {
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.position,
          style: TextStyle(
            fontSize: 24,
            color: CupertinoColors.black,
            fontWeight: FontWeight.w600,
          ),
        ),
        Text(
          widget.abbr,
          style: TextStyle(
            fontSize: 14,
            color: CupertinoColors.black,
            fontWeight: FontWeight.w600,
          ),
        ),
      ],
    );
  }
}