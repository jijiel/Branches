package edu.bit.ex.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import edu.bit.ex.joinvo.MbrShippingVO;
import edu.bit.ex.joinvo.PrdctOrderDetailVO;
import edu.bit.ex.joinvo.PrdctRegisterImageVO;
import edu.bit.ex.page.SearchCriteria;
import edu.bit.ex.vo.BoardVO;
import edu.bit.ex.vo.MbrVO;
import edu.bit.ex.vo.OrderStateVO;
import edu.bit.ex.vo.PrdctOrderVO;
import edu.bit.ex.vo.PrdctVO;
import edu.bit.ex.vo.ShippingVO;

@Mapper
public interface SellerMapper {

	// 상품 정보 불러오기
	public List<PrdctOrderDetailVO> getProduct();

	// 게시판 정보 불러오기
	public List<BoardVO> getBoard(SearchCriteria cri);

	// 판매자 정보 불러오기
	public MbrVO getMemberInfo(String s_id);

	// 판매자 정보 수정
	public void sellerInfoUpdate(MbrShippingVO mavo);

	// 상품 수정
	public void prdctContentUpdate(PrdctRegisterImageVO prvo);

	// 상품 삭제
	public void prdctDelete(String prdct_id);

	public PrdctVO getOption(String getPrdct_id);

	// 상품 등록
	public void setPrdctImage(PrdctRegisterImageVO pvo);

	// 판매자 주소 불러오기 (상품 등록시)
	public ShippingVO getAddress(String getMbr_id);

	// 게시글 내용 불러오기(상품 수정시)
	public BoardVO getContent(String getPrdct_id);

	// 상품 등록글 불러오기 - 내림차순 (상품 조회시)
	public List<PrdctRegisterImageVO> getSellerPrdct(SearchCriteria cri);

	// 상품q&a 게시글 총 수 불러오기
	public int getTotal(SearchCriteria cri);

	// 상품조회 게시글 총 수 불러오기(상품조회시)
	public int getPrdTotal(SearchCriteria cri);

	// 상품 수정하기
	public void updatePrdctInfo(PrdctRegisterImageVO prvo);

	// 상품 수정시 상품정보 불러오기
	public PrdctVO getPrdctInfo(String prdct_id);

	// 상품 등록
	public void prdInsert(PrdctRegisterImageVO pvo);

	// 새주문 알림
	public List<PrdctOrderDetailVO> newOrderAlarm();

	// 주문 취소 알림
	public OrderStateVO cancelAlarm();

	// 교환요청 알림
	public OrderStateVO changeAlarm();

	// 환불요청 알림
	public OrderStateVO refundAlarm();

	// 주문확인
	public List<PrdctOrderDetailVO> OrderCheck(SearchCriteria cri);

	// 페이징
	public int OrderCheckTotal(SearchCriteria cri);

	// 배송대기
	public List<PrdctOrderDetailVO> shipping(SearchCriteria cri);

	// 페이징
	public int deliveryTotal(SearchCriteria cri);

	// 주문취소
	public List<PrdctOrderDetailVO> getCancel(SearchCriteria cri);

	// 페이징
	public int cancelTotal(SearchCriteria cri);

	// 환불
	public List<PrdctOrderDetailVO> getRefund(SearchCriteria cri);

	// 페이징
	public int refundTotal(SearchCriteria cri);

	// 교환
	public List<PrdctOrderDetailVO> exchange(SearchCriteria cri);

	// 페이징
	public int exchangeTotal(SearchCriteria cri);

	// 주문상태
	public void updateState(PrdctOrderDetailVO povo);

	// 주문상세정보불러오기
	public PrdctOrderVO orderInfo(String order_number);

	public List<PrdctOrderDetailVO> orderOption(String order_number);

}