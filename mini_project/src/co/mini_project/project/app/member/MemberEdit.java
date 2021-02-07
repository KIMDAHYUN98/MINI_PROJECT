package co.mini_project.project.app.member;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.mini_project.project.common.Command;
import co.mini_project.project.dao.MemberDAO;
import co.mini_project.project.vo.MemberVO;

public class MemberEdit implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		// TODO 'memberEdit.do'

		MemberDAO dao = new MemberDAO();
		MemberVO vo = new MemberVO();

		vo.setmId(request.getParameter("mIde"));
		vo.setmName(request.getParameter("mNamee"));
		vo.setmBirth(request.getParameter("mbirthdaye"));
		vo.setmEmail(request.getParameter("mEmaile"));
		vo.setmTel(request.getParameter("mTele"));
		vo.setmAdr(request.getParameter("mAdre"));

		int n = dao.memberUpdate(vo);
		String viewPage = "memberList.do";

		if (n == 0) {
			viewPage = "member/memberEditFail";
		}

		return viewPage;
	}

}
