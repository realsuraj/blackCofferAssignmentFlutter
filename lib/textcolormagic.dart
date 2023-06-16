import 'package:assignment/color.dart';
import 'package:flutter/material.dart';

class ColorChangingTextBox extends StatefulWidget {
  final String text;
  const ColorChangingTextBox({super.key, required this.text});
  @override
  _ColorChangingTextBoxState createState() => _ColorChangingTextBoxState();
}

class _ColorChangingTextBoxState extends State<ColorChangingTextBox> {
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isSelected = !isSelected;
        });
      },
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 6,vertical: 5),
        margin: EdgeInsets.symmetric(horizontal: 6,vertical: 5),
        width: 100,
        height: 40,
        decoration: BoxDecoration(
          color: isSelected ? MyColors().primaryColor : Colors.white,
          border: Border.all(color: MyColors().primaryColor),
          borderRadius: BorderRadius.circular(15)
        ),
        child: Center(
          child: Text(
            widget.text,
            style: TextStyle(
              color: isSelected ? Colors.white : Colors.black,
            ),
          ),
        ),
      ),
    );
  }
}

