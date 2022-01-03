package com.marobiana.ex.lesson02.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.marobiana.ex.lesson02.model.UsedGoods;

@Repository
public interface UsedGoodsDAO {
	
	public List<UsedGoods> selectUsedGoodsList();

}
