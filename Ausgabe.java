import java.io.FileOutputStream;

import javax.xml.transform.Transformer;
import javax.xml.transform.TransformerFactory;

public class ausgabe {

	public static void main(String[] args) {
		try {

			TransformerFactory tFactory = TransformerFactory.newInstance();

			Transformer transformer = tFactory.newTransformer(new javax.xml.transform.stream.StreamSource("XSLT.xsl"));

			transformer.transform(new javax.xml.transform.stream.StreamSource("124768_1.xml"),
					new javax.xml.transform.stream.StreamResult(new FileOutputStream("unsichereBuchstaben.html")));
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
