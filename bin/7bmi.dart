import 'dart:io';

void calculateBMI({
  required double weight,
  required double height,
}) {
  // Calculate BMI
  double bmi = weight / (height * height);

  // Determine Weight Status
  String weightStatus;
  if (bmi < 18.5) {
    weightStatus = "UNDER-WEIGHT";
  } else if (bmi >= 18.5 && bmi <= 24.9) {
    weightStatus = "NORMAL WEIGHT";
  } else if (bmi >= 25.0 && bmi <= 29.9) {
    weightStatus = "OVERWEIGHT";
  } else if (bmi >= 30.0 && bmi <= 34.9) {
    weightStatus = "OBESITY CLASS I";
  } else if (bmi >= 35.0 && bmi <= 39.9) {
    weightStatus = "OBESITY CLASS II";
  } else {
    weightStatus = "OBESITY CLASS III";
  }

  print("Your BMI is: ${bmi.toStringAsFixed(2)}");
  print("Weight Status: $weightStatus");
}

void main() {
  stdout.write("ENTER WEIGHT (KG) : ");
  double weight = double.parse(stdin.readLineSync()!);

  stdout.write("ENTER HEIGHT (METER) : ");
  double height = double.parse(stdin.readLineSync()!);

  calculateBMI(weight: weight, height: height);
}
