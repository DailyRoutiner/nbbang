package model.service;

import java.util.List;

import model.domain.PayDTO;
import model.domain.WebPushDTO;

public interface PayService {
	List<WebPushDTO> ResAfterSelect(int ckNo);
	int payUpdate(PayDTO vo);
	int payMeetUpdate(PayDTO vo);
	List<PayDTO> friendSelect(int meetno);
	int insertPayment(PayDTO pd);
	List<PayDTO> paySelect(int meetno);
	int memberDelete(int meetNo);
}
