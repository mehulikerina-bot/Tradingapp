class BackendService {
  static double balance = 1000;

  static void addProfit(double amount) {
    balance += amount;
  }

  static void subtractLoss(double amount) {
    balance -= amount;
  }

  static double getBalance() {
    return balance;
  }
}
