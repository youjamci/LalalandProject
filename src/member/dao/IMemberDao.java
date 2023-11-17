package member.dao;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import comm.dao.MyBatisDao;
import member.controller.MemInfo;
import member.vo.MemberVO;

public interface IMemberDao {

    // 로그인 체크(id-pw검증)
    // 나를 호출하는 service측에 예외사항처리를 전가함
    public String loginChk(Map<String, Object> map) throws SQLException;

    public String AdminChk(Map<String, Object> map) throws SQLException;

    public String IdChk(Map<String, Object> map) throws SQLException;

    public MemberVO MemInfo(String memId) throws SQLException;

	public List<MemberVO> getAllMember();
}
