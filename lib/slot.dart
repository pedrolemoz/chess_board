import 'owner.dart';
import 'piece.dart';
import 'position.dart';

class Slot {
  final Position position;
  final Owner owner;
  Piece? piece;

  Slot({
    required this.position,
    required this.owner,
    this.piece,
  });

  bool get isEmpty => piece == null;

  bool get isNotEmpty => !isEmpty;
}
