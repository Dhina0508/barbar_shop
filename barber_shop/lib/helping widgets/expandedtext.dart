import 'package:flutter/material.dart';

class ExpandedText extends StatefulWidget {
  final String text;

  const ExpandedText({Key? key, required this.text}) : super(key: key);

  @override
  State<ExpandedText> createState() => _ExpandedTextState();
}

class _ExpandedTextState extends State<ExpandedText> {
  late String firstHalf;
  late String secondHalf;

  bool hiddenText = true;

  double textHeight = 250;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    if (widget.text.length > textHeight) {
      firstHalf = widget.text.substring(0, textHeight.toInt());
      secondHalf =
          widget.text.substring(textHeight.toInt() + 1, widget.text.length);
    } else {
      firstHalf = widget.text;
      secondHalf = "";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: secondHalf.isEmpty
          ? Text(firstHalf)
          : Column(
              children: [
                Text(
                  hiddenText ? (firstHalf + "...") : (firstHalf + secondHalf),
                  style:
                      TextStyle(color: Colors.grey, fontSize: 13, height: 1.4),
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      hiddenText = !hiddenText;
                    });
                  },
                  child: Row(children: [
                    Text(
                      hiddenText ? 'Show more' : 'Show less',
                      style: TextStyle(
                          fontSize: 12,
                          color: Color.fromARGB(255, 247, 94, 94)),
                    ),
                    Icon(
                      hiddenText ? Icons.arrow_drop_down : Icons.arrow_drop_up,
                      color: Color.fromARGB(255, 247, 94, 94),
                    )
                  ]),
                )
              ],
            ),
    );
  }
}
