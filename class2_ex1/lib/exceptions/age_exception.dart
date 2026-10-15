class AgeException {
  final String _module;

  AgeException({required this._module});

  String errorMessage() => 'Unexpected age found at $_module';
}
