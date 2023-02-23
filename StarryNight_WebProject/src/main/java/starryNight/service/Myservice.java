package starryNight.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import starryNight.dao.MyDao;
import starryNight.vo.Member;
import starryNight.vo.MemberOrder;

@Service
public class Myservice {

	@Autowired
	private MyDao dao;
	
	public Member getMember(int member_no) {
		return dao.getMember(member_no);
	}
	
	public Member updateMember(Member memUpt) {
		dao.updateMember(memUpt);
		return dao.getMember(memUpt.getMember_no());
	}
	
	public List<MemberOrder> memberOrderList(int member_no){
		return dao.memberOrderList(member_no);
	};
	
	
}
