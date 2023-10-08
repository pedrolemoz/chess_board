import 'owner.dart';
import 'position.dart';

class Piece {
  final Position position;
  final Owner owner;
  final String name;
  final String whiteImage;
  final String blackImage;
  bool inGame;

  Piece({
    required this.owner,
    required this.position,
    required this.name,
    required this.whiteImage,
    required this.blackImage,
    this.inGame = true,
  });

  String image() => owner == Owner.white ? whiteImage : blackImage;
}
