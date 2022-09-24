
void main() {
    num number = 10;
    String numToStr = number.toString();

    print("numToStr : ${numToStr}");
    print("numToStr.runtimeType : ${numToStr.runtimeType}");

    String numString = "8";
    num strToNum = num.parse(numString);

    print("strToNum : ${strToNum}");
    print("strToNum.runtimeType : ${strToNum.runtimeType}");

    
    // dynamic types
    dynamic dynamicVariable = 'A string'; // type String
    print("dynamicVariable vlaue : ${dynamicVariable}");
    print("dynamicVariable type : ${dynamicVariable.runtimeType}\n");

    dynamicVariable = 5; // type int
    print("dynamicVariable vlaue : ${dynamicVariable}");
    print("dynamicVariable type : ${dynamicVariable.runtimeType}\n");

    dynamicVariable = true; // type bool
    print("dynamicVariable vlaue : ${dynamicVariable}");
    print("dynamicVariable type : ${dynamicVariable.runtimeType}");
}