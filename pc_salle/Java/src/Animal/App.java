package introduction;

public class Animal 

{
private String specie;

public Animal(string _specie)

{

    System.out.println("constructeur de animal");

    this.specie =  _specie;
}

public String getSpecie ()

{

return this.specie;

}
public void feed()
{

    System.out.println((string));
}
public static void move() {
    System.out.println(this.specie + " se deplace");  
}

}
