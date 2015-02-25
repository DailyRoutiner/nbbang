package sub.controller;


import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import model.domain.MeetingDTO;
import model.domain.MemberDTO;
import model.domain.PayDTO;
import model.service.MeetingService;
import model.service.MemberService;
import model.service.PayService;

import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class MeetingController {
	
	@Resource(name="meetingService")
    private MeetingService meetingService;
	@Resource(name="payService")
    private PayService payService;
	@Resource(name="memService")
	private MemberService memService;

	// 회비 추가 기능 
	@RequestMapping("/insertfee.do")
	public String insertPay(@RequestParam("price") int price, @RequestParam("totalfee") int totalfee, @RequestParam("meetno") int meetno){
		System.out.println(">>>>>>>>>" +price + totalfee + meetno);
		String resultMsg = "no";
		int result = meetingService.insertPay(new PayDTO(price, totalfee, meetno));
		if(result > 0)  {
			resultMsg = "ok";
			System.out.println("회비 추가 성공");
		}
		return resultMsg ;
	}
	// 모임 추가 폼으로 이동
	@RequestMapping(value="insertMeeting.do", method=RequestMethod.POST)
	public ModelAndView insertMeeting(){
		ModelAndView mv=new ModelAndView();
		List<MemberDTO> memberView = memService.memberSelect();
			mv.addObject("memberView", memberView);
			mv.setViewName("addTest");
			return mv;
	}
	
	//모임 추가 
		@RequestMapping(value="addMeeting.do", method=RequestMethod.POST)
	    public ModelAndView addSpend(@RequestParam("meetingType") int meetingType,
	                         @RequestParam("place") String place,
	                         @RequestParam("meetDate") String meetDate,
	                         @RequestParam("meetName") String meetName,
	                         @RequestParam("memberIndex") String[] rowIndex,
	                         HttpServletRequest req){
	       int result=0;
	       ModelAndView mv=new ModelAndView();
	       MeetingDTO md=null;//meetNo을 저장하기 위한 변수
	       HttpSession session=req.getSession();
			
	       if(result==0){
	           result = meetingService.insertMeeting(new MeetingDTO(meetingType, meetName, place, meetDate, ((MemberDTO)session.getAttribute("dto")).getMemno()));
	       }else{
	    	   
	    	   mv.setViewName("error");
	    	   return mv;
	       }
	       
			System.out.println(rowIndex[0]);	
			md = meetingService.selectMeetNo(new MeetingDTO(((MemberDTO)(session.getAttribute("dto"))).getMemno()));//해당 memno값을 가진 사용자가 최근에 만든 meetno을 가지고온다.
			System.out.println(md.getMeetNo());
			
			for(int i=0; i<rowIndex.length; i++){
			result = payService.insertPayment(new PayDTO(Integer.parseInt(rowIndex[i]),md.getMeetNo()));
			}
	            if(result > 0){
					System.out.println("데이터 삽입 성공!");
					
				}else{
					System.out.println("데이터 삽입 실패");
				}
			//다시 list값을 뿌려 주기 위해 불러오는 부분..
	            List<MeetingDTO> list = meetingService.meetingList(new MeetingDTO(((MemberDTO)session.getAttribute("dto")).getMemno()));
	            
				mv.addObject("list",list);
	            mv.setViewName("main");
				
			return mv;
		}
		
		//모임 삭제
		@RequestMapping(value="deleteMeeting.do", method=RequestMethod.POST)
		public ModelAndView deleteMeeting(@RequestParam("meetingIndex") String[] rowIndex,
				                                                 HttpServletRequest req){
			
			HttpSession session=req.getSession();
			int result=0;
			
				  for(int i=0; i<rowIndex.length; i++){
					  result=meetingService.deleteMeeting(new MeetingDTO(Integer.parseInt(rowIndex[i]), ((MemberDTO)session.getAttribute("dto")).getMemno()));//meetno과 사용자의 manageno을
				     if(result==1){
					     System.out.println("모임목록 삭제 성공!");
				     }
				   }
				 ModelAndView mv=new ModelAndView();
				 List<MeetingDTO> list = meetingService.meetingList(new MeetingDTO(((MemberDTO)session.getAttribute("dto")).getMemno()));
			     mv.addObject("list",list);
		         mv.setViewName("main");
				
				return mv;
		}
	
		
		// 모임 페이지으로 들어가기
	@RequestMapping(value="valuePass.do", method=RequestMethod.POST)
	public ModelAndView valuePass(@RequestParam("manageNo") int manageNo,
												@RequestParam("meetNo") int meetNo,
												HttpServletRequest req){
	List<PayDTO> pd =null;
	ModelAndView mv=new ModelAndView();
	HttpSession session = req.getSession();
	// 들어간 모임이 내가 관리자인지 아닌지를 체크
	if(((MemberDTO)session.getAttribute("dto")).getMemno() == manageNo){
		pd = payService.friendSelect(meetNo);
		System.out.println("관리자 입니다");
	}else{
		pd = payService.friendSelect(meetNo);
		System.out.println("사용자 입니다");
		count(meetNo,session);
	}
	session.setAttribute("count",pd.size());
	mv.addObject("list", pd);
	mv.setViewName("meeting");
	return mv;
	}
	
	void count(int meetNo, HttpSession session){
		List<PayDTO> pd = payService.friendSelect(meetNo);
		int count = pd.size();
		float p=0;
		float n=0;
		for(PayDTO t : pd){
			if(t.getPayCheck().equals("ok")){
				p++;
				System.out.println(p+ "---------" +count + p/count);	
			}else{
				n++;
				System.out.println(n+ "---------" +count + n/count);
			}
		}
		session.setAttribute("ok", p/count);
		session.setAttribute("no", n/count);
	}
}
