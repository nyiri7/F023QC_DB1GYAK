
import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.FileWriter;
import java.io.InputStreamReader;
public class F023QC_2_3{

	public static void main(String[] args) {

		olvasas();
	}

	public static void olvasas() {
		String sor;
		String[] szavak;
		int sorid = 0;
		try {

			BufferedReader br = new BufferedReader(new InputStreamReader(System.in));
			BufferedWriter bw = null;
			
			
			
			while (sorid >= 0) {
				sor = br.readLine();
				if (sorid == 0) {
					bw = new BufferedWriter(new FileWriter(sor));
				} else {
					bw.write(sor);
					bw.newLine();
					
					
					
				}
				sorid = sorid + 1;
				szavak = sor.split(" ");
				for (String sz : szavak) {
					if (sz.compareTo("end") == 0) {
						br.close();
						sorid = -1;
					}
				}
			}
			bw.close();
			System.out.println("Ok");
		} catch (Exception ee) {
			ee.printStackTrace();
		}
				
	}

}