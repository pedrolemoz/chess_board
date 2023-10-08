import 'piece.dart';

class Queen extends Piece {
  Queen({
    required super.owner,
    required super.position,
    super.inGame,
  }) : super(
          name: 'Queen',
          blackImage:
              'https://upload.wikimedia.org/wikipedia/commons/a/af/Chess_qdt60.png',
          whiteImage:
              'https://upload.wikimedia.org/wikipedia/commons/4/49/Chess_qlt60.png',
        );
}
