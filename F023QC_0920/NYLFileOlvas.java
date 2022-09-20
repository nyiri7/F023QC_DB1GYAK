


import java.io.File;
import java.io.FileNotFoundException;
import java.util.Scanner;

public class NYLFileOlvas {

	public static void main(String[] args) {



		Scanner sc = new Scanner(System.in);
		System.out.println("Adja meg h�ny adatot szeretne beolvasni: ");
		boolean ok = true;
		int olvas = 0;
		
		
		
		
		do {
			try {
				ok = true;
				olvas = sc.nextInt();
				if (olvas <= 0 || olvas > 10) {
					System.out.println("Nem megfelelo szamot adott meg!\n");
					ok = false;
				}
			} catch (NumberFormatException e) {
				System.out.println(e);
				ok = false;
			}
		} while (!ok);

		read_text_file(olvas);

		sc.close();



	}




	public static void read_text_file(int olvas) {
		String fnev = "Nyiri.txt";
		int db = 0;
		int sum = 0;
		int szam;




		try {
			File myObj = new File(fnev);
			Scanner sc = new Scanner(myObj);
			while (sc.hasNextLine() && db < olvas) {
				szam = sc.nextInt();
				sum = sum + szam;
				System.out.println("A(z) " + db + ". adat: " + szam);
				db++;
			}
			sc.close();
			
			
		} catch (FileNotFoundException e) {
			System.out.println("Hiba!\n");
			e.printStackTrace();
		}

		System.out.println("Az osszeg: " + sum);

	}

}