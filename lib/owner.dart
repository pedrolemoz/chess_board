enum Owner {
  black(name: 'Black', code: 0),
  white(name: 'White', code: 1);

  const Owner({required this.name, required this.code});

  final String name;
  final int code;
}

extension OwnerExtension on Owner {
  bool get isBlack => code == 0;
  bool get isWhite => code == 1;
}
