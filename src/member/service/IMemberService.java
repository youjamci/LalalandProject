package member.service;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import member.controller.MemInfo;
import member.vo.MemberVO;

public interface IMemberService {

    // 접근제한자 반환타입 메소드명(매개변수)

    // 로그인 체크(id-pw검증)
    public String loginChk(Map<String, Object> map);

    public String AdminChk(Map<String, Object> map);

    public String IdChk(Map<String, Object> map);

    public MemberVO MemInfo(String memId) throws SQLException;

	public List<MemberVO> getAllMember();
}
