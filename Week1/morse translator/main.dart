import 'dart:io';
import 'decrypt.dart';
import 'encrypt.dart';
import 'const.dart';

void main() {
    while(true){
        // ask for action
        print("What Action do you want to execute? ['e' for encryption and 'd' for decryption]");
        String? actionUserInput = stdin.readLineSync();

        if(actionUserInput != null){
            if(encryptTextList.contains(actionUserInput.toLowerCase())){
                print("Input text for Morse Code conversion(alphabet and numbers only) : \n");
                String? textFromUser = stdin.readLineSync();
                String morseCode = encrypt(textFromUser);

                if(morseCode == INVALID){
                    print("INPUT INVALID! Please Try Again.");

                } else {
                    print("ENCRYPTION RESULT.\nMORSE CODE FOR \"$textFromUser\" IS :\n$morseCode");
                    break;
                }
            
            } else if(decryptTextList.contains(actionUserInput.toLowerCase())){
                print("Input Morse Code for Text Conversion : \n");
                String? morseFromUser = stdin.readLineSync();
                String text = decrypt(morseFromUser);

                if(text == INVALID){
                    print("INPUT INVALID! Please Try Again.");

                } else {
                    print("DECRYPTION RESULT.\nText FOR \"$morseFromUser\" IS :\n$text");
                    break;
                }
            
            } else {
                print("Incorrect Action Input!. Please try again!");
            }

        } else {
            print("You didn't input anything. Please try again!");
        }
    }
}