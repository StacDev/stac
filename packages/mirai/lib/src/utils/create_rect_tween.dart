import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';

CreateRectTween? parseCreateRectTween(Map<String, dynamic> json) {
  final type = json['type'] as String?;

  switch (type) {
    case 'materialRectArcTween':
      return (Rect? begin, Rect? end) =>
          MaterialRectArcTween(begin: begin, end: end);
    case 'materialRectCenterArcTween':
      return (Rect? begin, Rect? end) =>
          MaterialRectCenterArcTween(begin: begin, end: end);
    case 'rectTween':
      return (Rect? begin, Rect? end) => RectTween(begin: begin, end: end);
    default:
      return null;
  }
}
