import 'package:flutter/material.dart';
import 'package:flutter_task_management_app/db/db_helper.dart';
import 'package:flutter_task_management_app/sservices/theme_services.dart';
import 'package:flutter_task_management_app/ui/home_page.dart';
import 'package:flutter_task_management_app/ui/theme.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

Future<void> main() async {
  WidgetsFlutterBinding
      .ensureInitialized(); //runAPP WILL NOT begin untill await done
  await DbHelper.initDb();
  await GetStorage.init(); //initialization of get storage
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: Themes.light,
      darkTheme: Themes.dark,
      themeMode: ThemeServices().theme,
      home: const HomePage(),
    );
  }
}
