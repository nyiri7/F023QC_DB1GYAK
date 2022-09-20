

import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileWriter;
import java.io.IOException;
import java.util.Scanner;

public class NYLFIleIr {

	public static void main(String[] args) {

		Scanner sc = new Scanner(System.in);
		System.out.println("Add meg h�ny adatot szeretn�l beolvasni: ");
		boolean ok = true;
		int olvas = 0;
		do {
			try {
				ok = true;
				olvas = sc.nextInt();
				if (olvas <= 0 || olvas > 10) {
					System.out.println("Nem megfelel� szamot adott meg!\n");
					ok = false;
				}
			} catch (NumberFormatException e) {
				System.out.println(e);
				ok = false;
			}
		} while (!ok);

		write_text_file(olvas);
		read_text_file(olvas);

		sc.close();

	}

	public static void write_text_file(int olvas) {
		String fnev = "Nyiri.txt";
		int db = 0;
		Scanner sc = new Scanner(System.in);
		boolean ok = true;
		String szam= "valami";




		try {
			FileWriter myWriter = new FileWriter(fnev);
			System.out.println("Adjon meg " + olvas + " db szamot!");
			while (db < olvas) {

				do {
					try {
						ok = true;
						szam = sc.nextLine();
					} catch (NumberFormatException e) {
						System.out.println(e);
						ok = false;
					}
				} while (!ok);
				
				db++;
				myWriter.write(szam + "\n");

			}
			myWriter.close();
			System.out.println("Az iras sikeres volt.");
		} catch (IOException e) {
			System.out.println("IO hiba");
			e.printStackTrace();
		}
		
		sc.close();

	}
	
	public static void read_text_file(int olvas) {
		String fnev = "Nyiri.txt";
		int db = 0;
		int szam;

		try {
			File myObj = new File(fnev);
			Scanner sc = new Scanner(myObj);
			while (sc.hasNextLine() && db < olvas) {
				szam = sc.nextInt();
				System.out.println("Az " + db + ". adat: " + szam);
				db++;
			}
			sc.close();
			
			
			
		} catch (FileNotFoundException e) {
			System.out.println("Hiba!");
			e.printStackTrace();
		}


	}


}