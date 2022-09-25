import java.io.EOFException;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;

public class F023QC_2_9 implements Serializable {

	private static int db = 0;

	public static void main(String[] args) {

		beir();
		try {
			atlag();
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		}
		try {
			legdragabb();
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		}
		

	}

	private static final long serialVersionUID = 1L;
	String rsz;
	String tipus;
	int ar;

	public F023QC_2_9(String r, String t, int a) {
		this.rsz = r;
		this.tipus = t;
		this.ar = a;
	}

	public static void beir() {
		F023QC_2_9[] autoim = {  new F023QC_2_9("BDS131", "Mercedes", 340000), new F023QC_2_9("ASR132", "Opel", 230003),
        new F023QC_2_9("RBC143", "Honda", 3894000)};

		db = autoim.length;

		try {
			ObjectOutputStream kifile = new ObjectOutputStream(new FileOutputStream("Autok.dat"));
			for (F023QC_2_9 auto : autoim) {
				kifile.writeObject(auto);
			}
			kifile.close();
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("Hiba a fAjl megnyitasa soran!\n");
		}
		System.out.println("OK");
	}

	public static void atlag() throws FileNotFoundException {

		int szum = 0;
		F023QC_2_9 ma;
		try {
			File fn = new File("Autok.dat");
			if (fn.exists()) {
				ObjectInputStream kifile = new ObjectInputStream(new FileInputStream("Autok.dat"));
				try {
					while (true) {
						ma = (F023QC_2_9) kifile.readObject();
						szum = szum + ma.ar;
					}
				} catch (EOFException ee) {
					ma = null;
				}
				kifile.close();
			}
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("Hiba a fajl megnyitasa soran!\n");
		}
		
		System.out.println("Az autok atlagara: " + szum/db);

	}

	
	public static void legdragabb() throws FileNotFoundException {

		F023QC_2_9 ma;
		try {
			File fn = new File("Autok.dat");
			if (fn.exists()) {
				F023QC_2_9 max;
				ObjectInputStream kifile = new ObjectInputStream(new FileInputStream("Autok.dat"));
				max = (F023QC_2_9)kifile.readObject();
				try {
					while (true) {
						ma = (F023QC_2_9) kifile.readObject();
						if(ma.ar>max.ar) {
							max = ma;
						}
					}
				} catch (EOFException ee) {
					ma = null;
				}
				kifile.close();
				System.out.println("A legdragabb auto rendszama: " + max.rsz + " �ra: " + max.ar);
			}
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("Hiba a fajl megnyitasa soran!\n");
		}
		

	}

}