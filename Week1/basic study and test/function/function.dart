void main() {
    typelessParamFunc(1);
    typelessParamFunc("string");
    typelessVoidFunc();
    print("typelessNumFunc : ${typelessNumFunc()}, typelessNumFunc type : ${typelessNumFunc().runtimeType}");
    optPosParamsFunc("reqired",);
    optPosParamsFunc("reqired","a");
    optPosParamsFunc("reqired","a", "b");
    optNamedParamsFunc("reqired");
    optNamedParamsFunc("reqired",opt1: "a");
    optNamedParamsFunc("reqired",opt2: "b");
    String text = "initial_val";
    print("text : $text");
    refereceTest(text);
    print("text : $text");
}

void typelessParamFunc(a){
    print("a: ${a}, a type: ${a.runtimeType}");
}

typelessVoidFunc(){
    print("function with no type");
}

typelessNumFunc(){
    return 10;
}

void optPosParamsFunc(String req, [String? opt1, String opt2="opt2 default"]){
    print("optPosParamsFunc\nreq : $req, opt1 : $opt1 opt2 : $opt2");
}

void optNamedParamsFunc(String req, {String? opt1, String opt2="opt2 default"}){
    print("optNamedParamsFunc\nreq : $req, opt1 : $opt1 opt2 : $opt2");
}

void refereceTest(String text) {
    text = "";
}