import 'package:bloc/bloc.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart' as concurrency;
import 'package:flutter/material.dart';
import 'package:todo_list/core/app/app.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Bloc.transformer = concurrency.sequential();
  runApp(const App());
}
