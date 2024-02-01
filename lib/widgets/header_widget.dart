import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travel_ui_landing_page/utils/utils.dart';
import 'package:travel_ui_landing_page/widgets/widgets.dart';

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultPadding(
      vertical: 24.sm,
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          const SaltyLogo(),
          72.horizontalSpace,
          // Navigation
          Row(
            children: navigation
                .map<Widget>(
                  (String items) => Padding(
                    padding: EdgeInsets.only(right: 36.sm),
                    child: Text(
                      items,
                      style: GoogleFonts.poppins(
                        fontSize: 16.sp,
                        color: AppsColors.navigationTextColor,
                      ),
                    ),
                  ),
                )
                .toList(),
          ),
          
          
        ],
      ),
    );
  }
}
