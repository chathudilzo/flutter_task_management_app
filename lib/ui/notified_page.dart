import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

class NotifiedPage extends StatelessWidget {
  final String? label;
  const NotifiedPage({super.key, required this.label});

  @override
  Widget build(BuildContext context) {
    print(this.label.toString().split("|")[0]);
    return Scaffold(
      appBar: AppBar(
        elevation: null,
        backgroundColor:
            Get.isDarkMode ? Colors.grey[600] : Color.fromARGB(255, 63, 58, 58),
        leading: IconButton(
          onPressed: () => Get.back(),
          icon: Icon(
            Icons.arrow_back_ios,
            color: Get.isDarkMode ? Colors.white : Colors.grey,
          ),
        ),
        title: Center(
          child: Text(
            this.label.toString().split("|")[0],
            style: TextStyle(color: Colors.black),
          ),
        ),
      ),
      body: Center(
        child: Container(
          height: 400,
          width: 300,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20), color: Colors.amber),
          child: Center(
            child: Container(
              padding: const EdgeInsets.all(10),
              child: Text(this.label.toString().split("|")[1],
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w300,
                      fontSize: 30)),
            ),
          ),
        ),
      ),
    );
  }
}
