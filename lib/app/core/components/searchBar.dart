import 'package:flutter/material.dart';

class SearchBar extends StatelessWidget{

  final Function onChange;

  SearchBar({required this.onChange});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.all(12),
      child: TextField(
        onChanged: (value) => this.onChange(value),
        decoration:  const InputDecoration(
          border: OutlineInputBorder(),
          hintText: 'Search'
        ),
      ),
    );
  }

}