import 'dart:async';

class Watch {
  bool flag = true;
  Stream<int>? timerStream;
  StreamSubscription<int>? timerSubscription;

  final _valStateController = StreamController<String>();
  StreamSink<String> get _inValue => _valStateController.sink;
  Stream<String> get value => _valStateController.stream;

  void disponse() {
    _valStateController.close();
  }

  bool started = false;

  void start() {
    started = true;
    StreamController<int>? streamController;
    Timer? timer;
    Duration timerInterval = Duration(seconds: 1);
    int counter = 0;

    void stopTimer() {
      if (timer != null) {
        timer?.cancel();
        timer = null;
        counter = 0;
        streamController?.close();
      }
    }

    void tick(_) {
      counter++;
      streamController?.add(counter);
      if (!flag) {
        stopTimer();
      }
    }

    void startTimer() {
      timer = Timer.periodic(timerInterval, tick);
    }

    streamController = StreamController<int>(
      onListen: startTimer,
      onCancel: stopTimer,
      onResume: startTimer,
      onPause: stopTimer,
    );

    timerSubscription = streamController.stream.listen((int newTick) {
      var minutesStr = ((newTick / 60) % 60).floor().toString().padLeft(2, '0');
      var secondsStr = (newTick % 60).floor().toString().padLeft(2, '0');

      _inValue.add("($minutesStr:$secondsStr)");
    });
  }

  void reset() {
    timerSubscription?.cancel();
    timerStream = null;
    _inValue.add("(00:00)");

    started = false;
  }
}
