package com.kkaekkt.biz.user.impl;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kkaekkt.biz.comm.EquipmentVO;
import com.kkaekkt.biz.comm.EtcVO;
import com.kkaekkt.biz.comm.LaundryVO;
import com.kkaekkt.biz.comm.ScheduleVO;
import com.kkaekkt.biz.user.AccountVO;
import com.kkaekkt.biz.user.BusinessListVO;
import com.kkaekkt.biz.user.BusinessVO;
import com.kkaekkt.biz.user.PersonVO;

@Repository
public class UserDAO {
	@Autowired
	private SqlSessionTemplate mybatis;

	public void likeOff(BusinessVO vo) {
		mybatis.delete("UserDAO.likeOff", vo);
	}

	public void insertUser(PersonVO vo) {
		System.out.println("마이바티스 insert");
		mybatis.insert("UserDAO.insertPs", vo);
		System.out.println("마이바티스 insert완료");
	}

	public void insertUser(BusinessVO vo) {
		System.out.println("DAO진입");
		mybatis.insert("UserDAO.insertBs", vo);
	}

	public void updateUser(PersonVO vo) {
		System.out.println("마이바티스 update");
		mybatis.update("UserDAO.updatePs", vo);
		System.out.println("마이바티스 update완료");
	}

	public void updateUser(BusinessVO vo) {
		mybatis.update("UserDAO.updateBs", vo);
	}

	public void deleteUser(PersonVO vo) {
		mybatis.delete("UserDAO.deletePs", vo);
	}

	public void deleteUser(BusinessVO vo) {
		mybatis.delete("UserDAO.deleteBs", vo);
	}

	public List<BusinessVO> getLikedBs(BusinessListVO vo) {
		return mybatis.selectList("UserDAO.getLikedBs", vo);
	}

	public int countList(BusinessListVO vo) {
		return mybatis.selectOne("UserDAO.countList", vo);
	}

	// 일반 로그인
	public PersonVO getUserPs(PersonVO vo) {
		System.out.println("mybatis로 기능처리 일반유저");
		return mybatis.selectOne("UserDAO.getPerson", vo);
	}

	// 업체 로그인
	public BusinessVO getUserBs(BusinessVO vo) {
		System.out.println("mybatis로 기능처리 업체유저");
		return mybatis.selectOne("UserDAO.getPersonBs", vo);
	}

	// 소셜 로그인
	public PersonVO getUserSNS(PersonVO vo) {
		System.out.println("mybatis로 기능처리 일반유저");
		return mybatis.selectOne("UserDAO.getPersonSNS", vo);
	}

	// laundry
	public List<LaundryVO> getLaundry(BusinessVO vo) {
		// System.out.println("dao : " + mybatis.selectList("UserDAO.getcomspecList",vo)
		// );
		return mybatis.selectList("UserDAO.getLaundryList", vo);
	}

	// equipment
	public List<EquipmentVO> getEquipment(BusinessVO vo) {
		return mybatis.selectList("UserDAO.getEquipmentList", vo);
	}

	// etc
	public List<EtcVO> getEtc(BusinessVO vo) {
		return mybatis.selectList("UserDAO.getEtc", vo);
	}

	// schedule
	public List<ScheduleVO> getSchedule(BusinessVO vo) {
		// System.out.println("dao : " +
		// mybatis.selectList("UserDAO.getcomscheduleList",vo) );
		return mybatis.selectList("UserDAO.getScheduleList", vo);
	}

	public void updateSpec(BusinessVO vo) {
		System.out.println("마이바티스 update");
		mybatis.update("UserDAO.updateSpec", vo);
		System.out.println("마이바티스 update완료");

	}

	public AccountVO findId(AccountVO vo) {
		return mybatis.selectOne("UserDAO.findId", vo);

	}

}
