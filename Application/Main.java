import java.net.DatagramPacket;
import java.net.DatagramSocket;
import java.net.SocketException;
import java.io.IOException;

public class Main
{
	
	private static final int UDP_SERVER_PORT = 2000;
    private static final int MAX_UDP_DATAGRAM_LEN = 1500;
	
	public static void main(String[] args)
	{
		String lText;
    	byte [] lMsg = new byte [MAX_UDP_DATAGRAM_LEN];
    	DatagramPacket dp = new DatagramPacket(lMsg, lMsg.length);
    	DatagramSocket ds = null;
    	try
		{
			ds = new DatagramSocket (UDP_SERVER_PORT);
			//disable timeout for testing
			//ds.setSoTimeout(100000);
			ds.receive (dp);
			lText = new String (lMsg, 0, dp.getLength());
			System.out.println ("UDP packet received" + lText);
			//textView.setText(lText);
		}
		catch (SocketException e)
		{
			e.printStackTrace();
		}
		catch (IOException e)
		{
			e.printStackTrace();
		}
		finally
		{
			if (ds != null)
			{
				ds.close();
			}
		}
	}
}
