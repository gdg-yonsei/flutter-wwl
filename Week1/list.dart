//3,5 배수 개수 구하기
void main() {
  List numList = [2, 3, 5, 6, 7, 8, 9, 10];
  int fivenum = 0;
  int threenum = 0;

  for (int i = 0; i < numList.length; i++) {
    if (numList[i] % 5 == 0) {
      fivenum++;
    }
  }

  for (int number in numList) {
    if (number % 3 == 0) {
      threenum++;
    }
  }

  print("5의 배수의 개수는 $fivenum개 입니다.");
  print("3의 배수의 개수는 $threenum개 입니다.");
}
