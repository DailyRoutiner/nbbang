package model.service;


import java.util.List;

import javax.annotation.Resource;

import model.dao.MeetingDAO;
import model.domain.MeetingDTO;
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
	public List<MeetingDTO> meetingList(int memno) {
		return meetingDao.meetingList(memno);
	}
	
	@Override
	public MeetingDTO selectMeetNo(MeetingDTO md){
		return meetingDao.selectMeetNo(md);
	}
	
	@Override
	public List<MeetingDTO> meetingList(MeetingDTO md) {
		return meetingDao.meetingList(md);
	}
	
	
	@Override
	public int deleteMeeting(MeetingDTO md){
		return meetingDao.deleteMeeting(md);
	}
	@Override
	public MeetingDTO meetSelectNum(int meetno){
		return meetingDao.meetSelectNum(meetno);
	}
}