import 'package:flutter/material.dart';

class Note {
  final int orderNumber;
  final int line;
  NoteState state = NoteState.ready;

  Note(this.orderNumber, this.line);
}

// diffarent class akhane;

class Tile extends StatelessWidget {
  final double? height;
  final NoteState? state;
  final VoidCallback? onTab;
  const Tile({
    Key? key,
    this.height,
    this.state,
    this.onTab,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: double.infinity,
      child: InkWell(
          onTap: () => onTab!(),
          child: Container(
            color: color,
          )),
    );
  }

  
Color get color {
    switch (state) {
      case NoteState.ready:
        return Colors.green;
      case NoteState.taped:
        return Colors.grey;
      case NoteState.missed:
        return Colors.yellow;
      default:
        return Colors.black;
    }
  }
}


enum NoteState { ready, taped, missed }
