import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travel_ui_landing_page/gen/assets.gen.dart';
import 'package:travel_ui_landing_page/utils/utils.dart';

class FirstModule extends StatelessWidget {
  const FirstModule({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultPadding(
      child: Padding(
        padding: EdgeInsets.only(bottom: 53.sm),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    'Discover the Best Lovely Places',
                    style: GoogleFonts.sen(
                      fontSize: 86.sp,
                      fontWeight: FontWeight.w700,
                      color: AppsColors.defaultTextColor,
                    ),
                  ),
                  26.verticalSpace,
                  Text(
                    'Plan and book your perfect trip with expert advice, travel tips, destination information and inspiration from us.',
                    style: GoogleFonts.inter(
                      fontSize: 18.sp,
                    ),
                  ),
                  44.verticalSpace,
                  
                ],
              ),
            ),
            67.horizontalSpace,
            Expanded(
              child: Assets.headerImage.image(
                height: 555.sm,
                width: 533.75.sm,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
