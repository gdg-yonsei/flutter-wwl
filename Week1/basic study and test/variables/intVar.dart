void main() {
    int first;
    int second = 3;
    first = second;
    print("first : $first");
    print("second : $second");
    print("first == second : ${first == second}");
    print("identical(first, second) : ${identical(first, second)}");

    second = 7;

    print("first : $first");
    print("second : $second");
    print("first == second : ${first == second}");
    print("identical(first, second) : ${identical(first, second)}");

}