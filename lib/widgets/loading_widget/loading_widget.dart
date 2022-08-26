import 'package:flutter/material.dart';
import '../../core/config/app_config.dart';

class LoadingWidget extends StatelessWidget {
  const LoadingWidget(
      {Key? key,
      required this.onRefresh,
      required this.isLoading,
      required this.child})
      : super(key: key);
  final Widget child;
  final Future<void> Function() onRefresh;
  final bool isLoading;

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      onRefresh: onRefresh,
      child: (isLoading)
          ? Center(
              child: Column(
                children: const [
                  SizedBox(
                    height: padding8XL,
                  ),
                  SizedBox(
                    height: padding3XL,
                    width: padding3XL,
                    child: CircularProgressIndicator(
                      color: const Color(0xFF01684B),
                    ),
                  ),
                  SizedBox(
                    height: paddingXL,
                  ),
                  Text("Loading..")
                ],
              ),
            )
          : child,
    );
  }
}
