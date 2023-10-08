import 'owner.dart';
import 'position.dart';

class Piece {
  final Position position;
  final Owner owner;
  final String name;
  final String _whiteImage;
  final String _blackImage;
  bool inGame;

  Piece({
    required this.owner,
    required this.position,
    required this.name,
    required String whiteImage,
    required String blackImage,
    this.inGame = true,
  })  : _blackImage = blackImage,
        _whiteImage = whiteImage;

  String get image => owner.isWhite ? _whiteImage : _blackImage;
}
