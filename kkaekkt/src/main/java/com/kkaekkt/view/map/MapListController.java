package com.kkaekkt.view.map;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.gson.Gson;
import com.kkaekkt.biz.map.MapListVO;
import com.kkaekkt.biz.map.MapService;
import com.kkaekkt.biz.map.ResPayVO;
import com.kkaekkt.biz.map.SingleListVO;
import com.kkaekkt.biz.user.BusinessVO;
import com.kkaekkt.biz.user.PersonVO;



@Controller
public class MapListController {
	@Autowired
	MapService mapserv;
	
		@RequestMapping(value="/showMap.do", method=RequestMethod.GET)
		public String loginView(BusinessVO bvo, PersonVO pvo) {
			int bmvo = bvo.getBno();
			int pmvo = pvo.getMno();
			
			System.out.println(bmvo);
			System.out.println(pmvo);
			return "/jsp/searchMap/laundryMap.jsp";
		}
	
	
	  @RequestMapping(value="/maplist.do", method=RequestMethod.POST,produces="application/text;charset=utf-8")   
	  public @ResponseBody String maplist(String keyaddr) {
	      String keyword = keyaddr;
	      System.out.println("ajax 요청 도착!"+keyword);    
	      
	      List<MapListVO> modelList = mapserv.selectlandry(keyword);
	      Gson gson=new Gson();
	      String keylist=gson.toJson(modelList);
	      System.out.println("select 데이터 확인 :" + keylist);
	      return keylist;
	   }
	   
	   
	  //업체 시간조회
	  @RequestMapping(value="/singleTime.do",method=RequestMethod.POST,produces="application/text;charset=utf-8")
	  public @ResponseBody String singleList(int bno) {
			System.out.println("단일 페이지 시간조회  : "+bno); 
			List<SingleListVO>single = mapserv.selectSingle(bno); 
			Gson gson=new Gson(); 
			String singleList = gson.toJson(single); 
			System.out.println("select 데이터 확인  : "+singleList); 
			return singleList; 
		}
	  
	  //일반세탁 사양/가격조회
	  @RequestMapping(value="/singleOption.do",method=RequestMethod.POST,produces="application/text;charset=utf-8")
	  public @ResponseBody String singleOption(int bno) {
			System.out.println("일반세탁 사양조회  : "+bno); 
			List<SingleListVO>single = mapserv.singleOption(bno); 
			Gson gson=new Gson(); 
			String singleList = gson.toJson(single); 
			System.out.println("select 데이터 확인  : "+singleList); 
			return singleList; 
		}
		
	  //회원업체 리뷰 조회
	  @RequestMapping(value="/reviewList.do",method=RequestMethod.POST,produces="application/text;charset=utf-8")
	  public @ResponseBody String reviewList(int bno) {
			System.out.println("리뷰조회 : "+bno); 
			List<SingleListVO>single = mapserv.reviewList(bno); 
			Gson gson=new Gson(); 
			String singleList = gson.toJson(single); 
			System.out.println("select 데이터 확인  : "+singleList); 
			return singleList; 
		}
	  
	  
	  //회원업체 리뷰 조회
	  @RequestMapping(value="/respay.do",method=RequestMethod.POST,produces="application/text;charset=utf-8")
	  public String respay(ResPayVO vo) {
			System.out.println("예약관련정보 : "+vo); 
			return "/jsp/searchMap/laundryMap.jsp";
		}
		
	 
}
