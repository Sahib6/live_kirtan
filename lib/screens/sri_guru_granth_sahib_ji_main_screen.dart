import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:live_kirtan/helper/common_widgets.dart';
import 'package:live_kirtan/helper/constants.dart';
import 'package:live_kirtan/helper/screenProvider.dart';
import 'package:provider/provider.dart';

class SriGuruGranthSahibJiMainScreen extends StatelessWidget {
  SriGuruGranthSahibJiMainScreen({Key key}) : super(key: key);

  final List<String> pothhis = [
    'Read in Gurmukhi',
    'Read in Gurmukhi(Vertical)',
    'Gurmukhi & Translation',
    'With Audio',
    'Darpan by Prof Sahib Singh',
    'Cancel'
  ];
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<ScreenProvider>(context);

    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      showDialog(
          barrierDismissible: false,
          context: context,
          builder: (context) {
            return CustomDialog(list: pothhis,);
          });
    });
    return screens[provider.lastIndex];
  }
}

