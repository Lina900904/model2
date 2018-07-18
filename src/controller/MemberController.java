package controller;

import java.io.IOException;
import java.util.List;

import enums.Action;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import command.Carrier;
import command.Sentry;
import domain.MemberBean;
import service.MemberServiceImpl;

@WebServlet( "/member.do")
public class MemberController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String action =request.getParameter("action");
		String page = request.getParameter("page");
		Sentry.init(request);
		
				
			switch(Action.valueOf(Sentry.cmd.getAction().toUpperCase())) {
			case MOVE :

				try {
					System.out.println("무브안으로 진입");
					Carrier.send(request, response);
				} catch (Exception e) {
					e.printStackTrace();
				}
				break;
			case JOIN: 
				System.out.println("조인안으로 진입");
				MemberBean joinm = new MemberBean();			 
				joinm.setId(request.getParameter("userid"));
				joinm.setName(request.getParameter("name"));
				joinm.setPassword(request.getParameter("password"));
				joinm.setSsn(request.getParameter("ssn"));
				response.sendRedirect(request.getContextPath()
						+"/member.do?action=move&page=user_login_form");
				// MemberServiceImpl.getInstance().membercreateJoin(joinm);	
			
				break;
			default:
				break;
				
	/*		case "memberlist": 
				List<MemberBean> lst = MemberServiceImpl.getInstance().memberList();
				break;
			case "serchMemberByTeam": 
				List<MemberBean> teamList = 
				MemberServiceImpl.getInstance().memberfindByName(request.getParameter("teamid"));
				break;
			case "serchMemberById": 
			
				MemberServiceImpl.getInstance().memberfindById(request.getParameter("id"));
				break;
			case "memberCount": 
				MemberServiceImpl.getInstance().memberCount();
				
				break;
			case "memberUpdate": 
				MemberBean mem= new MemberBean();
				mem.setId(request.getParameter("id"));
				mem.setPassword(request.getParameter("pass")+"/"+ request.getParameter("newpass"));
				break;
			case "memberDelete": 
				MemberBean dm = new MemberBean();
				dm.setId(request.getParameter("id"));
				dm.setPassword(request.getParameter("pass"));
				MemberServiceImpl.getInstance().memberDelete(dm);
				break;
			case "login": 
				MemberBean lom= new MemberBean();
				lom.setId(request.getParameter("userid"));
				lom.setPassword(request.getParameter("password"));
				break;
			
				
			
				default: break;*/

	}

			}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

}
