class Team {
  String id;
  String name;
  String pic;
  bool toss;
  bool serveStart;

  late bool serving;
  int serveCount = 0;

  var score = 0;
  var point = false;

  Team(this.id, this.name, this.pic, this.toss, this.serveStart) {
    serving = serveStart;
    if (serving) {
      serveCount++;
    }
  }

  void incScore() {
    score = score++;
    if (!point && score > 19 && score < 25) {
      point = true;
    }
  }

  toggleServe() {
    serving = !serving;
  }
}
