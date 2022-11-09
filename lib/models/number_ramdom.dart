// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

class NumberRandomModel extends Equatable {
  final Color color;
  final int number;
  final Offset offset;
  final bool isCircle;
  const NumberRandomModel({
    required this.color,
    required this.number,
    required this.offset,
    required this.isCircle,
  });

  @override
  List<Object?> get props => [color, number, offset, isCircle];
}
