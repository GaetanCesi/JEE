package servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import java.util.ArrayList;
import mesclass.Message;
/**
 * Servlet implementation class chatroom
 */
@WebServlet("/chatroom")
public class chatroom extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public static ArrayList<Message> messages; 
    /**
     * @see HttpServlet#HttpServlet()
     */
    public chatroom() {
        super();
        // TODO Auto-generated constructor stub
    }

    @Override
    public void init() throws ServletException {
    	// TODO Auto-generated method stub
    	super.init();
    	messages =  new ArrayList<Message>();
    	
    }
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setAttribute("messages", messages);
		request.getRequestDispatcher("chatroom.jsp").forward(request, response);
		//doGet(request, response);
		//response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		if(request.getSession().getAttribute("login")!= null && request.getParameter("txtmessage")!=null ) {
			String login = (String)request.getSession().getAttribute("login");
			String message = request.getParameter("txtmessage");
			System.out.println(message);
			messages.add(new Message(login,message));
			System.out.println(messages.get(0).getText());
			doGet(request, response);
		}else {
			doGet(request, response);
		}
		
		
	}

}
