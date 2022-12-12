import 'dart:async';

void addLessThanFive(StreamController controller, int value) {
  if (value < 5) {
    controller.sink.add(value);
  } else {
    controller.sink.addError(StateError('$value is not less than 5'));
  }
}

void main(List<String> args) {
  final controller = StreamController();
  addLessThanFive(controller, 1);
  addLessThanFive(controller, 2);
  addLessThanFive(controller, 3);
  addLessThanFive(controller, 4);
  addLessThanFive(controller, 5);

  controller.close();

  addLessThanFive(controller, 0);

  controller.stream.listen((value) {
    print(value);
  }, onError: (error) {
    print(error);
  }, onDone: () {
    print("done");
  });
}
