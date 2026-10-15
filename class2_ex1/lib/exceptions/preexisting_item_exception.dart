class PreexistingItemException {
  final String _resouce;
  final String _item;

  PreexistingItemException({required this._resouce, required this._item});

  String errorMessage() => 'Item: -$_item- already exists on $_resouce.';
}
