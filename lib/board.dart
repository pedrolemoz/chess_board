import 'package:flutter/material.dart';

import 'board_engine.dart';
import 'constants.dart';
import 'owner.dart';

class Board extends StatefulWidget {
  const Board({super.key});

  @override
  State<Board> createState() => _BoardState();
}

class _BoardState extends State<Board> {
  final engine = BoardEngine();

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(32),
        child: Column(
          children: List.generate(
            8,
            (columnIndex) => Row(
              children: List.generate(
                8,
                (rowIndex) {
                  final slot = engine.board[columnIndex][rowIndex];

                  final backgroundColor = slot.owner == Owner.white
                      ? Colors.brown[200]
                      : Colors.brown[800];

                  final foregroundColor = slot.owner == Owner.white
                      ? Colors.black87
                      : Colors.white70;

                  return Container(
                    height: slotSize,
                    width: slotSize,
                    color: backgroundColor,
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Align(
                          alignment: Alignment.topRight,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                              vertical: 4,
                              horizontal: 4,
                            ),
                            child: Text(
                              slot.position.toString(),
                              style: textTheme.bodyLarge!
                                  .copyWith(color: foregroundColor),
                            ),
                          ),
                        ),
                        if (slot.piece != null) ...[
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.network(slot.piece!.image()),
                              Text(
                                slot.piece!.name,
                                style: textTheme.bodyLarge!
                                    .copyWith(color: foregroundColor),
                              )
                            ],
                          )
                        ],
                      ],
                    ),
                  );
                },
              ),
            ),
          ),
        ),
      ),
    );
  }
}
