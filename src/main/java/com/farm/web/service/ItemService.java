package com.farm.web.service;

import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.farm.web.dao.CategoryDao;
import com.farm.web.dao.ItemDao;
import com.farm.web.dao.MemberDao;
import com.farm.web.dao.OriginDao;
import com.farm.web.dao.StoreDao;
import com.farm.web.entity.Item;
import com.farm.web.entity.ItemView;
import com.farm.web.entity.Member;
import com.farm.web.entity.Origin;
import com.farm.web.entity.SellerCategoryCountView;
import com.farm.web.entity.SellerItemView;

@Service
public class ItemService {

	@Autowired 
	private ItemDao itemDao;
	
	@Autowired
	private StoreDao storeDao;
	
	@Autowired
	private MemberDao memberDao;
	
	@Autowired
	private CategoryDao categoryDao;
	
	@Autowired
	private OriginDao originDao;

	public List<SellerItemView> getList(String query, String field, String category,Integer page,String uid){
        
		int offset = (page-1)*5; //1->0, 2->10, 3->20
        int size = 5;

        return itemDao.getSellerProductList(query,field,category,offset,size,uid);
     }
	
	public List<SellerCategoryCountView> getCountList(){
		int count = 0;
		List<SellerCategoryCountView> list = categoryDao.getSellerProductCountList();
		
		for(SellerCategoryCountView c : list)
			count+=c.getCount();

		SellerCategoryCountView scv=new SellerCategoryCountView(1,"전체상품",count);
		list.add(0,scv);

        return list;
     }
	
	
	public int delete(int id){
        
        return itemDao.SellerProductDelete(id);
     }

	public int updatePub(int id) {
		
		SellerItemView spView = itemDao.getSellerProduct(id);
		boolean pub = !spView.getPub();
		
		return itemDao.SellerProductUpdatePub(id,pub);
	}
	

	public Member getMember(String uid) {
		
		return memberDao.getByUid(uid);
	}

	public int insertSellerProduct(Item item,Integer qty) {
		
		itemDao.insertSellerProduct(item);
		item = itemDao.getItemId(item.getName(),item.getRegName());
		int itemId = item.getId();
	
		return storeDao.insertSellerProduct(itemId, qty);
	}
	
	public List<Origin> getList(){

		return originDao.getList();
	}
	
	
	public List<ItemView> getList(int page, String query, String field,String catag) {
		int size = 8;
		int offset = (page-1) * size;
		List<ItemView> list = itemDao.getList(size,offset,field,query,catag);
		
		return list;
	}

	public int getCount(String query, String field, String catg) {
			
		return itemDao.getCount(query,field,catg);
	}

	public int delList(int[] srs) {
		
		String selectRows = "";
		for(int i : srs)
			selectRows += i+",";
		
		selectRows = selectRows.substring(0, selectRows.length()-1);
		
		return itemDao.deleteSelectRows(selectRows);
	}
	
	public List<ItemView> getItmeList(int page, String query, String field) throws ClassNotFoundException, SQLException {
		
		int size = 8;
		int offset = (page-1) * size;
		
		return itemDao.getList3(page, query, field, offset, size);
	}
	
	public int getTotalCount() throws ClassNotFoundException, SQLException {
		
		return itemDao.select();
	}
	
	public List<Item> seletAll() throws ClassNotFoundException, SQLException {
		
		return itemDao.selectAll();
	}

	public List<ItemView> getList4(int page, String query, String field) throws ClassNotFoundException, SQLException {
	
		int size = 8;
		int offset = (page-1) * size;
		
		return itemDao.getList4(page, query, field, offset, size);
	}
	
}
