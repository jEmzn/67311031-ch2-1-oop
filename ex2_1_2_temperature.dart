class Temperature {
  double _celsius = 0.0;
  Temperature(this._celsius);
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
  Temperature temp = Temperature(25.0);
  print('Celsius: ${temp.celsius}°C');
  print('Fahrenheit: ${temp.fahrenheit}°F');

  temp.celsius = -300.0; // Attempt to set an invalid temperature
  print('Celsius after invalid set: ${temp.celsius}°C');
}