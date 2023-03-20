import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:percobaan2/model/tourism_place.dart';

class ListItem extends StatefulWidget {
  final TourismPlace place;
  final bool isDone;
  final Function(bool? value) onCheckBoxClick;

  const ListItem({
    required this.place,
    required this.isDone,
    required this.onCheckBoxClick
  });

  @override
  _ListItemState createState() => _ListItemState();
}

class _ListItemState extends State<ListItem> {
  bool isChecked = false;

  @override
  void initState(){
    super.initState();
    isChecked = widget.isDone;
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      color: isChecked ? Colors.white60 : Colors.white,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget> [
          Expanded(
            flex: 1,
            child: Image.asset(widget.place.imageAsset),
          ),
          Expanded(
            flex: 2,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Text(
                    widget.place.name,
                    style: const TextStyle(fontSize: 16.0),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(widget.place.location),
                ],
              ),
            ),
          ),
          Checkbox(
            checkColor: Colors.blueAccent,
            value: isChecked,
            onChanged: (bool? value){
              setState(() {
                isChecked = value!;
                widget.onCheckBoxClick(value);
              });
            },
            activeColor: Colors.white,
            materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
          ),
        ],
      ),
    );
  }
}

