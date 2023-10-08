import 'piece.dart';

class Tower extends Piece {
  Tower({
    required super.owner,
    required super.position,
    super.inGame,
  }) : super(
          name: 'Tower',
          blackImage:
              'https://upload.wikimedia.org/wikipedia/commons/a/a0/Chess_rdt60.png',
          whiteImage:
              'https://upload.wikimedia.org/wikipedia/commons/5/5c/Chess_rlt60.png',
        );
}
