class Age {
  static ageCalculator(int year) {
    int currentYear = DateTime.now().year;
    int resutl = currentYear - year;
    return resutl.toString();
  }
}
