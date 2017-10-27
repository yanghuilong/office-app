package com.yla.oss.properties;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.autoconfigure.AutoConfigureAfter;
import org.springframework.boot.context.properties.ConfigurationProperties;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.PropertySource;
import org.springframework.stereotype.Component;

/**
 * Created with IntelliJ IDEA
 * Created By YHL
 * Date: 2017/10/25
 * Time: 21:04
 */
@ConfigurationProperties(prefix = "oss")
@PropertySource("classpath:office-oss.properties")
@Component
public class OSSConfigationProperties {
    private String key;

    private String accessKeyID;
    private String accessKeySecret;
    private String internetEndPoint;
    private String domainAccess;
    private String innerNetworkEndPoint;
    private String innerNetworkDomainAccess;
    private String bucketName;

    @Autowired
    private OSSConfigationProperties.OSSClientProperties ossClientProperties;

    public OSSClientProperties getOssClientProperties() {
        return ossClientProperties;
    }

    public String getKey() {
        return key;
    }

    public OSSConfigationProperties setKey(String key) {
        this.key = key;
        return this;
    }

    public String getAccessKeyID() {
        return accessKeyID;
    }

    public OSSConfigationProperties setAccessKeyID(String accessKeyID) {
        this.accessKeyID = accessKeyID;
        return this;
    }

    public String getAccessKeySecret() {
        return accessKeySecret;
    }

    public OSSConfigationProperties setAccessKeySecret(String accessKeySecret) {
        this.accessKeySecret = accessKeySecret;
        return this;
    }

    public String getInternetEndPoint() {
        return internetEndPoint;
    }

    public OSSConfigationProperties setInternetEndPoint(String internetEndPoint) {
        this.internetEndPoint = internetEndPoint;
        return this;
    }

    public String getDomainAccess() {
        return domainAccess;
    }

    public OSSConfigationProperties setDomainAccess(String domainAccess) {
        this.domainAccess = domainAccess;
        return this;
    }

    public String getInnerNetworkEndPoint() {
        return innerNetworkEndPoint;
    }

    public OSSConfigationProperties setInnerNetworkEndPoint(String innerNetworkEndPoint) {
        this.innerNetworkEndPoint = innerNetworkEndPoint;
        return this;
    }

    public String getInnerNetworkDomainAccess() {
        return innerNetworkDomainAccess;
    }

    public OSSConfigationProperties setInnerNetworkDomainAccess(String innerNetworkDomainAccess) {
        this.innerNetworkDomainAccess = innerNetworkDomainAccess;
        return this;
    }

    public String getBucketName() {
        return bucketName;
    }

    public OSSConfigationProperties setBucketName(String bucketName) {
        this.bucketName = bucketName;
        return this;
    }


    @ConfigurationProperties(prefix = "client")
    @PropertySource("classpath:office-oss.properties")
    @Component
    public class OSSClientProperties {

        private int maxConnections; // 允许打开的最大HTTP连接数。默认为1024	ClientConfiguration.setMaxConnections
        private long socketTimeout; // Socket层传输数据的超时时间（单位：毫秒）。默认为50000毫秒	ClientConfiguration.setSocketTimeout
        private long connectionTimeout; // 建立连接的超时时间（单位：毫秒）。默认为50000毫秒	ClientConfiguration.setConnectionTimeout
        private long connectionRequestTimeout; // 从连接池中获取连接的超时时间（单位：毫秒）。默认不超时	ClientConfiguration.setConnectionRequestTimeout
        private long idleConnectionTime; // 如果空闲时间超过此参数的设定值，则关闭连接（单位：毫秒）。默认为60000毫秒	ClientConfiguration.setIdleConnectionTime
        private int maxErrorRetry; // 请求失败后最大的重试次数。默认3次	ClientConfiguration.setMaxErrorRetry
        private boolean supportCname; // 是否支持CNAME作为Endpoint，默认支持CNAME	ClientConfiguration.setSupportCname
        private boolean sLDEnabled; // 是否开启二级域名（Second Level Domain）的访问方式，默认不开启	ClientConfiguration.setSLDEnabled
        private String protocol; // 连接OSS所采用的协议（HTTP/HTTPS），默认为HTTP	ClientConfiguration.setProtocol
        private String userAgent; // 用户代理，指HTTP的User-Agent头。默认为”aliyun-sdk-java”	ClientConfiguration.setUserAgent
        private String proxyHost; // 代理服务器主机地址	ClientConfiguration.setProxyHost
        private String proxyPort; // 代理服务器端口	ClientConfiguration.setProxyPort
        private String proxyUsername; // 代理服务器验证的用户名	ClientConfiguration.setProxyUsername
        private String proxyPassword; // 代理服务器验证的密码	ClientConfiguration.setProxyPassword


        public int getMaxConnections() {
            return maxConnections;
        }

        public OSSClientProperties setMaxConnections(int maxConnections) {
            this.maxConnections = maxConnections;
            return this;
        }

        public long getSocketTimeout() {
            return socketTimeout;
        }

        public OSSClientProperties setSocketTimeout(long socketTimeout) {
            this.socketTimeout = socketTimeout;
            return this;
        }

        public long getConnectionTimeout() {
            return connectionTimeout;
        }

        public OSSClientProperties setConnectionTimeout(long connectionTimeout) {
            this.connectionTimeout = connectionTimeout;
            return this;
        }

        public long getConnectionRequestTimeout() {
            return connectionRequestTimeout;
        }

        public OSSClientProperties setConnectionRequestTimeout(long connectionRequestTimeout) {
            this.connectionRequestTimeout = connectionRequestTimeout;
            return this;
        }

        public long getIdleConnectionTime() {
            return idleConnectionTime;
        }

        public OSSClientProperties setIdleConnectionTime(long idleConnectionTime) {
            this.idleConnectionTime = idleConnectionTime;
            return this;
        }

        public int getMaxErrorRetry() {
            return maxErrorRetry;
        }

        public OSSClientProperties setMaxErrorRetry(int maxErrorRetry) {
            this.maxErrorRetry = maxErrorRetry;
            return this;
        }

        public boolean isSupportCname() {
            return supportCname;
        }

        public OSSClientProperties setSupportCname(boolean supportCname) {
            this.supportCname = supportCname;
            return this;
        }

        public boolean issLDEnabled() {
            return sLDEnabled;
        }

        public OSSClientProperties setsLDEnabled(boolean sLDEnabled) {
            this.sLDEnabled = sLDEnabled;
            return this;
        }

        public String getProtocol() {
            return protocol;
        }

        public OSSClientProperties setProtocol(String protocol) {
            this.protocol = protocol;
            return this;
        }

        public String getUserAgent() {
            return userAgent;
        }

        public OSSClientProperties setUserAgent(String userAgent) {
            this.userAgent = userAgent;
            return this;
        }

        public String getProxyHost() {
            return proxyHost;
        }

        public OSSClientProperties setProxyHost(String proxyHost) {
            this.proxyHost = proxyHost;
            return this;
        }

        public String getProxyPort() {
            return proxyPort;
        }

        public OSSClientProperties setProxyPort(String proxyPort) {
            this.proxyPort = proxyPort;
            return this;
        }

        public String getProxyUsername() {
            return proxyUsername;
        }

        public OSSClientProperties setProxyUsername(String proxyUsername) {
            this.proxyUsername = proxyUsername;
            return this;
        }

        public String getProxyPassword() {
            return proxyPassword;
        }

        public OSSClientProperties setProxyPassword(String proxyPassword) {
            this.proxyPassword = proxyPassword;
            return this;
        }
    }
}
