import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'cardFilters.dart';

class CardFilterModal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return IconButton(
        icon: const Icon(Icons.filter_list),
        onPressed: () {
          showDialog(
              context: context,
              builder: (BuildContext dialogContext) => Dialog(
                  child: CardFilter(
                      onClose: () {
                        Navigator.pop(dialogContext);
                      })));
        });
  }
}
