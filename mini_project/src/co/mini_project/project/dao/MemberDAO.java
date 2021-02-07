package co.mini_project.project.dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import co.mini_project.project.common.DAO;
import co.mini_project.project.vo.MemberVO;

public class MemberDAO extends DAO {
	private PreparedStatement psmt;
	private ResultSet rs;

	public ArrayList<MemberVO> memberSelectList() { // 멤버 리스트 조회
		ArrayList<MemberVO> list = new ArrayList<MemberVO>();
		MemberVO vo;
		String sql = "SELECT * FROM MEMBER ORDER BY 1";
		try {
			psmt = conn.prepareStatement(sql);
			rs = psmt.executeQuery();
			while (rs.next()) {
				vo = new MemberVO();
				vo.setAuth(rs.getString("auth"));
				vo.setmId(rs.getString("mId"));
				vo.setmPassword(rs.getString("mPassword"));
				vo.setmName(rs.getString("mName"));
				vo.setmBirth(rs.getString("mBirth"));
				vo.setmTel(rs.getString("mTel"));
				vo.setmAdr(rs.getString("mAdr"));
				vo.setmEmail(rs.getString("mEmail"));

				list.add(vo);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return list;
	}

	public int memberInsert(MemberVO vo) { // 회원가입
		int n = 0;
		String sql = "INSERT INTO MEMBER(MNAME, MEMAIL, MADR, MTEL, MID, MPASSWORD, MBIRTH) VALUES (?, ?, ?, ?, ?, ?, ?)";
		try {
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, vo.getmName());
			psmt.setString(2, vo.getmEmail());
			psmt.setString(3, vo.getmAdr());
			psmt.setString(4, vo.getmTel());
			psmt.setString(5, vo.getmId());
			psmt.setString(6, vo.getmPassword());
			psmt.setString(7, vo.getmBirth());
			n = psmt.executeUpdate();

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return n;
	}

	public int memberUpdate(MemberVO vo) { // 멤버 리스트 멤버 수정
		int n = 0;
		String sql = "UPDATE MEMBER SET MNAME = ?, MBIRTH = ?, MTEL = ?, MADR = ?, MEMAIL = ? WHERE MID = ?";
		try {
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, vo.getmName());
			psmt.setString(2, vo.getmBirth());
			psmt.setString(3, vo.getmTel());
			psmt.setString(4, vo.getmAdr());
			psmt.setString(5, vo.getmEmail());
			psmt.setString(6, vo.getmId());
			n = psmt.executeUpdate();

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return n;
	}

	public int memberDelete(MemberVO vo) { // 멤버 리스트 멤버 삭제
		int n = 0;
		String sql = "DELETE FROM MEMBER WHERE MID = ? ";
		try {
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, vo.getmId());
			n = psmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return n;
	}
	
	public MemberVO login(MemberVO vo) { // 로그인
		String sql = "SELECT * FROM MEMBER WHERE MID = ? AND MPASSWORD = ?";
		try {
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, vo.getmId());
			psmt.setString(2, vo.getmPassword());
			rs = psmt.executeQuery();
			if(rs.next()) {
				vo = new MemberVO();
				vo.setAuth(rs.getString("auth"));
				vo.setmId(rs.getString("mId"));
				vo.setmPassword(rs.getString("mPassword"));
				vo.setmName(rs.getString("mName"));
				vo.setmBirth(rs.getString("mBirth"));
				vo.setmTel(rs.getString("mTel"));
				vo.setmAdr(rs.getString("mAdr"));
				vo.setmEmail(rs.getString("mEmail"));
			}
		}catch(SQLException e) {
			e.printStackTrace();
		}finally {
			close();
		}
		return vo;
	}
	
	public boolean isIdCheck(String id) { // 로그인 ID중복확인
		boolean bool = true;
		String sql = "SELECT MID FROM MEMBER WHERE MID = ?";
		try {
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, id);
			rs = psmt.executeQuery();
			if(rs.next()) {
				bool = false;
			}
		} catch(SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}
		
		return bool;
	}
	
	private void close() {
		try {
			if (rs != null)
				rs.close();
			if (psmt != null)
				psmt.close();
			if (conn != null)
				conn.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
}
