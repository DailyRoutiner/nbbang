package sub.controller;

import java.lang.ProcessBuilder.Redirect;
import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import model.domain.MeetingDTO;
import model.domain.MemberDTO;
import model.domain.PayDTO;
import model.domain.PushDTO;
import model.domain.WebPushDTO;
import model.service.MeetingService;
import model.service.MemberService;
import model.service.PayService;
import model.service.PushService;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class PushAndPayController {
	@Resource(name="memService")
	private  MemberService memService;
	@Resource(name="meetingService")
	private MeetingService meetingService;
	@Resource(name="pushService")	
	private PushService pushService;
	@Resource(name="payService")
	private PayService payService;
	
	// 결제 실행 
	@RequestMapping(value="pay.do", method=RequestMethod.POST)
	public String paying(PayDTO vo,HttpServletRequest req){
		HttpSession session=req.getSession();
		// payment 에서 meetno으로 된 리스트 가져오기 
		List<PayDTO> list=payService.paySelect(vo.getMeetno());
		for(int i=0;i<list.size();i++)
		{
			if(vo.getMeetname().equals(list.get(i).getMeetname()) && vo.getCarPw().equals(list.get(i).getCarPw()))
			{
				list.get(i).setPrice(list.get(i).getPrice()-vo.getPrice());
				payService.payUpdate(list.get(i));
				list.get(i).setTotalfee(list.get(i).getTotalfee()-vo.getPrice());
				list.get(i).setMemno((int)((MemberDTO)session.getAttribute("dto")).getMemno());
				payService.payMeetUpdate(list.get(i));
			}
		}
			return "redirect:/valuePass2.do";
	}
	// 결제 페이지로 이동
	@RequestMapping(value="payCheck.do", method=RequestMethod.GET)
	public ModelAndView payCheck(HttpServletRequest req){
		HttpSession session = req.getSession();
		ModelAndView mv = new ModelAndView();
			// 모임 이름, 사용자에게 보내는 금액, 은행
			System.out.println(((MeetingDTO)session.getAttribute("meeting")).getMeetNo());
			System.out.println();
			
			mv.setViewName("push_and_pay");
			return mv;
	}
	
	@RequestMapping("/selectMessage.do" )
	public ModelAndView selectMessage(HttpServletRequest req){
		HttpSession session = req.getSession();
		ModelAndView mv = new ModelAndView();
		ArrayList<WebPushDTO> wpsBefore = pushService.ResBeforeSelect((int)((MemberDTO)session.getAttribute("dto")).getMemno());// 2=로그인한 유저의 memno
			mv.addObject("list", wpsBefore);			
			mv.setViewName("jsonView");
			return mv;
	}
	@RequestMapping("/selectDevice.do")
	@ResponseBody
	public String select(String vo,HttpServletRequest req){
		HttpSession session=req.getSession();
		String result="";
		
		List<MemberDTO> memberInfo =  memService.memberSelect();
		System.out.println((int)((MemberDTO)session.getAttribute("dto")).getMemno());
		System.out.println(vo);
		for(int i=0;i<memberInfo.size();i++)
		{
			if(vo.equals(memberInfo.get(i).getMemname()))
				{
					System.out.println(vo);
					result=memberInfo.get(i).getDeviceid();
					session.setAttribute("receivedMemno", memberInfo.get(i).getMemno());
				}
		}
		return result;
	}
	@RequestMapping("/pushWebInsert.do")
	@ResponseBody
	public String pushInsert(PushDTO vo,HttpServletRequest req){
		HttpSession session=req.getSession();
		String resultMsg = "no";
		int result=0;
		PushDTO dto = new PushDTO();
		dto.setCkNo((int)session.getAttribute("receivedMemno"));//상대방의 memno
		dto.setMemno((int)((MemberDTO)session.getAttribute("dto")).getMemno());
		dto.setMeetno(2);
				dto.setContent(vo.getContent()); //보내는 메시지
				if(vo.getAlramtime().equals("")) //db에 보내는 메시지 저장
				{
					result =pushService.pushInsert(dto);
				}
				else
				{
					dto.setAlramtime(vo.getAlramtime());
					result =pushService.pushResInsert(dto);
				}
		
		if(result > 0 )  {
			resultMsg = "ok";
		}
		return resultMsg;
	}
}