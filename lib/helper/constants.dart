import 'dart:core';

import 'package:flutter/cupertino.dart';

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
  "Virtual Tour",
  "Photos"
];
