import 'bishop.dart';
import 'horse.dart';
import 'king.dart';
import 'owner.dart';
import 'pawn.dart';
import 'piece.dart';
import 'position.dart';
import 'queen.dart';
import 'slot.dart';
import 'tower.dart';

class BoardEngine {
  late final List<List<Slot>> _board;

  BoardEngine() {
    _board = _generateBoard();
  }

  List<List<Slot>> get board => _board.toList();

  Slot slotAt(int i, int j) => _board[i][j];

  List<List<Slot>> _generateBoard() {
    final matrix = <List<Slot>>[];
    for (var columnIndex = 7; columnIndex >= 0; columnIndex--) {
      final row = <Slot>[];
      for (var rowIndex = 0; rowIndex < 8; rowIndex++) {
        final owner = (columnIndex.isEven ? rowIndex.isEven : rowIndex.isOdd)
            ? Owner.white
            : Owner.black;

        final position = Position(
          x: String.fromCharCode(65 + rowIndex),
          y: columnIndex + 1,
        );

        Piece? piece;

        if (const [0, 1, 6, 7].contains(columnIndex)) {
          final whitePieces = [
            Tower(owner: Owner.white, position: position),
            Horse(owner: Owner.white, position: position),
            Bishop(owner: Owner.white, position: position),
            Queen(owner: Owner.white, position: position),
            King(owner: Owner.white, position: position),
            Bishop(owner: Owner.white, position: position),
            Horse(owner: Owner.white, position: position),
            Tower(owner: Owner.white, position: position),
          ];

          final blackPieces = [
            Tower(owner: Owner.black, position: position),
            Horse(owner: Owner.black, position: position),
            Bishop(owner: Owner.black, position: position),
            Queen(owner: Owner.black, position: position),
            King(owner: Owner.black, position: position),
            Bishop(owner: Owner.black, position: position),
            Horse(owner: Owner.black, position: position),
            Tower(owner: Owner.black, position: position),
          ];

          if (columnIndex == 1) {
            piece = Pawn(owner: Owner.white, position: position);
          } else if (columnIndex == 0) {
            piece = whitePieces[rowIndex];
          } else if (columnIndex == 6) {
            piece = Pawn(owner: Owner.black, position: position);
          } else if (columnIndex == 7) {
            piece = blackPieces[rowIndex];
          }
        }

        final slot = Slot(piece: piece, position: position, owner: owner);

        row.add(slot);
      }

      matrix.add(row);
    }
    return matrix;
  }
}
