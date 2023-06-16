import 'package:ttl_app_code/features/scoring/presentation/bloc/team.dart';

class LiveScoring {
  var pointNo = 0;

  Team a;
  Team b;

  LiveScoring(this.a, this.b);

  void markScore(bool isAScoring) {
    if (isAScoring) {
      a.incScore();
    } else {
      b.incScore();
    }

    pointNo = pointNo + 1;

    var serveCount = pointNo % 3;

    if (serveCount == 0) {
      a.toggleServe();
      b.toggleServe();
    }
  }
}
