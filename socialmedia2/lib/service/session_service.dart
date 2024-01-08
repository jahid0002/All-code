class SessionController {
  static final SessionController _controller = SessionController._internal();

  String? userId;

  factory SessionController() {
    return _controller;
  } 
  SessionController._internal(){}
}
