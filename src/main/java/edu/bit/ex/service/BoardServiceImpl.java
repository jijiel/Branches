package edu.bit.ex.service;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.util.List;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import edu.bit.ex.joinvo.BoardBoardCommentVO;
import edu.bit.ex.joinvo.BoardPrdctImageVO;
import edu.bit.ex.mapper.BoardMapper;
import edu.bit.ex.page.MagazineCommentCriteria;
import edu.bit.ex.page.MagazineCriteria;
import edu.bit.ex.page.NoticeCriteria;
import edu.bit.ex.vo.BoardCommentVO;
import edu.bit.ex.vo.BoardVO;
import edu.bit.ex.vo.PrdctImageVO;
import lombok.AllArgsConstructor;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@AllArgsConstructor
@Service
public class BoardServiceImpl implements BoardService {
	private BoardMapper boardMapper;
	// 매거진 썸네일 저장 경로
	private static final String MGZ_THUMBNAIL_PATH = "D:/Others/Programming/Project Space/branches/branches_project/src/main/resources/static/board_img/thumbnail/";
	// 매거진 본문 이미지 저장 경로
	private static final String MGZ_IMAGE_PATH = "D:/Others/Programming/Project Space/branches/branches_project/src/main/resources/static/board_img/";

	// 페이징을 적용한 공지사항 게시판 리스트
	@Override
	public List<BoardVO> getNoticeList(NoticeCriteria cri) {
		log.info("getNoticeList WITH criteria: " + cri);
		return boardMapper.getNoticeListWithPaging(cri);
	}

	// 페이징 단위에 적용되는 최대 공지 게시글 단위
	@Override
	public int getNoticeTotal(NoticeCriteria cri) {
		log.info("getNoticeTotal WITH criteria: " + cri);
		return boardMapper.getNoticeTotalCount(cri);
	}

	// 공지사항 작성
	@Override
	public void setNoticeWrite(BoardVO boardVO) {
		log.info("setNoticeWrite");
		boardMapper.setNoticeWrite(boardVO);
	}

	// 공지사항 게시글
	@Override
	public BoardVO getNoticeContent(int board_id) {
		log.info("getNoticeContent");
		return boardMapper.getNoticeContent(board_id);
	}

	// 공지사항 삭제
	@Override
	public int noticeRemove(int board_id) {
		log.info("noticeRemove: " + board_id);
		return boardMapper.noticeRemove(board_id);
	}

	// 공지사항 수정
	@Override
	public void setNoticeModify(BoardVO boardVO) {
		log.info("setNoticeModify");
		boardMapper.setNoticeModify(boardVO);
	}

	// 페이징을 적용한 매거진 게시판 리스트
	@Override
	public List<BoardPrdctImageVO> getMagazineList(MagazineCriteria cri) {
		log.info("getMagazineList WITH criteria: " + cri);
		return boardMapper.getMagazineListWithPaging(cri);
	}

	// 페이징 단위에 적용되는 최대 매거진 게시글 단위
	@Override
	public int getMagazineTotal(MagazineCriteria cri) {
		log.info("getMagazineTotal WITH criteria: " + cri);
		return boardMapper.getMagazineTotalCount(cri);
	}

	// 매거진 작성
	@Override
	public void setMagazineWrite(BoardPrdctImageVO bPrdctImageVO) {
		log.info("setMagazineWrite");
		boardMapper.setMagazineWrite(bPrdctImageVO);
	}

	// 매거진 썸네일 첨부 작성
	@Override
	public void setMagazineImage(MultipartFile file) {
		// 파일 경로 설정
		// String uploadPath = request.getSession().getServletContext().getRealPath("/resources/static/board_img/");

		// 파일 이름 변경(중복방지)
		UUID uuid = UUID.randomUUID();
		String saveName = uuid + "_" + file.getOriginalFilename();
		log.info("image_name: ", saveName);

		// 저장할 File 객체를 생성(껍데기 파일)
		// 저장할 폴더 이름, 저장할 파일 이름
		File saveFile = new File(MGZ_THUMBNAIL_PATH, saveName);
		// File saveFile = new File(uploadPath, saveName);

		try {
			// 업로드 파일에 saveFile이라는 껍데기 입힘
			file.transferTo(saveFile);
		} catch (IOException e) {
			e.printStackTrace();
		}

		boardMapper.setMagazineImage(saveName);
	}

	// 매거진 첨부사진 업로드
	@Override
	public void magazineImageUpload(HttpServletRequest request, HttpServletResponse response, MultipartFile upload) throws Exception {
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=utf-8");

		// 업로드한 파일 이름 변경(중복방지)
		UUID uuid = UUID.randomUUID();
		String fileName = uuid + "_" + upload.getOriginalFilename();
		log.info("image_name: ", fileName);

		// 파일을 바이트 배열로 변환
		byte[] bytes = upload.getBytes();

		// 이미지를 업로드할 디렉토리(배포 디렉토리로 설정)
		OutputStream out = new FileOutputStream(new File(MGZ_IMAGE_PATH + fileName));

		// 서버로 업로드
		out.write(bytes);
		// 클라이언트에 결과 표시
		String callback = request.getParameter("CKEditorFuncNum");

		// 서버=>클라이언트로 텍스트 전송(자바스크립트 실행)
		PrintWriter printWriter = response.getWriter();

		String fileUrl = request.getContextPath() + "/board_img/" + fileName;

		printWriter.println("<script>window.parent.CKEDITOR.tools.callFunction(" + callback + ",'" + fileUrl + "','이미지가 업로드되었습니다.')" + "</script>");
		printWriter.flush();
	}

	// 매거진 게시글
	@Override
	public BoardVO getMagazineContent(int board_id) {
		log.info("getMagazineContent");
		boardMapper.upMagazineHit(board_id); // 매거진 게시글 조회
		return boardMapper.getMagazineContent(board_id);
	}

	// 매거진 게시글 썸네일 리스트
	@Override
	public List<PrdctImageVO> getMagazineImage(int board_id) {
		log.info("getMagazineImage");
		return boardMapper.getMagazineImage(board_id);
	}

	// 매거진 게시글 추천
	@Override
	public int magazineUpLike(int board_id) {
		log.info("magazineUpHit");
		return boardMapper.magazineUpLike(board_id);
	}

	// 매거진 게시글 댓글 수
	@Override
	public BoardCommentVO getMagazineCommentCnt(int board_id) {
		log.info("getMagazineCommentCnt");
		return boardMapper.getMagazineCommentCnt(board_id);
	}

	// 페이징을 적용한 매거진 게시글 댓글 리스트
	@Override
	public List<BoardBoardCommentVO> getMagazineComment(String mbr_id, int board_id, MagazineCommentCriteria cri) {
		log.info("getMagazineComment WITH criteria: " + cri);
		return boardMapper.getMagazineComment(mbr_id, board_id, cri);
	}

	// 페이징 단위에 적용되는 최대 매거진 게시글 댓글 단위
	@Override
	public int getMagazineCommentTotal(MagazineCommentCriteria cri) {
		log.info("getMagazineCommentTotal WITH criteria: " + cri);
		return boardMapper.getMagazineCommentTotalCount(cri);
	}

	// 매거진 게시글 댓글 작성
	@Override
	public void setMagazineCommentWrite(BoardBoardCommentVO boardBoardCommentVO) {
		log.info("setMagazineCommentWrite");
		boardMapper.setMagazineCommentWrite(boardBoardCommentVO);
	}

	// 매거진 게시글 댓글 삭제
	@Override
	public int magazineCommentRemove(int comment_id) {
		log.info("magazineCommentRemove: " + comment_id);
		return boardMapper.magazineCommentRemove(comment_id);
	}

	// 매거진 삭제
	@Override
	public int magazineRemove(int board_id) {
		log.info("magazineRemove: " + board_id);
		return boardMapper.magazineRemove(board_id);
	}

	// 매거진 썸네일 삭제(썸네일만 삭제시)
	@Override
	public int magazineImageOnlyRemove(int board_id, String onedeletefiles) {
		String image_name = onedeletefiles;
		log.info("image_name: ", image_name);

		// 삭제할 File 객체를 생성(껍데기 파일)
		// 삭제할 폴더 이름, 삭제할 파일 이름
		File deleteFile = new File(MGZ_THUMBNAIL_PATH, image_name);

		// 해당 파일이 존재하면 삭제
		if (deleteFile.exists() == true) {
			deleteFile.delete();
		}

		return boardMapper.magazineImageOnlyRemove(board_id, image_name);
	}

	// 매거진 썸네일 삭제(게시판이랑 같이 삭제시)
	@Override
	public int magazineImageRemove(int board_id, String deletefiles) throws IOException {
		String image_name = deletefiles;
		log.info("image_name: ", image_name);

		// 삭제할 File 객체를 생성(껍데기 파일)
		// 삭제할 폴더 이름, 삭제할 파일 이름
		File deleteFile = new File(MGZ_THUMBNAIL_PATH, image_name);

		// 해당 파일이 존재하면 삭제
		if (deleteFile.exists() == true) {
			deleteFile.delete();
		}

		return boardMapper.magazineImageRemove(board_id, image_name);
	}

	// 매거진 수정
	@Override
	public void setMagazineModify(BoardPrdctImageVO bPrdctImageVO) {
		log.info("setMagazineModify");
		boardMapper.setMagazineModify(bPrdctImageVO);
	}

	// 매거진 수정페이지 썸네일 추가
	@Override
	public void setMagazineModifyAddImg(int board_id, MultipartFile file) {
		// 파일 이름 변경(중복방지)
		UUID uuid = UUID.randomUUID();
		String uploadfiles = uuid + "_" + file.getOriginalFilename();
		log.info("image_name: ", uploadfiles);

		// 저장할 File 객체를 생성(껍데기 파일)
		// 저장할 폴더 이름, 저장할 파일 이름
		File saveFile = new File(MGZ_THUMBNAIL_PATH, uploadfiles);

		try {
			// 업로드 파일에 saveFile이라는 껍데기 입힘
			file.transferTo(saveFile);
		} catch (IOException e) {
			e.printStackTrace();
		}

		boardMapper.setMagazineModifyAddImg(board_id, uploadfiles);
	}
}