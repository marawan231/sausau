import 'package:flutter/material.dart';
import '../../../../core/widgets/text_field_container.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({Key? key, required this.text, required this.onPressed})
      : super(key: key);
  final String text;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: ElevatedButton(
        style: Theme.of(context).elevatedButtonTheme.style,
        onPressed: onPressed,
        child: Text(text, style: Theme.of(context).textTheme.bodyMedium),
      ),
    );
  }
}
