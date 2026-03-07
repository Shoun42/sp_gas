import 'package:flutter/material.dart';

class CommonTextFormField extends StatelessWidget {
const CommonTextFormField({
super.key,
required this.primaryColor,
this.fieldColor, required this.text, required this.icons, this.maxLines,
});

final Color primaryColor;
final Color ?fieldColor;
final String text;
final Icon icons;
final int? maxLines;

@override
Widget build(BuildContext context) {
return TextField(
maxLines: maxLines,
decoration: InputDecoration(
hintText: text,
prefixIcon:
icons,
filled: true,
fillColor: fieldColor,
contentPadding:
const EdgeInsets.symmetric(vertical: 18),
enabledBorder: OutlineInputBorder(
borderRadius: BorderRadius.circular(15),
borderSide:
BorderSide(color: primaryColor),
),
focusedBorder: OutlineInputBorder(
borderRadius: BorderRadius.circular(15),
borderSide:
BorderSide(color: primaryColor, width: 1.5),
),
),
);
}
}