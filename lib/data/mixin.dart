mixin Playable {
  String? name;

  void play() {
    print('play $name');
  }
}

mixin Stopable {
  String? name;

  void stop() {
    print('stop $name');
  }
}

class Video with Playable, Stopable {

}

class Audio with Playable, Stopable {

}