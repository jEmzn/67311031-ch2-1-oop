abstract class PaymentMethod {
  void pay(double amount);
}

class CreditCard extends PaymentMethod  {
  @override
  void pay(double amount) {
    print("Paid $amount using Credit Card");
  }
}

class PromptPay extends PaymentMethod {
  @override
  void pay(double amount) {
    print("Paid $amount using PromptPay");
  }
}

class CashOnDelivery extends PaymentMethod {
  @override
  void pay(double amount) {
    print("Paid $amount using Cash on Delivery");
  }
}