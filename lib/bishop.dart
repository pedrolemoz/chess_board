import 'piece.dart';

class Bishop extends Piece {
  Bishop({
    required super.owner,
    required super.position,
    super.inGame,
  }) : super(
          name: 'Bishop',
          blackImage:
              'https://upload.wikimedia.org/wikipedia/commons/8/81/Chess_bdt60.png',
          whiteImage:
              'https://upload.wikimedia.org/wikipedia/commons/9/9b/Chess_blt60.png',
        );
}
