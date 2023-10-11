class Assets {
  Assets._();
  static final image = _AssetsImage._();
  static final font = _AssetsFont._();
  static final icon = _AssetsIcon._();
}

class _AssetsImage {
  _AssetsImage._();
  final imSplashPNG = 'assets/image/im_logo.png';
  final imPresentationPNG = 'assets/image/im_presentation.png';
  final imUndrawPNG = "assets/image/im_undraw.png";
  final imLinePNG = "assets/image/im_line.png";
}

class _AssetsFont {
  _AssetsFont._();
}

class _AssetsIcon {
  _AssetsIcon._();
  final icBackButtonSVG = 'assets/icon/ic_back_button.svg';
  final icUserSVG = 'assets/icon/ic_user.svg';
  final icLockSVG = 'assets/icon/ic_lock.svg';
  final icEyeBlocked = 'assets/icon/ic_eye_blocked.svg';
      final icCaretDownSVG = 'assets/icon/ic_caret_down.svg';

}
