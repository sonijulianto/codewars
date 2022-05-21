void main() {
  List<int> seven(int m) {
    var temp = m.toString().split("");
    int min = 2 * int.parse(temp.last);
    int val1 = int.parse(m.toString().split("").getRange(0, temp.length == 1 ? 1 : temp.length - 1).join());
    int val2 = 0;
    for (int i = 2; i < temp.length; i++) {
      var temp2 = (val1 - min).toString().split("");
      print(temp2);
      var index = temp2.length == 1 ? 1 : temp2.length == 2? temp2.length : temp2.length - 1;
      val1 = i + 1 == temp.length ? int.parse(temp2.join()) : int.parse(temp2.getRange(0, index).join());
      val2 = i - 1;
      if (temp2.length <= 2) {
        break;
      };
      min = int.parse(temp2.last) * 2;
    }
    List<int> result = [];
    result.addAll([val1, val2]);
    return result;
  }

  print(seven(103837549));
}
