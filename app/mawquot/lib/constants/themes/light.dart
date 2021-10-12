import 'package:flutter/material.dart';

class LightTheme {
  static final ThemeData configs = ThemeData(
    brightness: Brightness.light,
    primaryColor: const Color( 0xff4caf50 ),
    primaryColorBrightness: Brightness.dark,
    primaryColorLight: const Color( 0xffc8e6c9 ),
    primaryColorDark: const Color( 0xff388e3c ),
    canvasColor: const Color( 0xfffafafa ),
    scaffoldBackgroundColor: const Color( 0xfffafafa ),
    bottomAppBarColor: const Color( 0xffffffff ),
    cardColor: const Color( 0xffffffff ),
    dividerColor: const Color( 0x1f000000 ),
    highlightColor: const Color( 0x66bcbcbc ),
    splashColor: const Color( 0x66c8c8c8 ),
    selectedRowColor: const Color( 0xfff5f5f5 ),
    unselectedWidgetColor: const Color( 0x8a000000 ),
    disabledColor: const Color( 0x61000000 ),
    toggleableActiveColor: const Color( 0xff43a047 ),
    secondaryHeaderColor: const Color( 0xffe8f5e9 ),
    backgroundColor: const Color( 0xffa5d6a7 ),
    dialogBackgroundColor: const Color( 0xffffffff ),
    indicatorColor: const Color( 0xff4caf50 ),
    hintColor: const Color( 0x8a000000 ),
    errorColor: const Color( 0xffd32f2f ),
    buttonTheme: const ButtonThemeData(
      textTheme: ButtonTextTheme.normal,
      minWidth: 88,
      height: 36,
      padding: EdgeInsets.only(top:0,bottom:0,left:16, right:16),
      shape: RoundedRectangleBorder(
        side: BorderSide(color: Color( 0xff000000 ), width: 0, style: BorderStyle.none, ),
        borderRadius: BorderRadius.all(Radius.circular(2.0)),
      ),
      alignedDropdown: false ,
      buttonColor: Color( 0xffe0e0e0 ),
      disabledColor: Color( 0x61000000 ),
      highlightColor: Color( 0x29000000 ),
      splashColor: Color( 0x1f000000 ),
      focusColor: Color( 0x1f000000 ),
      hoverColor: Color( 0x0a000000 ),
      colorScheme: ColorScheme(
        primary: Color( 0xff4caf50 ),
        primaryVariant: Color( 0xff388e3c ),
        secondary: Color( 0xff4caf50 ),
        secondaryVariant: Color( 0xff388e3c ),
        surface: Color( 0xffffffff ),
        background: Color( 0xffa5d6a7 ),
        error: Color( 0xffd32f2f ),
        onPrimary: Color( 0xffffffff ),
        onSecondary: Color( 0xffffffff ),
        onSurface: Color( 0xff000000 ),
        onBackground: Color( 0xffffffff ),
        onError: Color( 0xffffffff ),
        brightness: Brightness.light,
      ),
    ),
    textTheme: const TextTheme(
      headline1: TextStyle(
        color: Color( 0xdd000000 ),
        fontSize: 96,
        fontWeight: FontWeight.w300,
        letterSpacing: -1.5,
        fontStyle: FontStyle.normal,
      ),
      headline2: TextStyle(
        color: Color( 0xdd000000 ),
        fontSize: 60,
        fontWeight: FontWeight.w300,
        letterSpacing: -0.5,
        fontStyle: FontStyle.normal,
      ),
      headline3: TextStyle(
        color: Color( 0xdd000000 ),
        fontSize: 48,
        fontWeight: FontWeight.w400,
        fontStyle: FontStyle.normal,
      ),
      headline4: TextStyle(
        color: Color( 0xdd000000 ),
        fontSize: 34,
        fontWeight: FontWeight.w400,
        letterSpacing: 0.25,
        fontStyle: FontStyle.normal,
      ),
      headline5: TextStyle(
        color: Color( 0xdd000000 ),
        fontSize: 24,
        fontWeight: FontWeight.w400,
        fontStyle: FontStyle.normal,
      ),
      headline6: TextStyle(
        color: Color( 0xdd000000 ),
        fontSize: 20,
        fontWeight: FontWeight.w500,
        letterSpacing: 0.15,
        fontStyle: FontStyle.normal,
      ),
      subtitle1: TextStyle(
        color: Color( 0xff000000 ),
        fontSize: 16,
        fontWeight: FontWeight.w400,
        letterSpacing: 0.15,
        fontStyle: FontStyle.normal,
      ),
      subtitle2: TextStyle(
        color: Color( 0xff000000 ),
        fontSize: 14,
        fontWeight: FontWeight.w500,
        letterSpacing: 0.1,
        fontStyle: FontStyle.normal,
      ),
      bodyText1: TextStyle(
        color: Color( 0xdd000000 ),
        fontSize: 16,
        fontWeight: FontWeight.w400,
        letterSpacing: 0.5,
        fontStyle: FontStyle.normal,
      ),
      bodyText2: TextStyle(
        color: Color( 0xdd000000 ),
        fontSize: 14,
        fontWeight: FontWeight.w400,
        letterSpacing: 0.25,
        fontStyle: FontStyle.normal,
      ),
      caption: TextStyle(
        color: Color( 0x8a000000 ),
        fontSize: 12,
        fontWeight: FontWeight.w400,
        letterSpacing: 0.4,
        fontStyle: FontStyle.normal,
      ),
      button: TextStyle(
        color: Color( 0xdd000000 ),
        fontSize: 14,
        fontWeight: FontWeight.w500,
        letterSpacing: 1.25,
        fontStyle: FontStyle.normal,
      ),
      overline: TextStyle(
        color: Color( 0xff000000 ),
        fontSize: 10,
        fontWeight: FontWeight.w400,
        letterSpacing: 1.5,
        fontStyle: FontStyle.normal,
      ),      
    ),
    primaryTextTheme: const TextTheme(
      headline1: TextStyle(
        color: Color( 0xffffffff ),
        fontSize: 96,
        fontWeight: FontWeight.w300,
        letterSpacing: -1.5,
        fontStyle: FontStyle.normal,
      ),
      headline2: TextStyle(
        color: Color( 0xffffffff ),
        fontSize: 60,
        fontWeight: FontWeight.w300,
        letterSpacing: -0.5,
        fontStyle: FontStyle.normal,
      ),
      headline3: TextStyle(
        color: Color( 0xffffffff ),
        fontSize: 48,
        fontWeight: FontWeight.w400,
        fontStyle: FontStyle.normal,
      ),
      headline4: TextStyle(
        color: Color( 0xffffffff ),
        fontSize: 34,
        fontWeight: FontWeight.w400,
        letterSpacing: 0.25,
        fontStyle: FontStyle.normal,
      ),
      headline5: TextStyle(
        color: Color( 0xffffffff ),
        fontSize: 24,
        fontWeight: FontWeight.w400,
        fontStyle: FontStyle.normal,
      ),
      headline6: TextStyle(
        color: Color( 0xffffffff ),
        fontSize: 20,
        fontWeight: FontWeight.w500,
        letterSpacing: 0.15,
        fontStyle: FontStyle.normal,
      ),
      subtitle1: TextStyle(
        color: Color( 0xffffffff ),
        fontSize: 16,
        fontWeight: FontWeight.w400,
        letterSpacing: 0.15,
        fontStyle: FontStyle.normal,
      ),
      subtitle2: TextStyle(
        color: Color( 0xffffffff ),
        fontSize: 14,
        fontWeight: FontWeight.w500,
        letterSpacing: 0.1,
        fontStyle: FontStyle.normal,
      ),
      bodyText1: TextStyle(
        color: Color( 0xffffffff ),
        fontSize: 16,
        fontWeight: FontWeight.w400,
        letterSpacing: 0.5,
        fontStyle: FontStyle.normal,
      ),
      bodyText2: TextStyle(
        color: Color( 0xffffffff ),
        fontSize: 14,
        fontWeight: FontWeight.w400,
        letterSpacing: 0.25,
        fontStyle: FontStyle.normal,
      ),
      caption: TextStyle(
        color: Color( 0xb3ffffff ),
        fontSize: 12,
        fontWeight: FontWeight.w400,
        letterSpacing: 0.4,
        fontStyle: FontStyle.normal,
      ),
      button: TextStyle(
        color: Color( 0xffffffff ),
        fontSize: 14,
        fontWeight: FontWeight.w500,
        letterSpacing: 1.25,
        fontStyle: FontStyle.normal,
      ),
      overline: TextStyle(
        color: Color( 0xffffffff ),
        fontSize: 10,
        fontWeight: FontWeight.w400,
        letterSpacing: 1.5,
        fontStyle: FontStyle.normal,
      ),
    ),
    inputDecorationTheme: const InputDecorationTheme(
      labelStyle: TextStyle(
        color: Color( 0xdd000000 ),
        fontSize: null,
        fontWeight: FontWeight.w400,
        fontStyle: FontStyle.normal,
      ),
      helperStyle: TextStyle(
        color: Color( 0xdd000000 ),
        fontSize: null,
        fontWeight: FontWeight.w400,
        fontStyle: FontStyle.normal,
      ),
      hintStyle: TextStyle(
        color: Color( 0xdd000000 ),
        fontSize: null,
        fontWeight: FontWeight.w400,
        fontStyle: FontStyle.normal,
      ),
      errorStyle: TextStyle(
        color: Color( 0xdd000000 ),
        fontSize: null,
        fontWeight: FontWeight.w400,
        fontStyle: FontStyle.normal,
      ),
      errorMaxLines: null,
      isDense: false,
      contentPadding: EdgeInsets.only(top:12,bottom:12,left:0, right:0),
      isCollapsed : false,
      prefixStyle: TextStyle(
        color: Color( 0xdd000000 ),
        fontSize: null,
        fontWeight: FontWeight.w400,
        fontStyle: FontStyle.normal,
      ),
      suffixStyle: TextStyle(
        color: Color( 0xdd000000 ),
        fontSize: null,
        fontWeight: FontWeight.w400,
        fontStyle: FontStyle.normal,
      ),
      counterStyle: TextStyle(
        color: Color( 0xdd000000 ),
        fontSize: null,
        fontWeight: FontWeight.w400,
        fontStyle: FontStyle.normal,
      ),
      filled: false,
      fillColor: Color( 0x00000000 ), floatingLabelBehavior: FloatingLabelBehavior.auto,
      errorBorder: UnderlineInputBorder(
        borderSide: BorderSide(color: Color( 0xff000000 ), width: 1, style: BorderStyle.solid, ),
        borderRadius: BorderRadius.all(Radius.circular(4.0)),
      ),
      focusedBorder: UnderlineInputBorder(
        borderSide: BorderSide(color: Color( 0xff000000 ), width: 1, style: BorderStyle.solid, ),
        borderRadius: BorderRadius.all(Radius.circular(4.0)),
      ),
      focusedErrorBorder: UnderlineInputBorder(
        borderSide: BorderSide(color: Color( 0xff000000 ), width: 1, style: BorderStyle.solid, ),
        borderRadius: BorderRadius.all(Radius.circular(4.0)),
      ),
      disabledBorder: UnderlineInputBorder(
        borderSide: BorderSide(color: Color( 0xff000000 ), width: 1, style: BorderStyle.solid, ),
        borderRadius: BorderRadius.all(Radius.circular(4.0)),
      ),
      enabledBorder: UnderlineInputBorder(
        borderSide: BorderSide(color: Color( 0xff000000 ), width: 1, style: BorderStyle.solid, ),
        borderRadius: BorderRadius.all(Radius.circular(4.0)),
      ),
      border: UnderlineInputBorder(
        borderSide: BorderSide(color: Color( 0xff000000 ), width: 1, style: BorderStyle.solid, ),
        borderRadius: BorderRadius.all(Radius.circular(4.0)),
      ),
    ),
    iconTheme: const IconThemeData(
      color: Color( 0xdd000000 ),
      opacity: 1,
      size: 24,
    ),
    primaryIconTheme: const IconThemeData(
      color: Color( 0xffffffff ),
      opacity: 1,
      size: 12,
    ),
    sliderTheme: const SliderThemeData(
      activeTrackColor: null,
      inactiveTrackColor: null,
      disabledActiveTrackColor: null,
      disabledInactiveTrackColor: null,
      activeTickMarkColor: null,
      inactiveTickMarkColor: null,
      disabledActiveTickMarkColor: null,
      disabledInactiveTickMarkColor: null,
      thumbColor: null,
      disabledThumbColor: null,
      thumbShape: null,
      overlayColor: null,
      valueIndicatorColor: null,
      valueIndicatorShape: null,
      showValueIndicator: null,
      valueIndicatorTextStyle: TextStyle(
        color: Color( 0xffffffff ),
        fontSize: null,
        fontWeight: FontWeight.w400,
        fontStyle: FontStyle.normal,
      ),
    ),
    tabBarTheme: const TabBarTheme(
      indicatorSize: TabBarIndicatorSize.tab,
      labelColor: Color( 0xffffffff ),
      unselectedLabelColor: Color( 0xb2ffffff ),
    ),
    chipTheme: const ChipThemeData(
      backgroundColor: Color( 0x1f000000 ),
      brightness: Brightness.light,
      deleteIconColor: Color( 0xde000000 ),
      disabledColor: Color( 0x0c000000 ),
      labelPadding: EdgeInsets.only(top:0,bottom:0,left:8, right:8),
      labelStyle: TextStyle(
        color: Color( 0xde000000 ),
        fontSize: null,
        fontWeight: FontWeight.w400,
        fontStyle: FontStyle.normal,
      ),
      padding: EdgeInsets.only(top:4,bottom:4,left:4, right:4),
      secondaryLabelStyle: TextStyle(
        color: Color( 0x3d000000 ),
        fontSize: null,
        fontWeight: FontWeight.w400,
        fontStyle: FontStyle.normal,
      ),
      secondarySelectedColor: Color( 0x3d4caf50 ),
      selectedColor: Color( 0x3d000000 ),
      shape: StadiumBorder( side: BorderSide(color: Color( 0xff000000 ), width: 0, style: BorderStyle.none, ) ),
    ),
    dialogTheme: const DialogTheme(
      shape: RoundedRectangleBorder(
        side: BorderSide(color: Color( 0xff000000 ), width: 0, style: BorderStyle.none, ),
        borderRadius: BorderRadius.all(Radius.circular(0.0)),
      )
    ), 
    colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.green).copyWith(secondary: const Color( 0xff4caf50 )), textSelectionTheme: const TextSelectionThemeData(cursorColor: Color( 0xff4caf50 ), selectionColor: Color( 0xffa5d6a7 ), selectionHandleColor: Color( 0xff81c784 ),),
  );
}