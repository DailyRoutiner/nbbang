package model.service;


import java.util.List;

import javax.annotation.Resource;

import model.dao.MeetingDAO;
import model.domain.MeetingDTO;
import model.domain.MemberDTO;
import model.domain.PayDTO;

import org.springframework.stereotype.Service;


@Service("meetingService")
public class MeetingServiceImpl implements MeetingService {

	@Resource(name="meetingDAO")
	private MeetingDAO meetingDao;

	@Override
	public int insertPay(PayDTO payDTO) {
		return meetingDao.insertPay(payDTO);
	}

	@Override
	public int insertMeeting(MeetingDTO meetingDTO) {
		return meetingDao.insertMeeting(meetingDTO);
	}

	@Override
	public List<MeetingDTO> meetingList(MeetingDTO md) {
		return meetingDao.meetingList(md);
	}
	
	@Override
	public MeetingDTO selectMeetNo(MeetingDTO md){
		return meetingDao.selectMeetNo(md);
	}
	
	
}