package service;

import java.util.List;

import paging.SearchCriteria;
import vo.CartVO;
import vo.ClientVO;

public interface ClientService {
	
	int deleteCart(CartVO vo); // 회원장바구니 항목 삭제
	int updateCart(CartVO vo); // 회원장바구니 수량변경
	List<CartVO> selectCartbyClient(CartVO vo); // 회원장바구니 조회
	int insertCart(CartVO vo); // 회원 장바구니 항목추가
	
	ClientVO selectOne(ClientVO vo); //고객 정보 1건 출력
	List<ClientVO> searchClientList(SearchCriteria cri); //고객정보 search
	
}