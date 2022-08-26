import 'package:flutter/material.dart';
import '../../core/config/app_config.dart';

class TextFieldWidget extends StatelessWidget {
  final String? upHint, hint;
  final String? defaultText;
  final bool isLong;
  final Widget? prefixIcon, suffixIcon;
  final Widget? suffixSection, prefixSection;
  final TextInputType inputType;
  final TextEditingController? controller;
  final Function(String)? onChange;
  final bool obscureText;
  final bool enabled;
  const TextFieldWidget(
      {Key? key,
      required this.hint,
      this.upHint,
      this.defaultText = "",
      this.isLong = false,
      this.prefixIcon,
      this.suffixIcon,
      this.suffixSection,
      this.prefixSection,
      this.controller,
      this.onChange,
      this.obscureText = false,
      this.enabled = true,
      required this.inputType})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        (upHint != null)
            ? Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    upHint!,
                    style: heading4Style,
                  ),
                  const SizedBox(
                    height: paddingM,
                  ),
                ],
              )
            : const SizedBox(
                height: 0,
              ),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(paddingXL),
            color: Theme.of(context).colorScheme.onSurface.withOpacity(0.08),
            border: Border.all(
              color: Theme.of(context).colorScheme.onSurface.withOpacity(0.08),
            ),
          ),
          child: Row(
            children: [
              prefixSection != null
                  ? Container(
                      padding: const EdgeInsets.symmetric(horizontal: paddingL),
                      child: prefixSection,
                    )
                  : const SizedBox(),
              Expanded(
                child: Container(
                  padding: const EdgeInsets.only(bottom: 5),
                  decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.surface,
                    borderRadius: suffixSection != null
                        ? const BorderRadius.only(
                            topLeft: Radius.circular(paddingXL),
                            bottomLeft: Radius.circular(paddingXL))
                        : prefixSection != null
                            ? const BorderRadius.only(
                                bottomRight: Radius.circular(paddingXL),
                                topRight: Radius.circular(paddingXL))
                            : BorderRadius.circular(paddingXL),
                  ),
                  child: TextField(
                    textAlignVertical: TextAlignVertical.center,
                    minLines: (isLong) ? 4 : null,
                    maxLines: (isLong) ? null : 1,
                    controller: controller,
                    keyboardType: inputType,
                    onChanged: onChange,
                    style: normalTextStyle,
                    enabled: enabled,
                    obscureText: obscureText,
                    decoration: InputDecoration(
                        prefixIcon: prefixIcon,
                        suffixIcon: suffixIcon,
                        hintText: hint,
                        hintStyle: const TextStyle(fontSize: 14),
                        alignLabelWithHint: true,
                        contentPadding: const EdgeInsets.all(paddingL),
                        border: InputBorder.none),
                  ),
                ),
              ),
              suffixSection != null
                  ? Container(
                      padding: const EdgeInsets.symmetric(horizontal: paddingL),
                      child: suffixSection,
                    )
                  : const SizedBox()
            ],
          ),
        ),
      ],
    );
  }
}
