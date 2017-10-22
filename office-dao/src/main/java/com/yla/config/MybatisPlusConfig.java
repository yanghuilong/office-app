package com.yla.config;

import com.baomidou.mybatisplus.MybatisConfiguration;
import com.baomidou.mybatisplus.entity.GlobalConfiguration;
import com.baomidou.mybatisplus.enums.DBType;
import com.baomidou.mybatisplus.spring.MybatisSqlSessionFactoryBean;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.io.DefaultVFS;
import org.apache.ibatis.logging.Log;
import org.apache.ibatis.logging.LogFactory;
import org.apache.ibatis.logging.log4j2.Log4j2Impl;
import org.apache.ibatis.session.ExecutorType;
import org.apache.ibatis.session.SqlSessionFactory;
import org.mybatis.spring.SqlSessionTemplate;
import org.mybatis.spring.annotation.MapperScan;
import org.mybatis.spring.mapper.ClassPathMapperScanner;
import org.mybatis.spring.mapper.MapperFactoryBean;
import org.springframework.beans.BeansException;
import org.springframework.beans.factory.BeanFactory;
import org.springframework.beans.factory.BeanFactoryAware;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.support.BeanDefinitionRegistry;
import org.springframework.boot.autoconfigure.AutoConfigurationPackages;
import org.springframework.boot.autoconfigure.AutoConfigureAfter;
import org.springframework.boot.autoconfigure.condition.ConditionalOnMissingBean;
import org.springframework.context.ResourceLoaderAware;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.Import;
import org.springframework.context.annotation.ImportBeanDefinitionRegistrar;
import org.springframework.core.io.DefaultResourceLoader;
import org.springframework.core.io.ResourceLoader;
import org.springframework.core.io.support.ResourcePatternUtils;
import org.springframework.core.type.AnnotationMetadata;
import org.springframework.jdbc.datasource.DataSourceTransactionManager;
import org.springframework.transaction.PlatformTransactionManager;
import org.springframework.transaction.annotation.EnableTransactionManagement;
import org.springframework.transaction.annotation.TransactionManagementConfigurer;
import org.springframework.util.StringUtils;

import javax.annotation.PostConstruct;
import javax.sql.DataSource;
import java.util.List;

/**
 * Created with IntelliJ IDEA
 * Created By YHL
 * Date: 2017/10/19
 * Time: 15:36
 */
@MapperScan(value = {"com.yla.mapper"})
@EnableTransactionManagement
@AutoConfigureAfter(DruidDBConfig.class)
@Configuration
public class MybatisPlusConfig implements TransactionManagementConfigurer{

    private static final Log logger = LogFactory.getLog(MybatisPlusConfig.class);

    private final DataSource dataSource;

    public MybatisPlusConfig(DataSource dataSource) {
        this.dataSource = dataSource;
    }

    @Bean
    @Override
    public PlatformTransactionManager annotationDrivenTransactionManager() {
        return new DataSourceTransactionManager(dataSource);
    }


    @Bean
    public SqlSessionFactory sqlSessionFactory(DataSource dataSource) throws Exception {
        MybatisSqlSessionFactoryBean factory = new MybatisSqlSessionFactoryBean();
        factory.setDataSource(dataSource);
        factory.setVfs(DefaultVFS.class);
        GlobalConfiguration globalConfiguration = new GlobalConfiguration();
        globalConfiguration.setDbType(DBType.MYSQL.getDb());
        globalConfiguration.setIdType(0);
        globalConfiguration.setDbColumnUnderline(false);
        globalConfiguration.setCapitalMode(false);
        globalConfiguration.setRefresh(true);
        factory.setGlobalConfig(globalConfiguration);
        factory.setTypeAliasesPackage("com.yla.entity");
        DefaultResourceLoader defaultResourceLoader = new DefaultResourceLoader();
        factory.setMapperLocations(ResourcePatternUtils.getResourcePatternResolver(defaultResourceLoader).getResources("classpath*:mybatis/**/*.xml"));
        MybatisConfiguration mybatisConfiguration = new MybatisConfiguration();
        mybatisConfiguration.setMapUnderscoreToCamelCase(false);
        mybatisConfiguration.setLogImpl(Log4j2Impl.class);
        factory.setConfiguration(mybatisConfiguration);
        return factory.getObject();
    }

    @Bean
    public SqlSessionTemplate sqlSessionTemplate(SqlSessionFactory sqlSessionFactory) {
        ExecutorType executorType = ExecutorType.SIMPLE;
        if (executorType != null) {
            return new SqlSessionTemplate(sqlSessionFactory, executorType);
        } else {
            return new SqlSessionTemplate(sqlSessionFactory);
        }
    }

    public static class AutoConfiguredMapperScannerRegistrar
            implements BeanFactoryAware, ImportBeanDefinitionRegistrar, ResourceLoaderAware {

        private BeanFactory beanFactory;

        private ResourceLoader resourceLoader;

        @Override
        public void registerBeanDefinitions(AnnotationMetadata importingClassMetadata, BeanDefinitionRegistry registry) {

            logger.debug("Searching for mappers annotated with @Mapper");

            ClassPathMapperScanner scanner = new ClassPathMapperScanner(registry);

            try {
                if (this.resourceLoader != null) {
                    scanner.setResourceLoader(this.resourceLoader);
                }

                List<String> packages = AutoConfigurationPackages.get(this.beanFactory);
                if (logger.isDebugEnabled()) {
                    for (String pkg : packages) {
                        logger.debug("Using auto-configuration base package '" + pkg + "'");
                    }
                }

                scanner.setAnnotationClass(Mapper.class);
                scanner.registerFilters();
                scanner.doScan(StringUtils.toStringArray(packages));
            } catch (IllegalStateException ex) {
                logger.debug("Could not determine auto-configuration package, automatic mapper scanning disabled." + ex);
            }
        }

        @Override
        public void setBeanFactory(BeanFactory beanFactory) throws BeansException {
            this.beanFactory = beanFactory;
        }

        @Override
        public void setResourceLoader(ResourceLoader resourceLoader) {
            this.resourceLoader = resourceLoader;
        }
    }

    /**
     * {@link org.mybatis.spring.annotation.MapperScan} ultimately ends up
     * creating instances of {@link MapperFactoryBean}. If
     * {@link org.mybatis.spring.annotation.MapperScan} is used then this
     * auto-configuration is not needed. If it is _not_ used, however, then this
     * will bring in a bean registrar and automatically register components based
     * on the same component-scanning path as Spring Boot itself.
     */
    @org.springframework.context.annotation.Configuration
    @Import({MybatisPlusConfig.AutoConfiguredMapperScannerRegistrar.class})
    @ConditionalOnMissingBean(MapperFactoryBean.class)
    public static class MapperScannerRegistrarNotFoundConfiguration {

        @PostConstruct
        public void afterPropertiesSet() {
            logger.debug("No " + MapperFactoryBean.class.getName() + " found.");
        }
    }
}
