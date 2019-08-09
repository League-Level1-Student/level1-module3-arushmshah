package Project;
import java.awt.Button;
import java.net.URL;

import javax.swing.Icon;
import javax.swing.ImageIcon;
import javax.swing.JButton;
import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.JPanel;

public class SHAHFLIX {

void flix() {
	JLabel Label = new JLabel();
	//JButton Button = loadImage("download.jpg");
	JFrame Frame = new JFrame();
	JPanel Panel = new JPanel();
	
	Frame.add(Panel);
	Frame.setVisible(true);
	Frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
	Panel.add(Label);
	Panel.add(Button);
	Frame.setSize(500, 500);
	
}
public static void main(String[] args) {
SHAHFLIX shah = new SHAHFLIX();

shah.flix();
	
	
	
	
	
}
private JButton loadImage(String fileName) {
URL imageURL = getClass().getResource(fileName);
Icon icon = new ImageIcon(imageURL);
	return new JButton(icon);
}


}