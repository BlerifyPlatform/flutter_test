import 'dart:ui';

import 'package:Test/widgets/Modal.dart';
import 'package:flutter/material.dart';


class InputDialog {



  static Future<void> showBottomSheet(BuildContext context) async {
    return showModalBottomSheet(
        context: context,
        isScrollControlled: true,
        clipBehavior: Clip.antiAlias,
        builder: (context) {
          return FractionallySizedBox(
            heightFactor: 1.0,
            child: Modal()
          );
        });
  }

}