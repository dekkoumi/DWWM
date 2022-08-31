package INTRODUCTION;


public class App {
    
    public static void main(String[] args) {
        
        Bee bee = new Bee();
        display(bee);

        //Horse horse = new Horse();
    
    }// fait office de println
    public static void display(Bee abeille) {
        System.out.println(abeille.getSpecie());
        abeille.move();

        abeille.feed();

        abeille.buzz();
    }
    //display

