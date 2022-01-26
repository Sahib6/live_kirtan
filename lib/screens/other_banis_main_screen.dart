import 'package:flutter/material.dart';
import 'package:live_kirtan/helper/common_widgets.dart';
import 'package:live_kirtan/helper/constants.dart';
import 'package:live_kirtan/helper/screenProvider.dart';
import 'package:provider/provider.dart';
class OtherBanisMainScreen extends StatelessWidget {
  final List<String> otherBanisList = ['Sri Dasam Granth', 'Bhai Gurdas Vaaran', 'Kabit Bhai Gurdaas ji', 'Bani Bhai Nand Lal ji', 'Cancel'];

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<ScreenProvider>(context);

    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      showDialog(
          barrierDismissible: false,
          context: context,
          builder: (context) {
            return CustomDialog(list: otherBanisList,);
          });
    });
    return screens[provider.lastIndex];
  }
}
