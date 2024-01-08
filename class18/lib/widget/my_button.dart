import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  const MyButton({super.key, this.loading = false, required this.buttonName, required this.onTap, });
  final String buttonName;
  final bool loading;
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell( 
      onTap: onTap,
      child: Container( 
        alignment: Alignment.center,
        height: MediaQuery.sizeOf(context).height / 16,
        width: MediaQuery.sizeOf(context).width,
        decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.circular(15),
        ),
        child: loading
            ? const Center(
                child: CircularProgressIndicator(
                color: Colors.white,
              ))
            : Text(
                buttonName,
                style: Theme.of(context)
                    .textTheme
                    .displayLarge!
                    .copyWith(fontSize: 22),
              ),
      ),
    );
  }
}
