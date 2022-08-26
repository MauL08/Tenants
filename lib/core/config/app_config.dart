import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class AppConfig {}

// Padding data
const double padding3XS = 1;
const double padding2XS = 2;
const double paddingXS = 4;
const double paddingS = 6;
const double paddingM = 8;
const double paddingL = 12;
const double paddingXL = 18;
const double padding2XL = 24;
const double padding3XL = 28;
const double padding4XL = 32;
const double padding5XL = 36;
const double padding6XL = 64;
const double padding7XL = 72;
const double padding8XL = 92;

const double FONT_SIZE_EXTRA_SMALL = 10.0;
const double FONT_SIZE_SMALL = 12.0;
const double FONT_SIZE_DEFAULT = 14.0;
const double FONT_SIZE_LARGE = 16.0;
const double FONT_SIZE_EXTRA_LARGE = 18.0;
const double FONT_SIZE_OVER_LARGE = 24.0;

const double PADDING_SIZE_EXTRA_SMALL = 5.0;
const double PADDING_SIZE_SMALL = 10.0;
const double PADDING_SIZE_DEFAULT = 15.0;
const double PADDING_SIZE_LARGE = 20.0;
const double PADDING_SIZE_EXTRA_LARGE = 25.0;
EdgeInsetsGeometry defaultPagePadding = EdgeInsets.only(
    left: FONT_SIZE_SMALL,
    right: FONT_SIZE_SMALL,
    top: FONT_SIZE_SMALL,
    bottom: (WidgetsBinding.instance == null)
        ? FONT_SIZE_SMALL
        : (WidgetsBinding.instance.window.padding.bottom == 0)
            ? 92 + FONT_SIZE_SMALL
            : FONT_SIZE_SMALL + WidgetsBinding.instance.window.padding.bottom);

EdgeInsetsGeometry defaultPagePaddingWithoutBottomSafeArea =
    const EdgeInsets.only(
        left: FONT_SIZE_SMALL, right: FONT_SIZE_SMALL, top: FONT_SIZE_SMALL);

//Text data
const rubikRegular = TextStyle(
  fontFamily: 'Rubik',
  fontSize: FONT_SIZE_DEFAULT,
  fontWeight: FontWeight.w400,
);

const rubikMedium = TextStyle(
  fontFamily: 'Rubik',
  fontSize: FONT_SIZE_DEFAULT,
  fontWeight: FontWeight.w500,
);

const rubikBold = TextStyle(
  fontFamily: 'Rubik',
  fontSize: FONT_SIZE_DEFAULT,
  fontWeight: FontWeight.w700,
);

// color resources
const Color COLOR_PRIMARY = Color(0xFF2764C0);
const Color COLOR_GREY = Color(0xFFA0A4A8);
const Color COLOR_BLACK = Color(0xFF000000);
const Color COLOR_NERO = Color(0xFF1F1F1F);
const Color COLOR_WHITE = Color(0xFFFFFFFF);
const Color COLOR_HINT = Color(0xFF52575C);
const Color SEARCH_BG = Color(0xFFF4F7FC);
const Color COLOR_GREY_WHITE = Color(0xFFCACCCF);
const Color COLOR_GRAY = Color(0xff6E6E6E);
const Color COLOR_OXFORD_BLUE = Color(0xff282F39);
const Color COLOR_GAINSBORO = Color(0xffE8E8E8);
const Color COLOR_NIGHER_RIDER = Color(0xff303030);
const Color BACKGROUND_COLOR = Color(0xffF4F7FC);
const Color COLOR_GREY_BUNKER = Color(0xff25282B);
const Color COLOR_GREY_CHATEAU = Color(0xffA0A4A8);
const Color BORDER_COLOR = Color(0xFFDCDCDC);
const Color DISABLE_COLOR = Color(0xFF979797);

const Map<int, Color> colorMap = {
  50: Color(0x10192D6B),
  100: Color(0x20192D6B),
  200: Color(0x30192D6B),
  300: Color(0x40192D6B),
  400: Color(0x50192D6B),
  500: Color(0x60192D6B),
  600: Color(0x70192D6B),
  700: Color(0x80192D6B),
  800: Color(0x90192D6B),
  900: Color(0xff192D6B),
};

TextStyle heading1Style =
    GoogleFonts.montserrat(fontSize: 24, fontWeight: FontWeight.w700);
TextStyle heading2Style =
    GoogleFonts.montserrat(fontSize: 18, fontWeight: FontWeight.w700);
TextStyle heading3Style =
    GoogleFonts.montserrat(fontSize: 16, fontWeight: FontWeight.w700);
TextStyle heading4Style =
    GoogleFonts.montserrat(fontSize: 14, fontWeight: FontWeight.w700);
TextStyle normalTextStyle =
    GoogleFonts.montserrat(fontSize: 14, fontWeight: FontWeight.normal);

TextStyle textPrimaryButtonStyle = GoogleFonts.montserrat(
    fontSize: 14,
    fontWeight: FontWeight.w700,
    color: Get.theme.colorScheme.onPrimary);
TextStyle textSecondaryButtonStyle = GoogleFonts.montserrat(
    fontSize: 14,
    fontWeight: FontWeight.w700,
    color: Get.theme.colorScheme.onSurface);
