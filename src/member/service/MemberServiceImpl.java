package member.service;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;
import javax.websocket.Session;

import member.controller.MemInfo;
import member.dao.IMemberDao;
import member.dao.MemberDaoImpl;
import member.vo.MemberVO;

public class MemberServiceImpl implements IMemberService {

    private IMemberDao dao;

    private static IMemberService service;

    // 1
    private MemberServiceImpl() {
        dao = MemberDaoImpl.getInstance();
    }

    // 2
    public static IMemberService getInstance() {
        if (service == null) service = new MemberServiceImpl();
        return service;
    }

    @Override
    public String loginChk(Map<String, Object> map) {
        String memId = "";
        try {
            // dao에게 정보 반환 받기
            memId = dao.loginChk(map);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return memId;
    }

    @Override
    public String AdminChk(Map<String, Object> map) {
        String memId = "";
        try {
            // dao에게 정보 반환 받기
            memId = dao.AdminChk(map);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return memId;
    }

    @Override
    public String IdChk(Map<String, Object> map) {
        String memId = "";
        try {
            // dao에게 정보 반환 받기
            memId = dao.IdChk(map);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return memId;
    }

    @Override
    public MemberVO MemInfo(String memId) throws SQLException {
//        MemberVO memberInfo = null;
//            memberInfo = dao.MemInfo(memId);
//        return memberInfo;
    	return dao.MemInfo(memId);
    }

	@Override
	public List<MemberVO> getAllMember() {
		// TODO Auto-generated method stub
		return dao.getAllMember();
	}

}
