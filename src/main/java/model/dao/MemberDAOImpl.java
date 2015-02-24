package model.dao;

import java.util.List;

import model.domain.MemberDTO;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import util.DBUtil;

@Repository("memDAO")
public class MemberDAOImpl implements MemberDAO {

	@Override
	public List<MemberDTO> memberSelect() {
		SqlSession session = null;
		List<MemberDTO> list = null;
		try {
			session = DBUtil.getSqlSession();
			list = session.selectList("member.memSelect");
		} finally {
			DBUtil.closeSqlSession(session);
		}
		return list;
	}

	@Override
	public MemberDTO isIdValid(MemberDTO vo) {
		SqlSession session = null;
		MemberDTO sVo = null;
		try {
			session = DBUtil.getSqlSession();
			sVo = session.selectOne("member.memEmailCheck", vo);
		} finally {
			DBUtil.closeSqlSession(session);
		}
		return sVo;
	}
	@Override
	public MemberDTO memJoinCheck(String email) {
		SqlSession session = null;
		MemberDTO sVo = null;
		try {
			session = DBUtil.getSqlSession();
			sVo = session.selectOne("member.memJoinCheck", email);
		} finally {
			DBUtil.closeSqlSession(session);
		}
		return sVo;
	}
	
	//지윤이가 만든 곳
	@Override
	public int insertMember(MemberDTO dto) {
		SqlSession session = null;
		int result = 0;
		try{
			session = DBUtil.getSqlSession(true);
			result=session.insert("member.insertMember", dto);
		}finally{
			session.close();
		}
		return result;
	}

	@Override
	public MemberDTO isPwValid(MemberDTO dto) {
		SqlSession session = DBUtil.getSqlSession();
		MemberDTO data = null;
		try{
			data = session.selectOne("member.isPwValid", dto);
		}finally {
			session.close();
		}
		return data;
	}

	
	@Override
	public int updateMember(MemberDTO dto){
		SqlSession session = DBUtil.getSqlSession();
		MemberDTO data = null;
		int result = 0;
		try{
			session = DBUtil.getSqlSession();
			result = session.update("member.updateMember", dto);
		}finally {
			session.close();
		}
<<<<<<< HEAD
=======
		System.out.println(data);
>>>>>>> master
		return result;
	}
	
	@Override
	public int deleteMember(MemberDTO dto){
		SqlSession session = DBUtil.getSqlSession();
		int result = 0;
		try{
<<<<<<< HEAD
			session = DBUtil.getSqlSession();
=======
			session = DBUtil.getSqlSession(true);
>>>>>>> master
			result = session.delete("member.deleteMember", dto);
		}finally {
			session.close();
		}
		return result;
		}
	
	@Override
	public int updatePicture(MemberDTO dto) {
		SqlSession session = null;
		int result = 0;
		try{
<<<<<<< HEAD
			session = DBUtil.getSqlSession();
			result=session.insert("member.updatePicture", dto);
=======
			session = DBUtil.getSqlSession(true);
			System.out.println("---------"+dto);
			result=session.update("member.updatePicture", dto);
>>>>>>> master
		}finally{
			session.close();
		}
		return result;
	}
	
	@Override
	public List<MemberDTO> memPicSelect(int memno) {//upload
		SqlSession session = null;
		List<MemberDTO> list = null;
		
		try {
			session = DBUtil.getSqlSession();
			list = session.selectList("member.memPicSelect");
		} finally {
			DBUtil.closeSqlSession(session);
		}
		return list;
	}
<<<<<<< HEAD
=======
	@Override
	public int updatePhone(MemberDTO dto){
		SqlSession session = DBUtil.getSqlSession();
		MemberDTO data = null;
		int result = 0;
		try{
			session = DBUtil.getSqlSession(true);
			result = session.update("member.updatePhone", dto);
		}finally {
			session.close();
		}
		System.out.println(data);
		return result;
	}
	
	public int updateName(MemberDTO dto){
		SqlSession session = DBUtil.getSqlSession();
		MemberDTO data = null;
		int result = 0;
		try{
			session = DBUtil.getSqlSession(true);
			result = session.update("member.updateName", dto);
		}finally{
			session.close();
		}
		System.out.println(data);
		return result;
	}
	
	public int updatePassWord(MemberDTO dto){
		SqlSession session = DBUtil.getSqlSession();
		MemberDTO data = null;
		int result = 0;
		try{
			session = DBUtil.getSqlSession(true);
			result = session.update("member.updatePassWord", dto);
		}finally{
			session.close();
		}
		System.out.println(data);
		return result;
	}
	
	public int updateCardPassWord(MemberDTO dto){
		SqlSession session = DBUtil.getSqlSession();
		MemberDTO data = null;
		int result = 0;
		try{
			session = DBUtil.getSqlSession(true);
			result = session.update("member.updateCardPassWord", dto);
		}finally{
			session.close();
		}
		System.out.println(data);
		return result;
	}
	
	public int updateAccount(MemberDTO dto){
		SqlSession session = DBUtil.getSqlSession();
		MemberDTO data = null;
		int result = 0;
		try{
			session = DBUtil.getSqlSession(true);
			result = session.update("member.updateAccount", dto);
		}finally{
			session.close();
		}
		System.out.println(data);
		return result;
	}
	
	public int updateDeviceId(MemberDTO dto){
		SqlSession session = DBUtil.getSqlSession();
		MemberDTO data = null;
		int result = 0;
		try{
			session = DBUtil.getSqlSession(true);
			result = session.update("member.updateDeviceId", dto);
		}finally{
			session.close();
		}
		System.out.println(data);
		return result;
	}
	
>>>>>>> master
	//지윤이가 만든 곳

}
