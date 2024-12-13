import 'package:flutter/material.dart';
import 'package:tvapp/pages/loadingpage.dart';

//AdmobCode
// import 'package:google_mobile_ads/google_mobile_ads.dart';
//AdmobCode

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  //AdmobCode
  // MobileAds.instance.initialize();
  //AdmobCode

  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "MobiKora TV",
    home: LoadingPage(),
  ));
}
