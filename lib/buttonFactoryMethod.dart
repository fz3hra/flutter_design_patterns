import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

abstract class ButtonFactoryMethod {
  Widget build(VoidCallback onpressed, Widget child);

  factory ButtonFactoryMethod(TargetPlatform platform) {
    switch (platform) {
      case TargetPlatform.android:
        return AndroidActionButton();
      case TargetPlatform.iOS:
        return IosActionButton();
      default:
        return AndroidActionButton();
    }
  }
}

class AndroidActionButton implements ButtonFactoryMethod {
  @override
  Widget build(VoidCallback onpressed, Widget child) {
    return ElevatedButton(onPressed: onpressed, child: child);
  }
}

class IosActionButton implements ButtonFactoryMethod {
  @override
  Widget build(VoidCallback onpressed, Widget child) {
    return CupertinoButton(onPressed: onpressed, child: child);
  }
}
