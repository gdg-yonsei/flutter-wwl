import 'const.dart';

String decrypt(String? morseCode){
    try {
        if(morseCode == null){
            return INVALID;

        } else {
            //convert _ to -
            String morseForConvert = morseCode.replaceAll("_", "-").replaceAll("・", ".");
            List<String> morseCodeList = morseForConvert.split(" ");
            String textString = "";

            for(var i=0; i<morseCodeList.length; i++){
                
                var morseToText = MORSE_MAP.keys.firstWhere(
                    (element) => MORSE_MAP[element] == morseCodeList[i],
                    orElse: () => INVALID,
                    );

                if(morseToText == INVALID){
                    return INVALID;

                } else {
                    textString += morseToText;
                }
            }

            return textString;
        }
    } catch (error) {
        print("[ERROR : error happened while decrypting to text]");
        print(error);

        return INVALID;
    }
}