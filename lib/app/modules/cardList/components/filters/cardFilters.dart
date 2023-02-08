import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:paytowin/app/core/theme/colors.dart';
import 'package:paytowin/app/core/utils/ManaCost.dart';
import 'package:paytowin/app/data/model/cardColor.dart';
import 'package:paytowin/app/modules/cardList/controller.dart';

class CardFilter extends StatefulWidget {
  final Function onClose;
  CardListController controller = Get.find();

  CardFilter({required this.onClose});

  @override
  State<StatefulWidget> createState() => _CardFilterState();
}

class _CardFilterState extends State<CardFilter> {
  var colorsFilter = {
    CardColors.W: false,
    CardColors.B: false,
    CardColors.G: false,
    CardColors.R: false,
    CardColors.U: false
  };

  @override
  void initState() {
    var filterColors = this.widget.controller.filters.colors;
    for (var color in filterColors) {
      this.colorsFilter[color] = true;
    }
    super.initState();
  }

  Row getColorCheckbox(CardColors color, String name) {
    return Row(
      children: [
        Checkbox(
            value: colorsFilter[color],
            onChanged: (bool? value) {
              setState(() {
                colorsFilter[color] = value ?? false;
              });
            }),
        ManaCost(manaCost: color.name),
        Container(
          margin: const EdgeInsets.fromLTRB(8, 0, 0, 0),
          child: Text(name),
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(8),
        child: Flex(
          direction: Axis.vertical,
          children: [
            const Text('Filter card',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            Expanded(
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text('Colors',
                    style:
                        TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                this.getColorCheckbox(CardColors.W, 'White'),
                this.getColorCheckbox(CardColors.G, 'Green'),
                this.getColorCheckbox(CardColors.U, 'Blue'),
                this.getColorCheckbox(CardColors.B, 'Black'),
                this.getColorCheckbox(CardColors.R, 'Red'),
              ],
            )),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(AppColors.red)),
                    onPressed: () {
                      this.widget.onClose();
                    },
                    child: const Text('Cancel')),
                Container(
                    margin: const EdgeInsets.fromLTRB(8, 0, 0, 0),
                    child: ElevatedButton(
                        onPressed: () {
                          this.widget.controller.filterColors = this
                              .colorsFilter
                              .entries
                              .where((element) => element.value)
                              .map((e) => e.key)
                              .toList();
                          this.widget.onClose();
                        },
                        child: const Text('Apply'))),
              ],
            )
          ],
        ));
  }
}
