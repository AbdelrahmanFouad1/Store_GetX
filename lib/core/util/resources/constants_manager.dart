import 'package:flutter/cupertino.dart';
import 'package:store_getx/core/models/select_government_model.dart';

class ConstantsManger {
  static const int splashDelay = 3;
  static const int sliderDelay = 3;
  static const int cartButtonDelay = 5;
  static const int sliderDelayAnimation = 2;
  static const int sliderAnimationTime = 300;
  static const bool isEnglish = true;
  static String token = '';
  static String profilePicTag = 'MyPic';
  static String markId = 'selectedLocation';

  static const String serverFailureMessage = 'Server Failure';
  static const String cacheFailureMessage = 'Cache Failure';

  static const String jsonrpc = '2.0';
  static const String db = 'combotech';
}



customFromJson(val) {
  if (val.runtimeType == bool) {
    return null;
  } else {
    return val;
  }
}

void navigateToWidget(context, widget) => Navigator.push(
  context,
  CupertinoPageRoute(
    builder: (context) => widget,
  ),
);

void navigateAndFinishFromWidget(context, widget) => Navigator.pushAndRemoveUntil(
    context,
    CupertinoPageRoute(
      builder: (context) => widget,
    ),
        (Route<dynamic> route) => false);


// TranslationModel appTranslation(context) =>
//     AppCubit
//         .get(context)
//         .translationModel;

// String displayTranslatedText({
//   required BuildContext context,
//   required String ar,
//   required String en,
// }) =>
//     AppBloc
//         .get(context)
//         .isArabic ? ar : en;




enum TOAST { success, error, info, warning }



void debugPrintFullText(String text) {
  final pattern = RegExp('.{1,800}'); // 800 is the size of each chunk
  pattern.allMatches(text).forEach((match) => debugPrint(match.group(0)));
}

double responsiveValue(BuildContext context, double value) =>
    MediaQuery
        .of(context)
        .size
        .width * (value / 375.0);

space2Vertical(BuildContext context) =>
    SizedBox(
      height: responsiveValue(context, 2.0),
    );

space3Vertical(BuildContext context) =>
    SizedBox(
      height: responsiveValue(context, 3.0),
    );

space4Vertical(BuildContext context) =>
    SizedBox(
      height: responsiveValue(context, 4.0),
    );

space5Vertical(BuildContext context) =>
    SizedBox(
      height: responsiveValue(context, 5.0),
    );

space8Vertical(BuildContext context) =>
    SizedBox(
      height: responsiveValue(context, 8.0),
    );

space10Vertical(BuildContext context) =>
    SizedBox(
      height: responsiveValue(context, 10.0),
    );

space16Vertical(BuildContext context) =>
    SizedBox(
      height: responsiveValue(context, 16.0),
    );

space20Vertical(BuildContext context) =>
    SizedBox(
      height: responsiveValue(context, 20.0),
    );

space30Vertical(BuildContext context) =>
    SizedBox(
      height: responsiveValue(context, 30.0),
    );

space40Vertical(BuildContext context) =>
    SizedBox(
      height: responsiveValue(context, 40.0),
    );

space50Vertical(BuildContext context) =>
    SizedBox(
      height: responsiveValue(context, 50.0),
    );

space60Vertical(BuildContext context) =>
    SizedBox(
      height: responsiveValue(context, 60.0),
    );

space70Vertical(BuildContext context) =>
    SizedBox(
      height: responsiveValue(context, 70.0),
    );

space80Vertical(BuildContext context) =>
    SizedBox(
      height: responsiveValue(context, 80.0),
    );

space90Vertical(BuildContext context) =>
    SizedBox(
      height: responsiveValue(context, 90.0),
    );

space100Vertical(BuildContext context) =>
    SizedBox(
      height: responsiveValue(context, 100.0),
    );

space3Horizontal(BuildContext context) =>
    SizedBox(
      width: responsiveValue(context, 3.0),
    );

space4Horizontal(BuildContext context) =>
    SizedBox(
      width: responsiveValue(context, 4.0),
    );

space5Horizontal(BuildContext context) =>
    SizedBox(
      width: responsiveValue(context, 5.0),
    );

space8Horizontal(BuildContext context) =>
    SizedBox(
      width: responsiveValue(context, 8.0),
    );

space10Horizontal(BuildContext context) =>
    SizedBox(
      width: responsiveValue(context, 10.0),
    );

space12Horizontal(BuildContext context) =>
    SizedBox(
      width: responsiveValue(context, 12.0),
    );

space14Horizontal(BuildContext context) =>
    SizedBox(
      width: responsiveValue(context, 14.0),
    );

space15Horizontal(BuildContext context) =>
    SizedBox(
      width: responsiveValue(context, 15.0),
    );

space16Horizontal(BuildContext context) =>
    SizedBox(
      width: responsiveValue(context, 16.0),
    );

space20Horizontal(BuildContext context) =>
    SizedBox(
      width: responsiveValue(context, 20.0),
    );

space30Horizontal(BuildContext context) =>
    SizedBox(
      width: responsiveValue(context, 30.0),
    );

space40Horizontal(BuildContext context) =>
    SizedBox(
      width: responsiveValue(context, 40.0),
    );

space50Horizontal(BuildContext context) =>
    SizedBox(
      width: responsiveValue(context, 50.0),
    );

space60Horizontal(BuildContext context) =>
    SizedBox(
      width: responsiveValue(context, 60.0),
    );

space70Horizontal(BuildContext context) =>
    SizedBox(
      width: responsiveValue(context, 70.0),
    );

space80Horizontal(BuildContext context) =>
    SizedBox(
      width: responsiveValue(context, 80.0),
    );

space90Horizontal(BuildContext context) =>
    SizedBox(
      width: responsiveValue(context, 90.0),
    );

space100Horizontal(BuildContext context) =>
    SizedBox(
      width: responsiveValue(context, 100.0),
    );


final List<SelectGovernmentModel> cities = [
  SelectGovernmentModel(
      titleEn: 'Choose',
      titleAr: 'اختر',
      selectCityType: 0
  ),

  SelectGovernmentModel(
      titleEn: 'Cairo',
      titleAr: 'القاهرة',
      selectCityType: 1
  ),

  SelectGovernmentModel(
      titleEn: 'Damietta',
      titleAr: 'دمياط',
      selectCityType: 2
  ),

  SelectGovernmentModel(
      titleEn: 'Dakahlia',
      titleAr: 'الدقهلية',
      selectCityType: 3
  ),

  SelectGovernmentModel(
      titleEn: 'Sharqia',
      titleAr: 'الشرقية',
      selectCityType: 4
  ),

  SelectGovernmentModel(
      titleEn: 'Qalyubia',
      titleAr: 'القليوبية',
      selectCityType: 5
  ),

  SelectGovernmentModel(
      titleEn: 'Kafr El-Sheikh',
      titleAr: 'كفر الشيخ',
      selectCityType: 6
  ),

  SelectGovernmentModel(
      titleEn: 'Gharbiyah',
      titleAr: 'الغربية',
      selectCityType: 7
  ),

  SelectGovernmentModel(
      titleEn: 'Menoufia',
      titleAr: 'المنوفية',
      selectCityType: 8
  ),

  SelectGovernmentModel(
      titleEn: 'Behira',
      titleAr: 'البحيرة',
      selectCityType: 9
  ),

  SelectGovernmentModel(
      titleEn: 'Ismailia',
      titleAr: 'الإسماعيلية',
      selectCityType: 10
  ),

  SelectGovernmentModel(
      titleEn: 'Alexandria',
      titleAr: 'الإسكندرية',
      selectCityType: 11
  ),

  SelectGovernmentModel(
      titleEn: 'Giza',
      titleAr: 'الجيزة',
      selectCityType: 12
  ),

  SelectGovernmentModel(
      titleEn: 'Bani Sweif',
      titleAr: 'بني سويف',
      selectCityType: 13
  ),

  SelectGovernmentModel(
      titleEn: 'Fayoum',
      titleAr: 'الفيوم',
      selectCityType: 14
  ),

  SelectGovernmentModel(
      titleEn: 'Minya',
      titleAr: 'المنيا',
      selectCityType: 15
  ),

  SelectGovernmentModel(
      titleEn: 'Asyut',
      titleAr: 'أسيوط',
      selectCityType: 16
  ),

  SelectGovernmentModel(
      titleEn: 'Sohag',
      titleAr: 'سوهاج',
      selectCityType: 17
  ),

  SelectGovernmentModel(
      titleEn: 'qana',
      titleAr: 'قنا',
      selectCityType: 18
  ),

  SelectGovernmentModel(
      titleEn: 'Aswan',
      titleAr: 'أسوان',
      selectCityType: 19
  ),

  SelectGovernmentModel(
      titleEn: 'Luxor',
      titleAr: 'الأقصر',
      selectCityType: 20
  ),

  SelectGovernmentModel(
      titleEn: 'Port Said',
      titleAr: 'بورسعيد',
      selectCityType: 21
  ),

  SelectGovernmentModel(
      titleEn: 'Red Sea',
      titleAr: 'البحر الأحمر',
      selectCityType: 22
  ),

  SelectGovernmentModel(
      titleEn: 'New Valley',
      titleAr: 'الوادي الجديد',
      selectCityType: 23
  ),

  SelectGovernmentModel(
      titleEn: 'Matruh',
      titleAr: 'مطروح',
      selectCityType: 24
  ),

  SelectGovernmentModel(
      titleEn: 'North Sinai',
      titleAr: 'شمال سيناء',
      selectCityType: 25
  ),

  SelectGovernmentModel(
      titleEn: 'South of Sinai',
      titleAr: 'جنوب سيناء',
      selectCityType: 26
  ),

  SelectGovernmentModel(
      titleEn: 'Suez',
      titleAr: 'السويس',
      selectCityType: 27
  ),


  SelectGovernmentModel(
      titleEn: 'Helwan',
      titleAr: 'حلوان',
      selectCityType: 28
  ),


  SelectGovernmentModel(
      titleEn: '6 October',
      titleAr: '6 اكتوبر',
      selectCityType: 29
  ),


  SelectGovernmentModel(
      titleEn: 'outside the republic',
      titleAr: 'خارج الجمهورية',
      selectCityType: 30
  ),

];
