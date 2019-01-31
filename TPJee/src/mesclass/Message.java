package mesclass;

public class Message {
	
	private String login;
	private String text;
	
	public Message(String login,String text) {
		this.login = login;
		this.text = text;
	}
	
	public String getText() {
		return text;
	}
	
	public String getLogin() {
		return login;
	}


}
