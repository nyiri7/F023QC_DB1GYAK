import java.io.BufferedReader;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.util.Scanner;

public class F023QC_2_8 {

	private static F023QC_2_8 adatok[];

	public static void main(String[] args) {
		
		

		Scanner sc = new Scanner(System.in);

		int szam = 0;

		while (szam != 5) {
			System.out.println("1. Adatok felvitele\n2. Adatok torlese\n3. Adatok modositasa\n4. Adatok listazasa\n5. Kilepes\n\n");
			szam = sc.nextInt();
			switch (szam) {

			case 1:
				int olvas = szamotker(sc);
				adatok = new F023QC_2_8[olvas];
				try {
					beker(adatok, sc);
				} catch (IOException e) {
					e.printStackTrace();
				}
				break;
			case 2:
				try {
					torles(adatok, sc);
				} catch (IOException e) {
					e.printStackTrace();
				}
				break;
			case 3:
				try {
					modosit(adatok,sc);
				} catch (IOException e1) {
					e1.printStackTrace();
				}
				break;
			case 4:
				try {
					kiolvas(sc);
				} catch (IOException e) {
					e.printStackTrace();
				}
				break;
			case 5:
				System.out.println("Kilépés...\n");
				System.exit(0);
			default:
				System.out.println("Érvénytelen opció!\n");
			}

		}

		sc.close();

	}
	
	

	private static int szamotker(Scanner sc) {
		System.out.println("Hány adatot szeretnel megadni? ");
		boolean ok = true;
		int olvas = 0;
		do {
			try {
				ok = true;
				olvas = sc.nextInt();
				if (olvas <= 0) {
					System.out.println("Helytelen szamot adtal meg!\n");
					ok = false;
				}
			} catch (NumberFormatException e) {
				System.out.println(e);
				ok = false;
			}
		} while (!ok);
		return olvas;

	}
	
	

	private String aznosito;
	private String nev;
	private static int ossz;

	public static int getOssz() {
		return ossz;
	}

	public static void setOssz(int ossz) {
		F023QC_2_8.ossz = ossz;
	}

	public String getAznosito() {
		return aznosito;
	}

	public void setAznosito(String aznosito) {
		this.aznosito = aznosito;
	}

	public String getNev() {
		return nev;
	}

	public void setNev(String nev) {
		this.nev = nev;
	}

	public F023QC_2_8(String aznosito, String nev) {
		this.aznosito = aznosito;
		this.nev = nev;
	}

	@Override
	public String toString() {
		return "F023QC_2_8 [Azonsító: " + aznosito + ", név: " + nev + "]";
	}
	
	

	public static F023QC_2_8[] beker(F023QC_2_8[] adatok, Scanner sc) throws IOException {

		FileWriter myWriter = new FileWriter("szemelyek.dat");

		for (int i = 0; i < adatok.length; i++) {

			System.out.println("Add meg az azonositot: ");
			String azonosito = sc.next();

			System.out.println("Add meg a nevet: ");
			String nev = sc.next();

			adatok[i] = new F023QC_2_8(azonosito, nev);
			ossz++;

			try {
				myWriter.write(adatok[i].aznosito + " " + adatok[i].nev + "\n");
				myWriter.flush();
			} catch (IOException e) {
				e.printStackTrace();
			}

		}

		myWriter.close();

		return adatok;

	}
	
	

	public static void torles(F023QC_2_8[] adatok, Scanner sc) throws IOException {

		File file = new File("szemelyek2.dat");
		File file2 = new File("szemelyek.dat");
		FileWriter myWriter = new FileWriter("szemelyek2.dat");

		System.out.println("Hanyadik rekordot szeretned tarolni?");

		int bekert = sc.nextInt();
		bekert = bekert - 1;
		
		
		

		for (int i = 0; i < getOssz(); i++) {
			if (bekert == 0) {
				if (i != 0) {
					myWriter.write(adatok[i].aznosito + " " + adatok[i].nev + "\n");
					myWriter.flush();
					setOssz(getOssz()-1);
				}

			} else if (bekert != 0) {
				if (i != bekert) {
					myWriter.write(adatok[i].aznosito + " " + adatok[i].nev + "\n");
					myWriter.flush();
					setOssz(getOssz()-1);
				}
			}
		}

		myWriter.close();
		file2.delete();
		file.renameTo(file2);

	}

	public static void kiolvas(Scanner sc) throws IOException {

		String fnev = "szemelyek.dat";
		int db = 0;
		String valami;
		
		

		try {
			File myObj = new File(fnev);
			BufferedReader buff1 = new BufferedReader(new FileReader(myObj.getAbsoluteFile()));
			sc = new Scanner(buff1);
			while (sc.hasNextLine()) {
				valami = sc.nextLine();
				System.out.println(db + ". adat: " + valami);
				db++;
			}
			buff1.close();
		} catch (FileNotFoundException e) {
			System.out.println("Hiba!\n");
			e.printStackTrace();
		}

	}

	public static void modosit(F023QC_2_8[] adatok, Scanner sc) throws IOException {
		
		System.out.println("Hanyadik rekordot szeretned modosítani? " + getOssz() + "db adat van az allomanyban.");
		int szam = sc.nextInt();
		System.out.println("Mit szeretnel modosítani?\n1.Azonosíto\n2.Nev\n");
		int mit = sc.nextInt();
		
		FileWriter myWriter = new FileWriter("szemelyek.dat");
		
		
		
		
		
		
		
		for (int i = 0; i < getOssz(); i++) {
			if(i==(szam-1)) {
				switch(mit){
                case 1:
                    System.out.println("Add meg az azonosítot! ");
                    String azonosito = sc.next();
                    adatok[i].aznosito= azonosito;
                    break;

                case 2:
                    System.out.println("Add meg az új nevet! ");
                    String nev = sc.next();
                    adatok[i].nev=nev;
                    break;
                default: System.out.println("Nincs ilyen opcio, kilepes.."); System.exit(-1);
            }
			}
			
			myWriter.write(adatok[i].aznosito + " " + adatok[i].nev + "\n");
			myWriter.flush();
			
		}
		
		myWriter.close();
		
		
	}

}