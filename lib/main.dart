import 'dart:async';

import 'package:apitest/counter_bloc_observer.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter/widgets.dart';

void main() {
  BlocOverrides.runZoned(
    () => runApp(const CounterApp()),
    blocObserver: CounterObserver(),
  );
}
