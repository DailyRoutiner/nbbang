package model.dao;

import java.util.List;

import model.domain.MeetingDTO;
import model.domain.PayDTO;

public interface MeetingDAO {
	int insertPay(PayDTO payDTO);

	int insertMeeting(MeetingDTO meetingDTO);

	List<MeetingDTO> meetingList(int memno);
	
    MeetingDTO selectMeetNo(MeetingDTO md);
	
	int deleteMeeting(MeetingDTO md);

	MeetingDTO meetSelectNum(int meetno);
}
