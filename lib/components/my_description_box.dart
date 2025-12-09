import 'package:flutter/material.dart';

class MyDescriptionBox extends StatelessWidget {
  const MyDescriptionBox({super.key});

  @override
  Widget build(BuildContext context) {
    // textstyle
    var myPrimaryTextStyle = TextStyle(
      color: Theme.of(context).colorScheme.inversePrimary,
    );
    var mySecondaryTextStyle = TextStyle(
      color: Theme.of(context).colorScheme.primary,
    );

    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Theme.of(context).colorScheme.secondary),
      ),
      padding: EdgeInsets.all(25),
      margin: EdgeInsets.only(left: 25, right: 25, bottom: 25),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // de;overy fee
          Column(
            children: [
              Text("\$2.99", style: myPrimaryTextStyle),
              Text("Felivery fee", style: mySecondaryTextStyle),
            ],
          ),

          // delivery time
          Column(
            children: [
              Text("30-40 min", style: myPrimaryTextStyle),
              Text("Delivery time", style: mySecondaryTextStyle),
            ],
          ),
        ],
      ),
    );
  }
}
