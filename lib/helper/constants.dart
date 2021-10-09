import 'dart:core';

import 'package:flutter/cupertino.dart';
import 'package:live_kirtan/helper/navigation_drawer.dart';
import 'package:provider/provider.dart';

import 'my_provider.dart';
import 'nav_drawer_items.dart';

double getHeight(BuildContext context) {
  return MediaQuery.of(context).size.height;
}

double getWidth(BuildContext context) {
  return MediaQuery.of(context).size.width;
}




List<String> _list = ["Live Kirtan", "Gurbani", "Sri Guru Granth Sahib Ji", "Hukumnama", "Sangrand", "Other Banis", "Katha(Manji Sahib)", "Dictionary", "Dukh Niwaran Sahib", "Gurbani Search", "Downloads", "Favorites", "Kirtan Duties", "Jantri", "Virtual Tour", "Photos"];

List<Function> methods = [(){}, (){}, (){}, (){}, (){}, (){}, (){}, (){}, (){} ,(){}, (){}, (){} ,(){} ,(){}, (){}, (){}];
List<NavDrawerItem> getInitialList(BuildContext context)
{
  List<NavDrawerItem> navDrawerItems = [];
  int i = 0;
  _list.forEach((element) {
    navDrawerItems.add(NavDrawerItem(element, methods[i], Provider.of<MyProviders>(context, listen: false).getIsSelected("Live Kirtan", element)));
    i++;
  });

  return navDrawerItems;
}
