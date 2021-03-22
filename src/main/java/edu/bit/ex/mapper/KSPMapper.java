package edu.bit.ex.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import edu.bit.ex.vo.InquiryVO;
import edu.bit.ex.vo.MbrVO;
import edu.bit.ex.vo.PrdctVO;

@Mapper
public interface KSPMapper {

	@Select("select * from mbr where mbr_id=#{m_id}")
	public MbrVO getMemberInfo(String s_id);

	@Select("select * from mbr where mbr_name=#{search}")
	public MbrVO getMemberInfoByName(String search);

	@Select("select * from Inquiry")
	public List<InquiryVO> getInquiry();

	@Select("select * from prdct where mbr_id=#{b_id}")
	public List<PrdctVO> getPrdctList(String b_id);

	@Select("select * from prdct where prdct_name=#{search}")
	public List<PrdctVO> getSearchResult(String search);

	@Select("select * from mbr where authority_number=#{auth}")
	public List<MbrVO> getMemberList(int auth);

}