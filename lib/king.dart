import 'piece.dart';

class King extends Piece {
  King({
    required super.owner,
    required super.position,
    super.inGame,
  }) : super(
          name: 'King',
          blackImage:
              'https://upload.wikimedia.org/wikipedia/commons/e/e3/Chess_kdt60.png',
          whiteImage:
              'https://upload.wikimedia.org/wikipedia/commons/3/3b/Chess_klt60.png',
        );
}
