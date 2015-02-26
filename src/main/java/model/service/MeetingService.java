package model.service;

import java.util.List;

import model.domain.MeetingDTO;
import model.domain.PayDTO;


public interface MeetingService {
	int insertPay(PayDTO payDTO);
	int insertMeeting(MeetingDTO meetingDTO);
	List<MeetingDTO> meetingList(int memno);
	MeetingDTO selectMeetNo(MeetingDTO md);
	List<MeetingDTO> meetingList(MeetingDTO md);
	int deleteMeeting(MeetingDTO md);
	MeetingDTO meetSelectNum(int meetno);
}
