import 'package:flutter/material.dart';
import '../../core/config/app_config.dart';

class ComingSoonWidget extends StatelessWidget {
  const ComingSoonWidget({Key? key, this.child}) : super(key: key);
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: defaultPagePadding,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
              width: double.infinity,
              child: Text(
                "Please Wait..",
                textAlign: TextAlign.center,
                style: heading1Style,
              )),
          const Text(
            "This feature is not released yet 😊",
            textAlign: TextAlign.center,
          )
        ],
      ),
    );
  }
}
