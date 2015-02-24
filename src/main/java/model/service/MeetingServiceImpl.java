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
<<<<<<< HEAD
=======
	public MeetingDTO selectMeetNo(String id) {
		return meetingDao.selectMeetNo(id);
	}

	@Override
>>>>>>> master
	public int insertMeeting(MeetingDTO meetingDTO) {
		return meetingDao.insertMeeting(meetingDTO);
	}

	@Override
<<<<<<< HEAD
	public List<MeetingDTO> meetingList(int memno) {
		return meetingDao.meetingList(memno);
=======
	public List<MeetingDTO> selectAll(String id) {
		return meetingDao.selectAll(id);
>>>>>>> master
	}
	
}