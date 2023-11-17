package member.dao;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import comm.dao.MyBatisDao;
import member.controller.MemInfo;
import member.vo.MemberVO;

public class MemberDaoImpl extends MyBatisDao implements IMemberDao {

    private static IMemberDao dao;

    // 서비스측에서 호출할 dao객체 생성하기 - 싱글톤방식으로
    // 1. private constructor
    private MemberDaoImpl() {}

    // 2. static method
    public static IMemberDao getInstance() {
        if (dao == null) dao = new MemberDaoImpl();
        return dao;
    }

    @Override
    public String loginChk(Map<String, Object> map) throws SQLException {
        return selectOne("mem.loginChk", map);
    }

    @Override
    public String AdminChk(Map<String, Object> map) throws SQLException {
        return selectOne("mem.AdminChk", map);
    }

    @Override
    public String IdChk(Map<String, Object> map) throws SQLException {
        return selectOne("mem.IdChk", map);
    }

    @Override
    public MemberVO MemInfo(String memId) throws SQLException {
        MemberVO mv = selectOne("mem.MemInfo", memId);
        System.out.println("넘어온 memId: " + memId);

        if (mv == null) {
            System.out.println("회원 정보(daoimpl)가 null입니다.");
        } else {
            System.out.println("회원 정보(daoimpl): " + mv);
        }
    	return mv;
    }
    
    @Override
	public List<MemberVO> getAllMember() {
		List<MemberVO> memList = new ArrayList<MemberVO>();
		
		memList = selectList("mem.getAllMember");
		
		return memList;
	}
}
