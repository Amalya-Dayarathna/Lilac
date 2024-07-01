import 'package:flutter/material.dart';
import 'package:lilac_shopping/screens/Home/Widget/home_app_bar.dart';
import 'package:lilac_shopping/screens/Home/Widget/search_bar.dart';

class LilacHomePage extends StatefulWidget {
  const LilacHomePage({super.key});

  @override
  State<LilacHomePage> createState() => _LilacHomePageState();
}

class _LilacHomePageState extends State<LilacHomePage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
            padding: EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 35),

                //Custom app bar widget is called
                CustomAppBar(),

                SizedBox(height: 20),

                //Search bar is called
                MySearchBar(),
              ],
            )),
      ),
    );
  }
}
