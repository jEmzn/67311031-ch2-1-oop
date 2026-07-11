class Temperature {
  double _celsius = 0.0;

  // Getter and setter for celsius
  double get celsius => _celsius;

  set celsius(double value) {
    if (value < -273.15) {
      print('Cannot set celsius below -273.15°C');
    } else {
      _celsius = value;
    }
  }

  // Getter for fahrenheit
  double get fahrenheit => (_celsius * 9 / 5) + 32;
}

void main() {
  Temperature temp = Temperature(); // Temperature object

  temp.celsius = 25.0; // Set celsius

  print('Celsius: ${temp.celsius}°C'); // Print celsius
  print('Fahrenheit: ${temp.fahrenheit}°F'); // Print fahrenheit

  temp.celsius = -300.0; // Try to set celsius with value below -273.15°C
  print('Celsius after invalid set: ${temp.celsius}°C'); // Print celsius after invalid set
  print('Fahrenheit after invalid set: ${temp.fahrenheit}°F'); // Print fahrenheit after invalid set
}
