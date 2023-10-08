import 'piece.dart';

class Horse extends Piece {
  Horse({
    required super.owner,
    required super.position,
    super.inGame,
  }) : super(
          name: 'Horse',
          blackImage:
              'https://upload.wikimedia.org/wikipedia/commons/f/f1/Chess_ndt60.png',
          whiteImage:
              'https://upload.wikimedia.org/wikipedia/commons/2/28/Chess_nlt60.png',
        );
}
