import 'package:flutter/cupertino.dart';

extension AppSizedBox on double {
  addHSpace() {
    return SizedBox(height: this);
  }

  addWSpace() {
    return SizedBox(width: this);
  }
}
