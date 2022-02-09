class Vid {
  final String thumb;
  final String buttonPath;
  final List<String> rekomendasiPath;
  final String videoUrl;

  Vid(this.thumb, this.buttonPath, this.rekomendasiPath, this.videoUrl);
}

final vid1 = Vid(
    'assets/v-1.png',
    'assets/l-1.png',
    ['assets/v-1.png', 'assets/v-2.png', 'assets/v-3.png', 'assets/v-4.png'],
    's4y7CVgAjtE');
final vid2 = Vid(
    'assets/v-2.png',
    'assets/l-1.png',
    ['assets/v-1.png', 'assets/v-2.png', 'assets/v-3.png', 'assets/v-4.png'],
    'qjOw4EmuTxc');
final vid3 = Vid(
    'assets/v-3.png',
    'assets/l-1.png',
    ['assets/v-3.png', 'assets/v-2.png', 'assets/v-3.png', 'assets/v-4.png'],
    '');
final vid4 = Vid(
    'assets/v-4.png',
    'assets/l-1.png',
    ['assets/v-1.png', 'assets/v-2.png', 'assets/v-3.png', 'assets/v-4.png'],
    '');
