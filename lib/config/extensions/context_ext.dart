import 'package:flutter/material.dart';

extension Media on BuildContext {
  MediaQueryData get media => MediaQuery.of(this);
}
