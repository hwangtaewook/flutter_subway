import 'package:flutter/material.dart';
import 'package:flutter_subway/data/data_source/subway_api.dart';
import 'package:flutter_subway/data/repository/subway_repository.dart';
import 'package:flutter_subway/data/repository/subway_repository_impl.dart';
import 'package:flutter_subway/presentation/viewmodel/search_list_viewmodel.dart';
import 'package:provider/provider.dart';

import 'presentation/screen/search_list_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: ChangeNotifierProvider(
        create: (_) {
          return SearchListVieModel(
            subwayRepository: SubwayRepositoryImpl(api: SubwayApi()),
          );
        },
        child: const SearchListScreen(),
      ),
    );
  }
}
