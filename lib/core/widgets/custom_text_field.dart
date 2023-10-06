import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({Key? key,@required this.textInputType, this.suffexIcon,@required this.onSave, this.onChanged, this.maxlines}) : super(key: key);
final TextInputType? textInputType;
final Widget? suffexIcon;
final ValueSetter? onSave;
final ValueSetter? onChanged;
final int? maxlines;


  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 30), // Adjust the horizontal padding as needed
      child: TextFormField(
        keyboardType: textInputType,
        onChanged: onChanged,
        onSaved: onSave,
        maxLines: maxlines,

        decoration: InputDecoration(
          filled: true,
          fillColor: Color(0XFFa1a2a1),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: BorderSide(
              color: Color(0xFFCCCCCC),
            ),
          ),
        ),
      ),
    );


  }
}
