package com.yla;

import com.aliyun.oss.OSSClient;
import com.yla.oss.properties.OSSConfigationProperties;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

import java.net.URL;
import java.text.ParseException;
import java.util.Date;

/**
 * Created with IntelliJ IDEA
 * Created By YHL
 * Date: 2017/10/27
 * Time: 9:59
 */
@RunWith(SpringRunner.class)
@SpringBootTest
public class OSSTest {

    private static final String key = "Hydrangeas.jpg";

    @Autowired
    private OSSConfigationProperties ossConfigationProperties;

    // key Hydrangeas.jpg
    @Test
    public void oSSClient() throws ParseException {
        OSSClient client = new OSSClient(ossConfigationProperties.getInternetEndPoint(), ossConfigationProperties.getAccessKeyID(), ossConfigationProperties.getAccessKeySecret());
        // 设置URL过期时间为1小时
        Date expiration = new Date(new Date().getTime() + 3600 * 1000);
        // 生成URL
        URL url = client.generatePresignedUrl(ossConfigationProperties.getBucketName(), key, expiration);
        System.out.println("signed url for getObject: " + url.toString());
    }
}
