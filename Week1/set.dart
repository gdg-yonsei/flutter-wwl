void main() {
  Set<String> fruit = {'banana', 'apple'};
  fruit.addAll(['pinapple', 'pear']);
  fruit.remove('apple');

  print(fruit.contains('cherry'));

  var fruit2 = <String>{'grape', 'banana'};
  print(fruit.intersection(fruit2));
}
