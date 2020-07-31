package com.farm.web.service.details;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.farm.web.dao.ItemDao;
import com.farm.web.dao.OrderItemDao;
import com.farm.web.dao.OriginDao;
import com.farm.web.entity.Item;
import com.farm.web.entity.Origin;
import com.farm.web.vo.DetailInitVo;

@Service
public class DetailService {

	
	@Autowired
	private  ItemDao itemDao;
	
	@Autowired
	private  OriginDao originDao;
	
//	@Autowired
//	private OrderItemDao orderItemDao;
	
	@Transactional(readOnly = false)
	public DetailInitVo init(int prId) {
			
		Item item = itemDao.selectById(prId);
			
//		OrderItem orderItem = orderItemDao.matchProductDeliveryFee(prId);
	
		Origin origin = originDao.matchProductOrigin(prId);
		
		DetailInitVo detailInit = new DetailInitVo();
		
		detailInit.setName(item.getName());
		detailInit.setDetail(item.getDetail());
		detailInit.setPrice(item.getPrice());
		detailInit.setImage(item.getImage());
		detailInit.setDeliveryFee(item.getDeliveryFee());
		//배송비 뭔지모르겠음
		
		
		detailInit.setOriginName(origin.getName());
		
		
		
		return detailInit;
		
	}

}
