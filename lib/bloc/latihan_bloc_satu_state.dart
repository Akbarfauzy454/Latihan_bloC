import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart' show immutable;

@immutable
class LatihanBlocSatuState extends Equatable {
  final int index;
  final String text;

  const LatihanBlocSatuState.empty()
      : index = 0,
        text = 'Initial Text';

  const LatihanBlocSatuState({
    required this.index,
    required this.text,
  });

  @override
  List<Object> get props => [index, text];
}
