import 'const.dart';

String encrypt(String? inputText){
    try {

        if(inputText == null){
            return INVALID;

        } else {
            //delete space
            String textForConvert = inputText.replaceAll(" ", "").toUpperCase();
            String morseCode = "";

            for(var i=0; i<textForConvert.length; i++){
                var textToMorse = MORSE_MAP[textForConvert[i]];

                if(textToMorse == null){
                    return INVALID;

                } else {
                    morseCode += textToMorse + "  ";
                }
            }

            return morseCode;
        }
      
    } catch (error) {
        print("[ERROR : error happened while encrypting to morse code]");
        print(error);

        return INVALID;
    }
}