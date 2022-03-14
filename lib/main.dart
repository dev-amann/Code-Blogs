import 'package:code_blogs/utils/colors.dart';
import 'package:code_blogs/utils/constants.dart';
import 'package:code_blogs/utils/strings.dart';
import 'package:code_blogs/utils/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'views/tabs/dashboard/dashboard_screen.dart';

void main() {
  runApp(CodeBlogApp(appName: Str.appName));
}

class CodeBlogApp extends StatelessWidget {
  final String appName;

  const CodeBlogApp({Key? key, required this.appName}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle( SystemUiOverlayStyle(
      systemNavigationBarColor: CustomColors.primaryColor,
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.dark,
    ));
    return MaterialApp(
        title: appName, debugShowCheckedModeBanner: Constants.kDebug, theme: lightTheme, home: const DashBoard());
  }
}
