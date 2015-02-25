package model.service;

import java.util.List;

import model.domain.MeetingDTO;
import model.domain.MemberDTO;
import model.domain.PayDTO;


public interface MeetingService {
	int insertPay(PayDTO payDTO);
	int insertMeeting(MeetingDTO meetingDTO);
	List<MeetingDTO> meetingList(MeetingDTO md);
	MeetingDTO selectMeetNo(MeetingDTO md);
}
