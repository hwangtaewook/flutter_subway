import 'package:flutter/material.dart';
import 'package:flutter_subway/data/model/subway.dart';

class ListItem extends StatefulWidget {
  final Subway subway;

  const ListItem({super.key, required this.subway});

  @override
  State<ListItem> createState() => _ListItemState();
}

class _ListItemState extends State<ListItem> {
  String _transferStatus(String status) {
    String result = '진입';
    switch (status) {
      case "1":
        result = '도착';
      case "2":
        result = '출발';
      case "3":
        result = '전역 출발';
    }
    return result;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(16, 8, 16, 8),
      child: Column(
        children: [
          Row(
            children: [
              Text(
                widget.subway.line,
                style: const TextStyle(
                  fontSize: 16,
                  color: Colors.black87,
                ),
              ),
              const SizedBox(width: 30),
              Text(
                '${widget.subway.destination}행',
                style: const TextStyle(
                  fontSize: 16,
                  color: Colors.grey,
                ),
              ),
            ],
          ),
          const SizedBox(height: 15),
          Row(
            children: [
              Text(
                widget.subway.stationName,
                style: const TextStyle(
                  fontSize: 24,
                  color: Colors.black87,
                ),
              ),
              const SizedBox(width: 30),
              Text(
                _transferStatus(widget.subway.trainStatus),
                style: const TextStyle(
                  fontSize: 16,
                  color: Colors.redAccent,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
