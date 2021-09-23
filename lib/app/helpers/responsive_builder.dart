import 'package:flutter/material.dart';
import 'package:south_forest_restaurant/app/common/app_dimens.dart';

class ResponsiveBuilder extends StatelessWidget {
  const ResponsiveBuilder({
    Key? key,
    required this.mobileBody,
    this.tabletBody,
    this.desktopBody,
  }) : super(key: key);

  final Widget mobileBody;
  final Widget? tabletBody;
  final Widget? desktopBody;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, dimens) {
        if (dimens.maxWidth < kTabletWidth) {
          return mobileBody;
        } else if (dimens.maxWidth >= kTabletWidth &&
            dimens.maxWidth < kDesktopWidth) {
          return tabletBody ?? mobileBody;
        } else {
          return desktopBody ?? mobileBody;
        }
      },
    );
  }
}
