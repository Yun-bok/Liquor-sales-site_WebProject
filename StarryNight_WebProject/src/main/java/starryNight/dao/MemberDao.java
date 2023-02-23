package starryNight.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import starryNight.vo.Member;

@Repository
public interface MemberDao {
	
	public List<Member> memberList(Member sch);
	
	public void insertMember(Member ins);
	
	public void deleteMember(String email);
	
}
