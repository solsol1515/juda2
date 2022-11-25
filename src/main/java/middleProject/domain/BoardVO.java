package middleProject.domain;

import java.util.Date;

import lombok.Data;

@Data // constructor, setter & getter 포함 
public class BoardVO {

	private int q_id;					// 글 번호
	private String q_title;			// 제목
	private String member_id;	// 작성자
	private String q_content;		// 글 내용
	private Date q_date;			// 작성일
	private int view_count;		// 조회수
	private String q_category;	// 항목(문의_카테고리)
	private String q_reply;			// 댓글

	// private String searchCondition;
	// private Stirng searchKeyword;
}