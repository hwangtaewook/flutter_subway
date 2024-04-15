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
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: const Color(0xff333D79),
        ),
        padding: const EdgeInsets.fromLTRB(16, 8, 16, 8),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 3),
          child: Column(
            children: [
              Row(
                children: [
                  Text(
                    widget.subway.line,
                    style: const TextStyle(
                      fontSize: 16,
                      color: Color(0xffFAEBEF),
                    ),
                  ),
                  Spacer(),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 8),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Color(0xffFAEBEF),
                    ),
                    child: Text(
                      '${widget.subway.destination}행',
                      style: const TextStyle(
                        fontSize: 14,
                        color: Color(0xff333D79),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 5),
              Row(
                children: [
                  Text(
                    widget.subway.stationName,
                    style: const TextStyle(
                      fontSize: 24,
                      color: Color(0xffFAEBEF),
                    ),
                  ),
                  Spacer(),
                  Text(
                    _transferStatus(widget.subway.trainStatus),
                    style: const TextStyle(
                      fontSize: 16,
                      color: Colors.redAccent,
                    ),
                  ),
                  SizedBox(
                    width: 8,
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
