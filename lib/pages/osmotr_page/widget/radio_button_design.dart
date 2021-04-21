import 'package:flutter/material.dart';
import 'package:property_valuation/constants/colors/colorStyle.dart';
import 'package:property_valuation/constants/textStyle/textStyle.dart';

class RadioButtonDesign extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 30.0,
      shadowColor: ColorStyles.blue_color.withOpacity(0.1),
      child: Container(
        padding: EdgeInsets.fromLTRB(15, 16.5, 15, 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Состояние",
              style: TextStyles.black_14_w500,
            ),
            RadioGroup(),
          ],
        ),
        decoration: BoxDecoration(
          color: Colors.white,
        ),
      ),
    );
  }
}

class RadioGroup extends StatefulWidget {
  @override
  RadioGroupWidget createState() => RadioGroupWidget();
}

class RadioGroupWidget extends State {
  // Default Radio Button Selected Item When App Starts.
  String radioButtonItem = 'ONE';

  // Group Value for Radio Button.
  int id = 1;

  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Radio(
              value: 1,
              materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
              groupValue: id,
              onChanged: (val) {
                setState(() {
                  radioButtonItem = 'ONE';
                  id = 1;
                });
              },
            ),
            Text(
              '1',
              style: new TextStyle(fontSize: 14.0),
            ),
            SizedBox(
              width: 20,
            ),
            Radio(
              materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
              value: 2,
              groupValue: id,
              onChanged: (val) {
                setState(() {
                  radioButtonItem = 'TWO';
                  id = 2;
                });
              },
            ),
            Text(
              '2',
              style: new TextStyle(
                fontSize: 14.0,
              ),
            ),
            SizedBox(
              width: 20,
            ),
            Radio(
              materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
              value: 3,
              groupValue: id,
              onChanged: (val) {
                setState(() {
                  radioButtonItem = 'THREE';
                  id = 3;
                });
              },
            ),
            Text(
              '3',
              style: new TextStyle(fontSize: 14.0),
            ),
            SizedBox(
              width: 20,
            ),
            Radio(
              materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
              value: 4,
              groupValue: id,
              onChanged: (val) {
                setState(() {
                  radioButtonItem = 'Four';
                  id = 3;
                });
              },
            ),
            Text(
              '4',
              style: new TextStyle(fontSize: 14.0),
            ),
            SizedBox(
              width: 20,
            ),
            Radio(
              materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
              value: 5,
              groupValue: id,
              onChanged: (val) {
                setState(() {
                  radioButtonItem = 'Five';
                  id = 3;
                });
              },
            ),
            Text(
              '5',
              style: new TextStyle(fontSize: 14.0),
            ),
          ],
        ),
      ],
    );
  }
}
