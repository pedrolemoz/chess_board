import 'piece.dart';

class Pawn extends Piece {
  Pawn({
    required super.owner,
    required super.position,
    super.inGame,
  }) : super(
          name: 'Pawn',
          blackImage:
              'https://upload.wikimedia.org/wikipedia/commons/c/cd/Chess_pdt60.png',
          whiteImage:
              'https://upload.wikimedia.org/wikipedia/commons/0/04/Chess_plt60.png',
        );
}
