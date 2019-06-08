package _01_intro_to_static;

public class Athlete {

    static int nextBibNumber=1;
    static String raceLocation = " New York";
    static String raceStartTime = "9.00am";

    String name;
    int speed;
    int bibNumber;

Athlete (String name, int speed){
    this.name = name;
    this.speed = speed;
    this.bibNumber = nextBibNumber;
    nextBibNumber++;
}

public static void main(String[] args) {
	
    //create two athletes
	Athlete athlete1 = new Athlete("UrMom ", 701);
	

	Athlete athlete2 = new Athlete("UrDad ", 7001);

	//print their names, bibNumbers, and the location of their race. }
System.out.println(athlete1.name + athlete1.bibNumber + athlete1.raceLocation );
System.out.println(athlete2.name + athlete2.bibNumber + athlete2.raceLocation );

	
}
}
