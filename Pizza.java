package billgenrator;

public class Pizza {
    private boolean isVeg; // true--> veg false -- non veg
    private int price;

    private int extraCheeseCost = 59;
    private int extraToppingCost = 79;
    private int takeAwayCost = 20;
    private int extraCreamCost = 10;

    private boolean isCheeseAdded;
    private boolean isToppeingAdded;
    private boolean takeAwayOtped;
    private boolean iscreamAdded;

    public Pizza(boolean isVeg) {
        this.isVeg = isVeg;
        if (isVeg) {
            this.price = 299;
        } else {
            this.price = 399;
        }
    }

    public void printPrice() {
        System.out.println("Price is : " + price);
    }

    public void addCheese() {
        isCheeseAdded = true;
        price += extraCheeseCost;
    }

    public void addTopping() {
        isToppeingAdded = true;
        price += extraToppingCost;
    }

    public void takeAway() {
        takeAwayOtped = true;
        price += takeAwayCost;
    }

    public void addCream() {
        iscreamAdded = true;
        price += extraCreamCost;
    }

    public void generateBill() {
        StringBuilder sb = new StringBuilder();
        sb.append("----------------Pizza Bill-----------------");
        if (isVeg) {
            sb.append("\nItem : Veg Pizza");
        } else {
            sb.append("\nItem : Non-Veg Pizza");
        }
        if (isCheeseAdded) {
            sb.append("\nExtra Cheese Cost : ");
            sb.append(extraCheeseCost);
        }
        if (isToppeingAdded) {
            sb.append("\nExtra Topping Cost : ");
            sb.append(extraToppingCost);
        }
        if (takeAwayOtped) {
            sb.append("\nTake Away Opted");
            sb.append(takeAwayCost);
        }
        if (iscreamAdded) {
            sb.append("\nExtra Cream Cost :");
            sb.append(extraCreamCost);
        }
        sb.append("\nTotal Price : ");
        sb.append(price);

        sb.append("\nHave a nice day!");

        System.out.println(sb);
    }

}