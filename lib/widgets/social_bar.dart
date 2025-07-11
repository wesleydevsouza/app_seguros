import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../constants/images.dart';
import '../constants/size_config.dart';
import '../constants/strings.dart';
import '../constants/styling.dart';

class SocialBar extends StatelessWidget {
  const SocialBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          Strings.social,
          style: AppTheme.labelText,
        ),
        SizedBox(height: SizeConfig.heightMultiplier * 2),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              Images.icoGoogle,
              height: SizeConfig.heightMultiplier * 3,
              color: AppTheme.corContainer,
            ),
            SizedBox(width: SizeConfig.widthMultiplier * 5),
            SvgPicture.asset(
              Images.icoFb,
              height: SizeConfig.heightMultiplier * 3,
              color: AppTheme.corContainer,
            ),
            SizedBox(width: SizeConfig.widthMultiplier * 5),
            SvgPicture.asset(
              Images.icoTwitter,
              height: SizeConfig.heightMultiplier * 3,
              color: AppTheme.corContainer,
            ),
            SizedBox(width: SizeConfig.widthMultiplier * 5),
          ],
        ),
      ],
    );
  }
}
