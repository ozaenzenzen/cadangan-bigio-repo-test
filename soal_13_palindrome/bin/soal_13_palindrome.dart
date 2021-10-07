import 'dart:io';

void main(List<String> arguments) {
  stdout.write('Write here: ');
  var inputString = stdin.readLineSync().toString();
  mergeReverseText(inputString);
}

void mergeReverseText(String input) {
  var strrev = input.split('').reversed.join();

  stdout.write('$input$strrev');
}
