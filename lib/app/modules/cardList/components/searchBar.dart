import 'package:flutter/material.dart';

class SearchBar extends StatelessWidget{
  final Function onChange;

  const SearchBar({required this.onChange});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
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