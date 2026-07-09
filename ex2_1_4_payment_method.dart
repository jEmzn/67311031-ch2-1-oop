abstract class PaymentMethod {
  void pay(double amount);
}

/* พิจารณาว่าควรใช้ extends หรือ implements และเพราะเหตุใด 
    ตอบ extends เพราะ PaymentMethod มีความสัมพันธ์แบบ is-a กับ 
    CreditCard, PromptPay, CashOnDelivery และสืบทอดพฤติกรรมของ 
    PaymentMethod แค่ที่เดียว จึงไม่มีความจำเป็นต้องใช้ implements  
*/

class CreditCard extends PaymentMethod  {
  @override
  void pay(double amount) {
    print("Paid $amount baht by using Credit Card");
  }
}

class PromptPay extends PaymentMethod {
  @override
  void pay(double amount) {
    print("Paid $amount baht by using PromptPay");
  }
}

class CashOnDelivery extends PaymentMethod {
  @override
  void pay(double amount) {
    print("Paid $amount baht by using Cash on Delivery");
  }
}

void main() {
  PaymentMethod creditCard = CreditCard();
  PaymentMethod promptPay = PromptPay();
  PaymentMethod cashOnDelivery = CashOnDelivery();

  creditCard.pay(100.0);
  promptPay.pay(200.0);
  cashOnDelivery.pay(300.0);
}