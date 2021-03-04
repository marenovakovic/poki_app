import 'dart:async';

class InputController {
  StreamController<String> _streamController =
      StreamController<String>.broadcast();

  void set input(String value) => _streamController.add(value);

  Stream<String> get text => _streamController.stream.map((event) => '$event.testing');
}
