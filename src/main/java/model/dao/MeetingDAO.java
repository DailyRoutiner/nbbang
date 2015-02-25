package model.dao;

import java.util.List;

import model.domain.MeetingDTO;
import model.domain.MemberDTO;
import model.domain.PayDTO;

public interface MeetingDAO {
	int insertPay(PayDTO payDTO);

	int insertMeeting(MeetingDTO meetingDTO);

	List<MeetingDTO> meetingList(MeetingDTO md);
	
	MeetingDTO selectMeetNo(MeetingDTO md);
}
