import 'dart:core';

import 'package:flutter/cupertino.dart';
import 'package:live_kirtan/screens/gurbani_screens/gurbani_main_screen.dart';
import 'package:live_kirtan/screens/hukamnama_screen.dart';
import 'package:live_kirtan/screens/live_kirtan_screen.dart';
import 'package:live_kirtan/screens/other_banis_main_screen.dart';
import 'package:live_kirtan/screens/sri_guru_granth_sahib_ji_main_screen.dart';

// Height : 844.0
// Width : 390.0

double getHeight(BuildContext context) {
  return MediaQuery.of(context).size.height;
}

double getWidth(BuildContext context) {
  return MediaQuery.of(context).size.width;
}

List<String> navDrawerItems = [
  "Live Kirtan",
  "Gurbani",
  "Sri Guru Granth Sahib Ji",
  "Hukumnama",
  "Sangrand",
  "Other Banis",
  "Katha(Manji Sahib)",
  "Dictionary",
  "Dukh Niwaran Sahib",
  "Gurbani Search",
  "Downloads",
  "Favorites",
  "Kirtan Duties",
  "Jantri",
];

List screens = [
  LiveKirtanScreen(),
  GurbaniMainScreen(),
  SriGuruGranthSahibJiMainScreen(),
  HukamnamaScreen(),
  HukamnamaScreen(),
  OtherBanisMainScreen(),
  LiveKirtanScreen(),
  LiveKirtanScreen(),
  LiveKirtanScreen(),
  LiveKirtanScreen(),
  LiveKirtanScreen(),
  LiveKirtanScreen(),
  LiveKirtanScreen(),
  LiveKirtanScreen(),
];

List<String> gurbanis = [
  'Japji Sahib',
  'Jaap Sahib',
  'Tav Prasad Savayiye',
  'Chaupayi Sahib',
  'Anand Sahib',
  'Asa Di Vaar',
  'Sukhmani Sahib',
  'Rehras Sahib',
  'Sohaila',
  'Ardaas'
];
