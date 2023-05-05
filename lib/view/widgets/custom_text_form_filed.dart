import 'package:flutter/material.dart';

class TextForm extends StatelessWidget {
   final Function()? oncha;
  final String? Function(String?)? valid;
  final String? hint, imagePath, labelText;
  final bool isPassword;
  final IconData? suffix;
  final IconData? prefix;
  final TextEditingController? controller;
  final TextInputType type;
  final Function()? onPress;

  const TextForm({
    Key? key,
    this.isPassword = false,
    this.hint,
    this.labelText,
    this.controller,
    this.suffix,
    this.prefix,
    required this.type,
    this.onPress,
    this.valid,
    this.imagePath, this.oncha,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          color: const Color(0x249e9d9d),
          borderRadius: BorderRadius.circular(12),
        ),
        child: TextFormField(

          keyboardType: TextInputType.emailAddress,
          obscureText: isPassword,
          validator: valid,
          decoration: InputDecoration(
            border: InputBorder.none,
            focusedBorder: InputBorder.none,
            enabledBorder: InputBorder.none,
            errorBorder: InputBorder.none,
            disabledBorder: InputBorder.none,
            contentPadding: const EdgeInsets.all(10),
            suffixIcon: suffix != null
                ? IconButton(
                    onPressed: onPress,
                    icon: Icon(
                      suffix,
                      color: Colors.grey,
                    ))
                : null,
            labelStyle: const TextStyle(color: Colors.grey, fontSize: 15),
            label: Text(
              labelText!,
            ),
            hintText: hint,
            hintStyle: const TextStyle(color: Color(0xffAFAFAF), fontSize: 15),
            prefixIcon: Container(
              padding: const EdgeInsetsDirectional.only(
                  start: 18, end: 11, top: 10, bottom: 10),
              child: Image.asset(
                imagePath!,
                height: 5,
                width: 5,
              ),
            ),
          ),
        ));
  }
}
