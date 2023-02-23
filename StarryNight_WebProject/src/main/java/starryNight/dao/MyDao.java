package starryNight.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import starryNight.vo.Member;
import starryNight.vo.MemberOrder;

@Repository
public interface MyDao {
	
	/*회원 정보 조회*/
	public Member getMember(int member_no);

	/*회원 정보 수정*/
	public void updateMember(Member memUpt);

	/*회원 주문 정보 조회*/
	public List<MemberOrder> memberOrderList(int member_no);
}
