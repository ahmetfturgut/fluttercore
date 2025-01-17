class ImageConstants {
  ImageConstants._init();
  static ImageConstants? _instace;

  static ImageConstants get instance => _instace ??= ImageConstants._init();

  String get defaultPerson => toJpg('person');
  String get splashScreen => toPng('splash_screen');
  String get startImage => toPng('start_image');
  String get gradient => toPng('gradient');
  String get projeIcon => toPng('cirlce_hwa');

  String toPng(String name) => 'asset/image/$name.png';
  String toJpg(String name) => 'asset/image/$name.jpg';
}
