import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../core/config/app_config.dart';

class ButtonWidget extends StatelessWidget {
  final String text;
  final Function() onTap;
  final Color? backgroundColor;
  final TextStyle? buttonTextStyle;
  final bool isFull;
  final Icon? icon;
  final bool isSmall;

  final bool splitColor;
  final bool isLoading;

  const ButtonWidget(
      {Key? key,
      required this.text,
      required this.onTap,
      this.backgroundColor,
      this.buttonTextStyle,
      this.isFull = false,
      this.icon,
      this.isSmall = false,
      this.isLoading = false,
      this.splitColor = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
      padding: const EdgeInsets.all(0),
      onPressed: (isLoading) ? null : onTap,
      child: Container(
        width: (isFull) ? double.infinity : null,
        padding: EdgeInsets.symmetric(
            vertical: (isSmall) ? paddingS : paddingL,
            horizontal: (isSmall) ? paddingL : paddingXL),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(paddingM),
          border: (splitColor)
              ? Border.all(
                  color: ((backgroundColor == null)
                      ? Theme.of(context).colorScheme.primary
                      : backgroundColor)!)
              : null,
          color: (splitColor)
              ? Colors.transparent
              : (backgroundColor == null)
                  ? Theme.of(context).colorScheme.primary
                  : backgroundColor,
        ),
        child: (isLoading)
            ? Center(
                child: SizedBox(
                    height: paddingXL,
                    width: paddingXL,
                    child: CircularProgressIndicator(
                        strokeWidth: padding2XS * 1.5,
                        color: splitColor ? backgroundColor : Colors.white)))
            : (icon != null)
                ? icon
                : Text(
                    text,
                    textAlign: TextAlign.center,
                    style: (buttonTextStyle == null)
                        ? textPrimaryButtonStyle.copyWith(
                            color: splitColor ? backgroundColor : null)
                        : buttonTextStyle,
                  ),
      ),
    );
  }
}
