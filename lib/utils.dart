class Utils {
  static String formatCurrency(double value) {
    return value.toStringAsFixed(2);
  }

  static String getGreeting() {
    final hour = DateTime.now().hour;

    if (hour < 12) {
      return "Selamat Pagi";
    } else if (hour < 17) {
      return "Selamat Siang";
    } else {
      return "Selamat Malam";
    }
  }
}
