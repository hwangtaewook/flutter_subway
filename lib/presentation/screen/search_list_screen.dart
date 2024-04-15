import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_subway/presentation/viewmodel/search_list_viewmodel.dart';
import 'package:provider/provider.dart';

class SearchListScreen extends StatefulWidget {
  const SearchListScreen({super.key});

  @override
  State<SearchListScreen> createState() => _SearchListScreenState();
}

class _SearchListScreenState extends State<SearchListScreen> {
  final _queryTextEditingController = TextEditingController();

  @override
  void dispose() {
    _queryTextEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final viewModel = context.watch<SearchListVieModel>();

    return Scaffold(
      appBar: AppBar(
        title: Text('지하철 검색'),
      ),
      body: Column(
        children: [
          TextField(
            onSubmitted: (value) {
              final query = _queryTextEditingController.text;
              viewModel.onSearch(query);
            },
            controller: _queryTextEditingController,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: '예) 1호선',
              suffixIcon: IconButton(
                onPressed: () {
                  final query = _queryTextEditingController.text;
                  viewModel.onSearch(query);
                },
                icon: Icon(Icons.search),
              ),
            ),
          ),
          Expanded(
            child: ListView(
              children: viewModel.subways.map((e) => Text(e.line)).toList(),
            ),
          )
        ],
      ),
    );
  }
}