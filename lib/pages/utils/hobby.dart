class Hobby {
  final String thaiName;
  bool checked;

  Hobby({
      required this.thaiName,
      required this.checked});

  static List<Hobby> getHobby() {
    return [
      Hobby(
        thaiName: 'ฟังเพลง',
        checked: true,
      ),
      Hobby(
        thaiName: 'ดูหนัง',
        checked: false,
      ),
      Hobby(
        thaiName: 'เล่นกีฬา',
        checked: false,
      ),
      Hobby(
        thaiName: 'เล่นเกม',
        checked: false,
      ),
    ];
  }
}
