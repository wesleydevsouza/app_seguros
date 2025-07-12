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
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Text(
            Strings.social,
            style: AppTheme.labelText,
          ),
          SizedBox(height: SizeConfig.heightMultiplier * 2),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12.0),
                child: SvgPicture.asset(
                  Images.icoGoogle,
                  height: SizeConfig.heightMultiplier * 3,
                  color: AppTheme.corContainer,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12.0),
                child: SvgPicture.asset(
                  Images.icoFb,
                  height: SizeConfig.heightMultiplier * 3,
                  color: AppTheme.corContainer,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12.0),
                child: SvgPicture.asset(
                  Images.icoTwitter,
                  height: SizeConfig.heightMultiplier * 3,
                  color: AppTheme.corContainer,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
