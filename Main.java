package billgenrator;

public class Main {
    public static void main(String[] args) {
        Pizza p1 = new Pizza(true);
        p1.addCheese();
        p1.addTopping();
        p1.addCream();
       p1.takeAway();
       p1.generateBill();
        

    // p1.printPrice();

//        PremiumPizza p2 = new PremiumPizza(true);
//        p2.addTopping();
//        p2.addTopping();
//        p2.generateBill();

    }
}
