package starryNight.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import starryNight.dao.MemberDao;
import starryNight.vo.Member;

@Service
public class MemberService {

	@Autowired(required=false)
	private MemberDao dao;
	
	public List<Member> memberList(Member sch){
		return dao.memberList(sch);
	}
	public void insertMember(Member ins) {
		dao.insertMember(ins);
	}
	public void deleteMember(String email) {
		dao.deleteMember(email);
	}
}
