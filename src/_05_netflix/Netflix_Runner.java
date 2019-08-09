package _05_netflix;

import javax.swing.JOptionPane;

public class Netflix_Runner {
	public static void main(String[] args) {
		Movie movie1 = new Movie("Justice League", 1);
		Movie movie2 = new Movie("Shazam", 4);
		Movie movie3 = new Movie("Spiderman; Far From Home", 5);
		Movie movie4 = new Movie("Aquaman", 3);
		Movie movie5 = new Movie("The Emoji Movie", 2);
		String price;
		price = movie1.getTicketPrice();

		NetflixQueue myMovies = new NetflixQueue();
JOptionPane.showConfirmDialog(null, price);
		myMovies.addMovie(movie1);
		myMovies.addMovie(movie2);
		myMovies.addMovie(movie3);
		myMovies.addMovie(movie4);
		myMovies.addMovie(movie5);

		myMovies.printMovies();

		Movie best = myMovies.getBestMovie();
		best.getTitle();
		
		Movie sbest = myMovies.getSecondBestMovie();
		sbest.getTitle();
		System.out.println("The best movie is "+ best);
		System.out.println("The second best movie is "+ sbest);
	}
}
