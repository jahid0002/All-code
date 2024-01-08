import 'package:chatapps/const/color.dart';
import 'package:flutter/material.dart';


class RoundButton extends StatelessWidget {
  final String name;
  final double height, width, radias;
  final VoidCallback onTap;
  final bool loading;
  final Color color;
  final Color textColor;

  const RoundButton({
    super.key,
    required this.name,
    this.height = 60,
    this.width = double.infinity,
    required this.onTap,
    this.loading = false,
    this.radias = 15,
    this.color = AppColors.primaryButtonColor,
    this.textColor = AppColors.whiteColor,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: loading ? null : onTap,
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(radias),
          color: color,
        ),
        child: loading
            ? const Center(
                child: CircularProgressIndicator(color: AppColors.whiteColor),
              )
            : Center(
                child: Text(
                  name,
                  style: Theme.of(context)
                      .textTheme
                      .titleMedium!
                      .copyWith(color: textColor),
                ),
              ),
      ),
    );
  }
}
