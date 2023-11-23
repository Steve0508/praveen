import java.io.*;
import java.io.IOException;
import javax.xml.parsers.*;
import javax.xml.transform.*;
import javax.xml.transform.TransformerFactory;
import javax.xml.transform.stream.*;
class XSLTransform
{
  public static void main(String args[])
  {
      try
      {
TransformerFactory tFactory=TransformerFactory.newInstance();
Transformer transformer=tFactory.newTransformer(new StreamSource(new 
                                                                                                      File(args[0])));
transformer.transform(new StreamSource(new File(args[1])),new StreamResult(System.out));
       }
      catch(Exception e)
      {
e.printStackTrace();
      }
     return;
    }
}
