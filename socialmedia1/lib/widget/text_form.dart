import 'package:flutter/material.dart';
import 'package:socialmedia1/const/app_color.dart';

class TextForm extends StatelessWidget {
  final bool obsecureText;
  final controller;
  final keybordType;
  final validator;
  final onChanged;
  final hint;
  final focusNode;
  final bool suffexIcon;
  final  IconData icon;
  final VoidCallback? iconOnTap;
  const TextForm({
    super.key,
    required this.controller,
    required this.validator,
    required this.onChanged,
    required this.hint,
    required this.focusNode,
    this.obsecureText = false,
    this.keybordType = TextInputType.name,
    this.suffexIcon = false,
    this.icon = Icons.remove_red_eye_outlined, 
    this.iconOnTap,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextFormField(
          focusNode: focusNode,
          obscureText: obsecureText,
          controller: controller,
          keyboardType: keybordType,
          validator: validator,
          onChanged: onChanged,
          decoration: InputDecoration(
            suffixIcon: suffexIcon
                ? InkWell(
                  onTap: iconOnTap,
                  child: Icon(icon, size: 18,),
                  )
                : null,
            hintText: hint,
            hintStyle: Theme.of(context).textTheme.caption,
            contentPadding: const EdgeInsets.only(left: 15),
            border: OutlineInputBorder(
              borderSide: const BorderSide(
                color: AppColors.textFieldDefaultBorderColor,
              ),
              borderRadius: BorderRadius.circular(15),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: const BorderSide(
                color: AppColors.textFieldFocusBorderColor,
              ),
              borderRadius: BorderRadius.circular(15),
            ),
            errorBorder: OutlineInputBorder(
              borderSide: const BorderSide(
                color: AppColors.alertColor,
              ),
              borderRadius: BorderRadius.circular(15),
            ),
          ),
        ),
        SizedBox(
          height: MediaQuery.sizeOf(context).height * 0.01,
        ),
      ],
    );
  }
}
