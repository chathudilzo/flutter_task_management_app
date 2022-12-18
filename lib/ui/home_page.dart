import 'package:date_picker_timeline/date_picker_timeline.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_task_management_app/sservices/notification_services.dart';
import 'package:flutter_task_management_app/sservices/theme_services.dart';
import 'package:flutter_task_management_app/ui/theme.dart';
import 'package:flutter_task_management_app/ui/widgets/button.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var notifyHelper;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    notifyHelper = NotifyHelper();
    notifyHelper.initializeNotification();
    notifyHelper.requestIOSPermissions();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(),
      body: Column(
        children: [
          _addTaskBar(),
          Container(
            child: DatePicker(
              DateTime.now(),
              width: 80,
              height: 100,
              initialSelectedDate: DateTime.now(),
              selectionColor: primaryColor,
              selectedTextColor: Colors.white,
            ),
          )
        ],
      ),
    );
  }

  _addTaskBar() {
    return Container(
      margin: const EdgeInsets.only(left: 20, right: 20, top: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            // margin: const EdgeInsets.symmetric(
            //     horizontal: 20), //symetric mean same for
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  DateFormat.yMMMMd().format(DateTime.now()),
                  style: subHeaddingStyle,
                ),
                Text(
                  "Today",
                  style: headdingStyle,
                )
              ],
            ),
          ),
          MyButton(label: "+ Add Task", onTap: () => null)
        ],
      ),
    );
  }

  _appBar() {
    return AppBar(
      elevation: 0, //shadow under appbar
      backgroundColor: context.theme.backgroundColor,
      leading: GestureDetector(
        onTap: () {
          ThemeServices().switchTheme();
          notifyHelper.displayNotification(
              title: "Notification theme changed",
              body: Get.isDarkMode
                  ? "Activated Light Theme"
                  : "Activated Dark Theme");

          notifyHelper.scheduledNotification();
        },
        child: Icon(
          Get.isDarkMode ? Icons.wb_sunny_outlined : Icons.nightlight_round,
          size: 20,
          color: Get.isDarkMode ? Colors.white : Colors.black,
        ),
      ),
      actions: const [
        CircleAvatar(
          backgroundImage: AssetImage("images/avatar.png"),
        ),
        SizedBox(
          width: 20,
        )
      ],
    );
  }
}
