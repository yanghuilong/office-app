package com.yla.service.product;

import com.baomidou.mybatisplus.service.impl.ServiceImpl;
import com.yla.entity.Product;
import com.yla.mapper.ProductMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * Created with IntelliJ IDEA
 * Created By YHL
 * Date: 2017/10/23
 * Time: 9:34
 */
@Service
public class ProductServiceImpl extends ServiceImpl<ProductMapper, Product> implements ProductService{

    @Autowired
    private ProductMapper productMapper;
}
