import 'dart:io';

void main(List<String> arguments) {
  var input = int.parse(stdin.readLineSync());

  segitigaInteger(input);
}

void segitigaInteger(int input) {
  for (var i = 0; i < (input * 2); i++) {
    if (i < input - 1) {
      // print(i);
      for (var j = 0; j <= i; j++) {
        stdout.write('${j + 1}');
      }
      for (var k = 0; k < input - i - 1; k++) {
        stdout.write(' ');
      }
      for (var k = 0; k < input - i - 2; k++) {
        stdout.write(' ');
      }
      for (var l = i + 1; l > 0; l--) {
        stdout.write('$l');
      }
      stdout.write('\n');
    } else if (i == input - 1) {
      for (var f = 1; f <= i; f++) {
        stdout.write('$f');
      }
      for (var g = i + 1; g > 0; g--) {
        stdout.write('$g');
      }
      stdout.write('\n');
    } else if (i == input) {
      //
    } else {
      for (var j = 0; j <= (input * 2) - i - 1; j++) {
        stdout.write('${j + 1}');
      }
      for (var k = input - (i - input) + 1; k < i; k++) {
        stdout.write(' ');
      }

      for (var l = (input * 2) - i; l > 0; l--) {
        stdout.write('$l');
      }
      stdout.write('\n');
    }
  }
}

void segitigaString(var input) {
  for (var i = 0; i < input.length; i++) {
    for (var j = 0; j <= i; j++) {
      stdout.write('${input[j]}');
      // stdout.write('c');
    }
    for (var k = 0; k < (input.length) - i - 1; k++) {
      stdout.write(' ');
    }
    for (var k = 0; k < (input.length) - i - 1; k++) {
      stdout.write(' ');
    }
    for (var l = 0; l <= i; l++) {
      stdout.write('${input[l]}');
    }

    stdout.write('\n');
  }
}
