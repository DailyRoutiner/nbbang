package model.dao;

import java.util.List;

import model.domain.MeetingDTO;
import model.domain.PayDTO;

public interface MeetingDAO {
	int insertPay(PayDTO payDTO);

<<<<<<< HEAD
	int insertMeeting(MeetingDTO meetingDTO);

	List<MeetingDTO> meetingList(int memno);
=======
	MeetingDTO selectMeetNo(String id);

	int insertMeeting(MeetingDTO meetingDTO);

	List<MeetingDTO> selectAll(String id);
>>>>>>> master
}
