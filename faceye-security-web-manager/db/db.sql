CREATE DATABASE  IF NOT EXISTS `faceye_security_web` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `faceye_security_web`;
-- MySQL dump 10.13  Distrib 5.6.13, for osx10.6 (i386)
--
-- Host: localhost    Database: faceye_security_web
-- ------------------------------------------------------
-- Server version	5.6.14

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `ClientDetails`
--

DROP TABLE IF EXISTS `ClientDetails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ClientDetails` (
  `appId` varchar(255) NOT NULL,
  `resourceIds` varchar(256) DEFAULT NULL,
  `appSecret` varchar(256) DEFAULT NULL,
  `scope` varchar(256) DEFAULT NULL,
  `grantTypes` varchar(256) DEFAULT NULL,
  `redirectUrl` varchar(256) DEFAULT NULL,
  `authorities` varchar(256) DEFAULT NULL,
  `access_token_validity` int(11) DEFAULT NULL,
  `refresh_token_validity` int(11) DEFAULT NULL,
  `additionalInformation` varchar(4096) DEFAULT NULL,
  `autoApproveScopes` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`appId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ClientDetails`
--

LOCK TABLES `ClientDetails` WRITE;
/*!40000 ALTER TABLE `ClientDetails` DISABLE KEYS */;
/*!40000 ALTER TABLE `ClientDetails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_access_token`
--

DROP TABLE IF EXISTS `oauth_access_token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oauth_access_token` (
  `token_id` varchar(256) DEFAULT NULL,
  `token` blob,
  `authentication_id` varchar(255) NOT NULL,
  `user_name` varchar(256) DEFAULT NULL,
  `client_id` varchar(256) DEFAULT NULL,
  `authentication` blob,
  `refresh_token` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`authentication_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_access_token`
--

LOCK TABLES `oauth_access_token` WRITE;
/*!40000 ALTER TABLE `oauth_access_token` DISABLE KEYS */;
INSERT  IGNORE INTO `oauth_access_token` (`token_id`, `token`, `authentication_id`, `user_name`, `client_id`, `authentication`, `refresh_token`) VALUES ('c7ea25f156fb3daa9f0efe41f2605e95','��\0sr\0Corg.springframework.security.oauth2.common.DefaultOAuth2AccessToken��6$��\0L\0additionalInformationt\0Ljava/util/Map;L\0\nexpirationt\0Ljava/util/Date;L\0refreshTokent\0?Lorg/springframework/security/oauth2/common/OAuth2RefreshToken;L\0scopet\0Ljava/util/Set;L\0	tokenTypet\0Ljava/lang/String;L\0valueq\0~\0xpsr\0java.util.Collections$EmptyMapY6�Z���\0\0xpsr\0java.util.Datehj�KYt\0\0xpw\0\0W��>�xsr\0Lorg.springframework.security.oauth2.common.DefaultExpiringOAuth2RefreshToken/�Gc��ɷ\0L\0\nexpirationq\0~\0xr\0Dorg.springframework.security.oauth2.common.DefaultOAuth2RefreshTokens�\ncT�^\0L\0valueq\0~\0xpt\0$874c8651-b81d-488d-96f4-0fcd6ce07990sq\0~\0	w\0\0X����xsr\0%java.util.Collections$UnmodifiableSet��я��U\0\0xr\0,java.util.Collections$UnmodifiableCollectionB\0��^�\0L\0ct\0Ljava/util/Collection;xpsr\0java.util.LinkedHashSet�l�Z��*\0\0xr\0java.util.HashSet�D�����4\0\0xpw\0\0\0?@\0\0\0\0\0t\0readt\0writet\0trustxt\0bearert\0$1f40a1b2-5f43-4f8a-832b-cd30f4fae838','46a4dcac1ffae4314e30be2a791cc737','admin','web_client','��\0sr\0Aorg.springframework.security.oauth2.provider.OAuth2Authentication�@bR\0L\0\rstoredRequestt\0<Lorg/springframework/security/oauth2/provider/OAuth2Request;L\0userAuthenticationt\02Lorg/springframework/security/core/Authentication;xr\0Gorg.springframework.security.authentication.AbstractAuthenticationTokenӪ(~nGd\0Z\0\rauthenticatedL\0authoritiest\0Ljava/util/Collection;L\0detailst\0Ljava/lang/Object;xp\0sr\0&java.util.Collections$UnmodifiableList�%1��\0L\0listt\0Ljava/util/List;xr\0,java.util.Collections$UnmodifiableCollectionB\0��^�\0L\0cq\0~\0xpsr\0java.util.ArrayListx����a�\0I\0sizexp\0\0\0w\0\0\0sr\0Borg.springframework.security.core.authority.SimpleGrantedAuthority\0\0\0\0\0\0�\0L\0rolet\0Ljava/lang/String;xpt\0ROLE_1sq\0~\0\rt\0ROLE_2xq\0~\0psr\0:org.springframework.security.oauth2.provider.OAuth2Request\0\0\0\0\0\0\0\0Z\0approvedL\0authoritiesq\0~\0L\0\nextensionst\0Ljava/util/Map;L\0redirectUriq\0~\0L\0refresht\0;Lorg/springframework/security/oauth2/provider/TokenRequest;L\0resourceIdst\0Ljava/util/Set;L\0\rresponseTypesq\0~\0xr\08org.springframework.security.oauth2.provider.BaseRequest6(z>�qi�\0L\0clientIdq\0~\0L\0requestParametersq\0~\0L\0scopeq\0~\0xpt\0\nweb_clientsr\0%java.util.Collections$UnmodifiableMap��t�B\0L\0mq\0~\0xpsr\0java.util.HashMap���`�\0F\0\nloadFactorI\0	thresholdxp?@\0\0\0\0\0w\0\0\0\0\0\0t\0\rresponse_typet\0codet\0redirect_urit\0http://www.baidu.comt\0codet\03sJaPwt\0\rclient_secrett\0secrett\0\ngrant_typet\0authorization_codet\0	client_idt\0\nweb_clientxsr\0%java.util.Collections$UnmodifiableSet��я��U\0\0xq\0~\0	sr\0java.util.LinkedHashSet�l�Z��*\0\0xr\0java.util.HashSet�D�����4\0\0xpw\0\0\0?@\0\0\0\0\0t\0readt\0writet\0trustxsq\0~\0-w\0\0\0?@\0\0\0\0\0\0xsq\0~\0?@\0\0\0\0\0\0w\0\0\0\0\0\0\0xt\0http://www.baidu.compsq\0~\0-w\0\0\0?@\0\0\0\0\0t\0mobile-resourcexsq\0~\0-w\0\0\0?@\0\0\0\0\0q\0~\0xsr\0Oorg.springframework.security.authentication.UsernamePasswordAuthenticationToken\0\0\0\0\0\0�\0L\0credentialsq\0~\0L\0	principalq\0~\0xq\0~\0sq\0~\0sq\0~\0\0\0\0w\0\0\0q\0~\0q\0~\0xq\0~\0;sr\0Horg.springframework.security.web.authentication.WebAuthenticationDetails\0\0\0\0\0\0�\0L\0\rremoteAddressq\0~\0L\0	sessionIdq\0~\0xpt\00:0:0:0:0:0:0:1t\0ycrzl2ue645nsbatp36wnmggpsr\0-com.faceye.component.security.web.entity.User{���T{\0Z\0accountExpiredZ\0\raccountLockedZ\0credentialsExpiredZ\0enabledL\0emailq\0~\0L\0encryptPasswordq\0~\0L\0idt\0Ljava/lang/Long;L\0passwordq\0~\0[\0roleIdst\0[Ljava/lang/Long;L\0rolesq\0~\0L\0usernameq\0~\0xp\0\0\0t\0haipenge@gmail.compsr\0java.lang.Long;��̏#�\0J\0valuexr\0java.lang.Number������\0\0xp\0\0\0\0\0\0\0�t\0 ceb4f32325eda6142bd65215f4c0f371psr\0/org.hibernate.collection.internal.PersistentSet�������\0L\0setq\0~\0xr\0>org.hibernate.collection.internal.AbstractPersistentCollection�J~w��\0	Z\0allowLoadOutsideTransactionI\0\ncachedSizeZ\0dirtyZ\0initializedL\0keyt\0Ljava/io/Serializable;L\0ownerq\0~\0L\0roleq\0~\0L\0sessionFactoryUuidq\0~\0L\0storedSnapshotq\0~\0Kxp\0����\0q\0~\0Gq\0~\0Ct\03com.faceye.component.security.web.entity.User.rolespsq\0~\0?@\0\0\0\0\0w\0\0\0\0\0\0sr\0-com.faceye.component.security.web.entity.Role{���T{\0L\0idq\0~\0AL\0menusq\0~\0L\0nameq\0~\0L\0	resourcesq\0~\0L\0usersq\0~\0xpsq\0~\0E\0\0\0\0\0\0\0sq\0~\0I\0����\0q\0~\0Qq\0~\0Pt\03com.faceye.component.security.web.entity.Role.menuspsq\0~\0?@\0\0\0\0\0\0w\0\0\0\0\0\0\0xsq\0~\0-w\0\0\0?@\0\0\0\0\0\0xt\0用户sq\0~\0I\0����\0q\0~\0Qq\0~\0Pt\07com.faceye.component.security.web.entity.Role.resourcespsq\0~\0?@\0\0\0\0\0\0w\0\0\0\0\0\0\0xsq\0~\0-w\0\0\0?@\0\0\0\0\0\0xsq\0~\0I\0����\0\0q\0~\0Qq\0~\0Pt\03com.faceye.component.security.web.entity.Role.userspppq\0~\0Psq\0~\0Osq\0~\0E\0\0\0\0\0\0\0sq\0~\0I\0����\0q\0~\0^q\0~\0]q\0~\0Spsq\0~\0?@\0\0\0\0\0w\0\0\0\0\0\0sr\0-com.faceye.component.security.web.entity.Menu{���T{\0L\0childrenq\0~\0L\0idq\0~\0AL\0nameq\0~\0L\0parentt\0/Lcom/faceye/component/security/web/entity/Menu;L\0resourcet\03Lcom/faceye/component/security/web/entity/Resource;L\0rolesq\0~\0L\0typet\0Ljava/lang/Integer;xpsq\0~\0I\0����\0sq\0~\0E\0\0\0\0\0\0\0q\0~\0et\06com.faceye.component.security.web.entity.Menu.childrenpsq\0~\0?@\0\0\0\0\0\0w\0\0\0\0\0\0\0xsq\0~\0-w\0\0\0?@\0\0\0\0\0\0xq\0~\0gt\0菜单管理sq\0~\0asq\0~\0I\0����\0sq\0~\0E\0\0\0\0\0\0\0q\0~\0lq\0~\0hpsq\0~\0?@\0\0\0\0\0w\0\0\0\0\0\0q\0~\0eq\0~\0esq\0~\0asq\0~\0I\0����\0sq\0~\0E\0\0\0\0\0\0\0q\0~\0pq\0~\0hpsq\0~\0?@\0\0\0\0\0\0w\0\0\0\0\0\0\0xsq\0~\0-w\0\0\0?@\0\0\0\0\0\0xq\0~\0rt\0用户管理q\0~\0lsr\01com.faceye.component.security.web.entity.Resource{���T{\0L\0idq\0~\0AL\0menuq\0~\0bL\0nameq\0~\0L\0rolesq\0~\0L\0urlq\0~\0xpsq\0~\0E\0\0\0\0\0\0\0	pt\0用户管理sq\0~\0I\0����\0q\0~\0xq\0~\0wt\07com.faceye.component.security.web.entity.Resource.rolespsq\0~\0?@\0\0\0\0\0w\0\0\0\0\0\0q\0~\0]q\0~\0]xsq\0~\0-w\0\0\0?@\0\0\0\0\0q\0~\0]xt\0/security/web/user/homesq\0~\0I\0����\0q\0~\0rq\0~\0pt\03com.faceye.component.security.web.entity.Menu.rolespsq\0~\0?@\0\0\0\0\0w\0\0\0\0\0\0q\0~\0]q\0~\0]xsq\0~\0-w\0\0\0?@\0\0\0\0\0q\0~\0]xsr\0java.lang.Integer⠤���8\0I\0valuexq\0~\0F\0\0\0q\0~\0psq\0~\0asq\0~\0I\0����\0sq\0~\0E\0\0\0\0\0\0\0\nq\0~\0�q\0~\0hpsq\0~\0?@\0\0\0\0\0\0w\0\0\0\0\0\0\0xsq\0~\0-w\0\0\0?@\0\0\0\0\0\0xq\0~\0�t\0资源管理q\0~\0lsq\0~\0vq\0~\0gpt\0资源管理sq\0~\0I\0����\0q\0~\0gq\0~\0�q\0~\0{psq\0~\0?@\0\0\0\0\0w\0\0\0\0\0\0q\0~\0]q\0~\0]xsq\0~\0-w\0\0\0?@\0\0\0\0\0q\0~\0]xt\0/security/web/resource/homesq\0~\0I\0����\0q\0~\0�q\0~\0�q\0~\0�psq\0~\0?@\0\0\0\0\0w\0\0\0\0\0\0q\0~\0]q\0~\0]xsq\0~\0-w\0\0\0?@\0\0\0\0\0q\0~\0]xq\0~\0�q\0~\0�sq\0~\0asq\0~\0I\0����\0q\0~\0xq\0~\0�q\0~\0hpsq\0~\0?@\0\0\0\0\0\0w\0\0\0\0\0\0\0xsq\0~\0-w\0\0\0?@\0\0\0\0\0\0xq\0~\0xt\0角色管理q\0~\0lsq\0~\0vq\0~\0�pt\0角色管理sq\0~\0I\0����\0q\0~\0�q\0~\0�q\0~\0{psq\0~\0?@\0\0\0\0\0w\0\0\0\0\0\0q\0~\0]q\0~\0]xsq\0~\0-w\0\0\0?@\0\0\0\0\0q\0~\0]xt\0/security/web/role/homesq\0~\0I\0����\0q\0~\0xq\0~\0�q\0~\0�psq\0~\0?@\0\0\0\0\0w\0\0\0\0\0\0q\0~\0]q\0~\0]xsq\0~\0-w\0\0\0?@\0\0\0\0\0q\0~\0]xq\0~\0�q\0~\0�xsq\0~\0-w\0\0\0?@\0\0\0\0\0q\0~\0eq\0~\0�q\0~\0pq\0~\0�xq\0~\0nt\0系统管理psq\0~\0vq\0~\0rpt\0系统管理sq\0~\0I\0����\0q\0~\0rq\0~\0�q\0~\0{psq\0~\0?@\0\0\0\0\0w\0\0\0\0\0\0q\0~\0]q\0~\0]xsq\0~\0-w\0\0\0?@\0\0\0\0\0q\0~\0]xt\0\0sq\0~\0I\0����\0q\0~\0nq\0~\0lq\0~\0�psq\0~\0?@\0\0\0\0\0w\0\0\0\0\0\0q\0~\0]q\0~\0]xsq\0~\0-w\0\0\0?@\0\0\0\0\0q\0~\0]xq\0~\0�sq\0~\0vsq\0~\0E\0\0\0\0\0\0\0pt\0菜单管理sq\0~\0I\0����\0q\0~\0�q\0~\0�q\0~\0{psq\0~\0?@\0\0\0\0\0w\0\0\0\0\0\0q\0~\0]q\0~\0]xsq\0~\0-w\0\0\0?@\0\0\0\0\0q\0~\0]xt\0/security/web/menu/homesq\0~\0I\0����\0q\0~\0gq\0~\0eq\0~\0�psq\0~\0?@\0\0\0\0\0w\0\0\0\0\0\0q\0~\0]q\0~\0]xsq\0~\0-w\0\0\0?@\0\0\0\0\0q\0~\0]xq\0~\0�q\0~\0eq\0~\0pq\0~\0pq\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0lq\0~\0lxsq\0~\0-w\0\0\0?@\0\0\0\0\0q\0~\0eq\0~\0�q\0~\0pq\0~\0�q\0~\0lxt\0	管理员sq\0~\0I\0����\0q\0~\0^q\0~\0]q\0~\0Xpsq\0~\0?@\0\0\0\0\0w\0\0\0\0\0\0sq\0~\0vsq\0~\0E\0\0\0\0\0\0\0pt\0oauthsq\0~\0I\0����\0q\0~\0�q\0~\0�q\0~\0{psq\0~\0?@\0\0\0\0\0w\0\0\0\0\0\0q\0~\0]q\0~\0]xsq\0~\0-w\0\0\0?@\0\0\0\0\0q\0~\0]xt\0/oauth/q\0~\0�q\0~\0wq\0~\0wq\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�sq\0~\0vsq\0~\0E\0\0\0\0\0\0\0\rpt\0安全管理sq\0~\0I\0����\0q\0~\0�q\0~\0�q\0~\0{psq\0~\0?@\0\0\0\0\0w\0\0\0\0\0\0q\0~\0]q\0~\0]xsq\0~\0-w\0\0\0?@\0\0\0\0\0q\0~\0]xt\0/security/web/q\0~\0�q\0~\0�q\0~\0�xsq\0~\0-w\0\0\0?@\0\0\0\0\0q\0~\0�q\0~\0wq\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�xsq\0~\0I\0����\0\0q\0~\0^q\0~\0]q\0~\0\\pppq\0~\0]xsq\0~\0-w\0\0\0?@\0\0\0\0\0q\0~\0Pq\0~\0]xt\0admin','e7c2baeebf9df37321e79db62bc4106d'),('cf8e75cea698e7a995ff9b37234beb0f','��\0sr\0Corg.springframework.security.oauth2.common.DefaultOAuth2AccessToken��6$��\0L\0additionalInformationt\0Ljava/util/Map;L\0\nexpirationt\0Ljava/util/Date;L\0refreshTokent\0?Lorg/springframework/security/oauth2/common/OAuth2RefreshToken;L\0scopet\0Ljava/util/Set;L\0	tokenTypet\0Ljava/lang/String;L\0valueq\0~\0xpsr\0java.util.Collections$EmptyMapY6�Z���\0\0xpsr\0java.util.Datehj�KYt\0\0xpw\0\0W���xsr\0Lorg.springframework.security.oauth2.common.DefaultExpiringOAuth2RefreshToken/�Gc��ɷ\0L\0\nexpirationq\0~\0xr\0Dorg.springframework.security.oauth2.common.DefaultOAuth2RefreshTokens�\ncT�^\0L\0valueq\0~\0xpt\0$e3d68cca-34a0-4358-89ba-035654327852sq\0~\0	w\0\0X�WBxsr\0%java.util.Collections$UnmodifiableSet��я��U\0\0xr\0,java.util.Collections$UnmodifiableCollectionB\0��^�\0L\0ct\0Ljava/util/Collection;xpsr\0java.util.LinkedHashSet�l�Z��*\0\0xr\0java.util.HashSet�D�����4\0\0xpw\0\0\0?@\0\0\0\0\0t\0readxt\0bearert\0$f5967a08-8d78-4057-bdd9-03eea801c32f','61511fcf08c66a0ec2fb691a71866bf5','demo','mobile_client','��\0sr\0Aorg.springframework.security.oauth2.provider.OAuth2Authentication�@bR\0L\0\rstoredRequestt\0<Lorg/springframework/security/oauth2/provider/OAuth2Request;L\0userAuthenticationt\02Lorg/springframework/security/core/Authentication;xr\0Gorg.springframework.security.authentication.AbstractAuthenticationTokenӪ(~nGd\0Z\0\rauthenticatedL\0authoritiest\0Ljava/util/Collection;L\0detailst\0Ljava/lang/Object;xp\0sr\0&java.util.Collections$UnmodifiableList�%1��\0L\0listt\0Ljava/util/List;xr\0,java.util.Collections$UnmodifiableCollectionB\0��^�\0L\0cq\0~\0xpsr\0java.util.ArrayListx����a�\0I\0sizexp\0\0\0w\0\0\0sr\0Borg.springframework.security.core.authority.SimpleGrantedAuthority\0\0\0\0\0\0�\0L\0rolet\0Ljava/lang/String;xpt\0ROLE_2xq\0~\0psr\0:org.springframework.security.oauth2.provider.OAuth2Request\0\0\0\0\0\0\0\0Z\0approvedL\0authoritiesq\0~\0L\0\nextensionst\0Ljava/util/Map;L\0redirectUriq\0~\0L\0refresht\0;Lorg/springframework/security/oauth2/provider/TokenRequest;L\0resourceIdst\0Ljava/util/Set;L\0\rresponseTypesq\0~\0xr\08org.springframework.security.oauth2.provider.BaseRequest6(z>�qi�\0L\0clientIdq\0~\0L\0requestParametersq\0~\0L\0scopeq\0~\0xpt\0\rmobile_clientsr\0%java.util.Collections$UnmodifiableMap��t�B\0L\0mq\0~\0xpsq\0~\0sr\0java.util.HashMap���`�\0F\0\nloadFactorI\0	thresholdxp?@\0\0\0\0\0w\0\0\0\0\0\0t\0\ngrant_typet\0passwordt\0scopet\0readt\0	client_idt\0\rmobile_clientt\0usernamet\0demoxsr\0%java.util.Collections$UnmodifiableSet��я��U\0\0xq\0~\0	sr\0java.util.LinkedHashSet�l�Z��*\0\0xr\0java.util.HashSet�D�����4\0\0xpw\0\0\0?@\0\0\0\0\0q\0~\0 xsq\0~\0(w\0\0\0?@\0\0\0\0\0\0xsq\0~\0?@\0\0\0\0\0\0w\0\0\0\0\0\0\0xpsr\09org.springframework.security.oauth2.provider.TokenRequest�*���8�\0L\0	grantTypeq\0~\0xq\0~\0t\0\rmobile_clientsq\0~\0sr\0java.util.LinkedHashMap4�N\\l��\0Z\0accessOrderxq\0~\0?@\0\0\0\0\0w\0\0\0\0\0\0t\0\rrefresh_tokent\0$e3d68cca-34a0-4358-89ba-035654327852t\0\rclient_secrett\0secrett\0\ngrant_typet\0\rrefresh_tokent\0	client_idq\0~\0.x\0sq\0~\0%sq\0~\0\'w\0\0\0?@\0\0\0\0\0\0xq\0~\07sq\0~\0(w\0\0\0?@\0\0\0\0\0t\0mobile-resourcexsq\0~\0(w\0\0\0?@\0\0\0\0\0\0xsr\0Oorg.springframework.security.authentication.UsernamePasswordAuthenticationToken\0\0\0\0\0\0�\0L\0credentialsq\0~\0L\0	principalq\0~\0xq\0~\0sq\0~\0sq\0~\0\0\0\0w\0\0\0q\0~\0xq\0~\0Asq\0~\00?@\0\0\0\0\0w\0\0\0\0\0\0q\0~\0q\0~\0q\0~\0q\0~\0 t\0\rclient_secrett\0secretq\0~\0!q\0~\0\"q\0~\0#q\0~\0$x\0psr\0-com.faceye.component.security.web.entity.User{���T{\0Z\0accountExpiredZ\0\raccountLockedZ\0credentialsExpiredZ\0enabledL\0emailq\0~\0L\0encryptPasswordq\0~\0L\0idt\0Ljava/lang/Long;L\0passwordq\0~\0[\0roleIdst\0[Ljava/lang/Long;L\0rolesq\0~\0L\0usernameq\0~\0xp\0\0\0t\0demot\0\0sr\0java.lang.Long;��̏#�\0J\0valuexr\0java.lang.Number������\0\0xp\0\0\0\0\0\0\0�t\0 bccf2ed538c8be27b11c14e58c28cdbbur\0[Ljava.lang.Long;}�\n���c+\0\0xp\0\0\0sq\0~\0K\0\0\0\0\0\0\0sr\0/org.hibernate.collection.internal.PersistentSet�������\0L\0setq\0~\0xr\0>org.hibernate.collection.internal.AbstractPersistentCollection�J~w��\0	Z\0allowLoadOutsideTransactionI\0\ncachedSizeZ\0dirtyZ\0initializedL\0keyt\0Ljava/io/Serializable;L\0ownerq\0~\0L\0roleq\0~\0L\0sessionFactoryUuidq\0~\0L\0storedSnapshotq\0~\0Txp\0����\0q\0~\0Mq\0~\0Ht\03com.faceye.component.security.web.entity.User.rolespsq\0~\0?@\0\0\0\0\0w\0\0\0\0\0\0sr\0-com.faceye.component.security.web.entity.Role{���T{\0L\0idq\0~\0FL\0menusq\0~\0L\0nameq\0~\0L\0	resourcesq\0~\0L\0usersq\0~\0xpsq\0~\0K\0\0\0\0\0\0\0sq\0~\0R\0����\0q\0~\0Zq\0~\0Yt\03com.faceye.component.security.web.entity.Role.menuspsq\0~\0?@\0\0\0\0\0\0w\0\0\0\0\0\0\0xsq\0~\0(w\0\0\0?@\0\0\0\0\0\0xt\0用户sq\0~\0R\0����\0q\0~\0Zq\0~\0Yt\07com.faceye.component.security.web.entity.Role.resourcespsq\0~\0?@\0\0\0\0\0\0w\0\0\0\0\0\0\0xsq\0~\0(w\0\0\0?@\0\0\0\0\0\0xsq\0~\0R\0����\0\0q\0~\0Zq\0~\0Yt\03com.faceye.component.security.web.entity.Role.userspppq\0~\0Yxsq\0~\0(w\0\0\0?@\0\0\0\0\0q\0~\0Yxt\0demo','a3c2d32d9f20743ac0a4cda3c26fbbfb'),('ef85b490669e1f355f4c9c836fd5f847','��\0sr\0Corg.springframework.security.oauth2.common.DefaultOAuth2AccessToken��6$��\0L\0additionalInformationt\0Ljava/util/Map;L\0\nexpirationt\0Ljava/util/Date;L\0refreshTokent\0?Lorg/springframework/security/oauth2/common/OAuth2RefreshToken;L\0scopet\0Ljava/util/Set;L\0	tokenTypet\0Ljava/lang/String;L\0valueq\0~\0xpsr\0java.util.Collections$EmptyMapY6�Z���\0\0xpsr\0java.util.Datehj�KYt\0\0xpw\0\0W�r�xsr\0Lorg.springframework.security.oauth2.common.DefaultExpiringOAuth2RefreshToken/�Gc��ɷ\0L\0\nexpirationq\0~\0xr\0Dorg.springframework.security.oauth2.common.DefaultOAuth2RefreshTokens�\ncT�^\0L\0valueq\0~\0xpt\0$c42c9c9d-f1b2-474c-8999-660873450418sq\0~\0	w\0\0X�]��xsr\0%java.util.Collections$UnmodifiableSet��я��U\0\0xr\0,java.util.Collections$UnmodifiableCollectionB\0��^�\0L\0ct\0Ljava/util/Collection;xpsr\0java.util.LinkedHashSet�l�Z��*\0\0xr\0java.util.HashSet�D�����4\0\0xpw\0\0\0?@\0\0\0\0\0t\0readxt\0bearert\0$8f752ed0-4cc0-4b08-9b8e-912ebc3ca196','eef2c7537bd41579ee6c7259a4e0bc75','admin','mobile_client','��\0sr\0Aorg.springframework.security.oauth2.provider.OAuth2Authentication�@bR\0L\0\rstoredRequestt\0<Lorg/springframework/security/oauth2/provider/OAuth2Request;L\0userAuthenticationt\02Lorg/springframework/security/core/Authentication;xr\0Gorg.springframework.security.authentication.AbstractAuthenticationTokenӪ(~nGd\0Z\0\rauthenticatedL\0authoritiest\0Ljava/util/Collection;L\0detailst\0Ljava/lang/Object;xp\0sr\0&java.util.Collections$UnmodifiableList�%1��\0L\0listt\0Ljava/util/List;xr\0,java.util.Collections$UnmodifiableCollectionB\0��^�\0L\0cq\0~\0xpsr\0java.util.ArrayListx����a�\0I\0sizexp\0\0\0w\0\0\0sr\0Borg.springframework.security.core.authority.SimpleGrantedAuthority\0\0\0\0\0\0�\0L\0rolet\0Ljava/lang/String;xpt\0ROLE_1sq\0~\0\rt\0ROLE_2xq\0~\0psr\0:org.springframework.security.oauth2.provider.OAuth2Request\0\0\0\0\0\0\0\0Z\0approvedL\0authoritiesq\0~\0L\0\nextensionst\0Ljava/util/Map;L\0redirectUriq\0~\0L\0refresht\0;Lorg/springframework/security/oauth2/provider/TokenRequest;L\0resourceIdst\0Ljava/util/Set;L\0\rresponseTypesq\0~\0xr\08org.springframework.security.oauth2.provider.BaseRequest6(z>�qi�\0L\0clientIdq\0~\0L\0requestParametersq\0~\0L\0scopeq\0~\0xpt\0\rmobile_clientsr\0%java.util.Collections$UnmodifiableMap��t�B\0L\0mq\0~\0xpsr\0java.util.HashMap���`�\0F\0\nloadFactorI\0	thresholdxp?@\0\0\0\0\0w\0\0\0\0\0\0t\0\ngrant_typet\0passwordt\0scopet\0readt\0	client_idt\0\rmobile_clientt\0usernamet\0adminxsr\0%java.util.Collections$UnmodifiableSet��я��U\0\0xq\0~\0	sr\0java.util.LinkedHashSet�l�Z��*\0\0xr\0java.util.HashSet�D�����4\0\0xpw\0\0\0?@\0\0\0\0\0q\0~\0!xsq\0~\0)w\0\0\0?@\0\0\0\0\0\0xsq\0~\0?@\0\0\0\0\0\0w\0\0\0\0\0\0\0xppsq\0~\0)w\0\0\0?@\0\0\0\0\0t\0mobile-resourcexsq\0~\0)w\0\0\0?@\0\0\0\0\0\0xsr\0Oorg.springframework.security.authentication.UsernamePasswordAuthenticationToken\0\0\0\0\0\0�\0L\0credentialsq\0~\0L\0	principalq\0~\0xq\0~\0sq\0~\0sq\0~\0\0\0\0w\0\0\0q\0~\0q\0~\0xq\0~\03sr\0java.util.LinkedHashMap4�N\\l��\0Z\0accessOrderxq\0~\0?@\0\0\0\0\0w\0\0\0\0\0\0q\0~\0q\0~\0q\0~\0 q\0~\0!t\0\rclient_secrett\0secretq\0~\0\"q\0~\0#q\0~\0$q\0~\0%x\0psr\0-com.faceye.component.security.web.entity.User{���T{\0Z\0accountExpiredZ\0\raccountLockedZ\0credentialsExpiredZ\0enabledL\0emailq\0~\0L\0encryptPasswordq\0~\0L\0idt\0Ljava/lang/Long;L\0passwordq\0~\0[\0roleIdst\0[Ljava/lang/Long;L\0rolesq\0~\0L\0usernameq\0~\0xp\0\0\0t\0haipenge@gmail.compsr\0java.lang.Long;��̏#�\0J\0valuexr\0java.lang.Number������\0\0xp\0\0\0\0\0\0\0�t\0 ceb4f32325eda6142bd65215f4c0f371psr\0/org.hibernate.collection.internal.PersistentSet�������\0L\0setq\0~\0xr\0>org.hibernate.collection.internal.AbstractPersistentCollection�J~w��\0	Z\0allowLoadOutsideTransactionI\0\ncachedSizeZ\0dirtyZ\0initializedL\0keyt\0Ljava/io/Serializable;L\0ownerq\0~\0L\0roleq\0~\0L\0sessionFactoryUuidq\0~\0L\0storedSnapshotq\0~\0Cxp\0����\0q\0~\0?q\0~\0;t\03com.faceye.component.security.web.entity.User.rolespsq\0~\0?@\0\0\0\0\0w\0\0\0\0\0\0sr\0-com.faceye.component.security.web.entity.Role{���T{\0L\0idq\0~\09L\0menusq\0~\0L\0nameq\0~\0L\0	resourcesq\0~\0L\0usersq\0~\0xpsq\0~\0=\0\0\0\0\0\0\0sq\0~\0A\0����\0q\0~\0Iq\0~\0Ht\03com.faceye.component.security.web.entity.Role.menuspsq\0~\0?@\0\0\0\0\0w\0\0\0\0\0\0\0xsq\0~\0)w\0\0\0?@\0\0\0\0\0\0xt\0用户sq\0~\0A\0����\0q\0~\0Iq\0~\0Ht\07com.faceye.component.security.web.entity.Role.resourcespsq\0~\0?@\0\0\0\0\0w\0\0\0\0\0\0\0xsq\0~\0)w\0\0\0?@\0\0\0\0\0\0xsq\0~\0A\0����\0\0q\0~\0Iq\0~\0Ht\03com.faceye.component.security.web.entity.Role.userspppq\0~\0Hsq\0~\0Gsq\0~\0=\0\0\0\0\0\0\0sq\0~\0A\0����\0q\0~\0Vq\0~\0Uq\0~\0Kpsq\0~\0?@\0\0\0\0\0w\0\0\0\0\0\0sr\0-com.faceye.component.security.web.entity.Menu{���T{\0L\0childrenq\0~\0L\0idq\0~\09L\0nameq\0~\0L\0parentt\0/Lcom/faceye/component/security/web/entity/Menu;L\0resourcet\03Lcom/faceye/component/security/web/entity/Resource;L\0rolesq\0~\0L\0typet\0Ljava/lang/Integer;xpsq\0~\0A\0����\0sq\0~\0=\0\0\0\0\0\0\0	q\0~\0]t\06com.faceye.component.security.web.entity.Menu.childrenpsq\0~\0?@\0\0\0\0\0w\0\0\0\0\0\0\0xsq\0~\0)w\0\0\0?@\0\0\0\0\0\0xq\0~\0_t\0角色管理sq\0~\0Ysq\0~\0A\0����\0sq\0~\0=\0\0\0\0\0\0\0q\0~\0dq\0~\0`psq\0~\0?@\0\0\0\0\0w\0\0\0\0\0\0q\0~\0]q\0~\0]sq\0~\0Ysq\0~\0A\0����\0sq\0~\0=\0\0\0\0\0\0\0q\0~\0hq\0~\0`psq\0~\0?@\0\0\0\0\0w\0\0\0\0\0\0\0xsq\0~\0)w\0\0\0?@\0\0\0\0\0\0xq\0~\0jt\0菜单管理q\0~\0dsr\01com.faceye.component.security.web.entity.Resource{���T{\0L\0idq\0~\09L\0menuq\0~\0ZL\0nameq\0~\0L\0rolesq\0~\0L\0urlq\0~\0xpsq\0~\0=\0\0\0\0\0\0\0pt\0菜单管理sq\0~\0A\0����\0q\0~\0pq\0~\0ot\07com.faceye.component.security.web.entity.Resource.rolespsq\0~\0?@\0\0\0\0\0w\0\0\0\0\0\0q\0~\0Uq\0~\0Uxsq\0~\0)w\0\0\0?@\0\0\0\0\0q\0~\0Uxt\0/security/web/menu/homesq\0~\0A\0����\0q\0~\0jq\0~\0ht\03com.faceye.component.security.web.entity.Menu.rolespsq\0~\0?@\0\0\0\0\0w\0\0\0\0\0\0q\0~\0Uq\0~\0Uxsq\0~\0)w\0\0\0?@\0\0\0\0\0q\0~\0Uxsr\0java.lang.Integer⠤���8\0I\0valuexq\0~\0>\0\0\0q\0~\0hsq\0~\0Ysq\0~\0A\0����\0sq\0~\0=\0\0\0\0\0\0\0q\0~\0}q\0~\0`psq\0~\0?@\0\0\0\0\0w\0\0\0\0\0\0\0xsq\0~\0)w\0\0\0?@\0\0\0\0\0\0xq\0~\0t\0用户管理q\0~\0dsq\0~\0nq\0~\0_pt\0用户管理sq\0~\0A\0����\0q\0~\0_q\0~\0�q\0~\0spsq\0~\0?@\0\0\0\0\0w\0\0\0\0\0\0q\0~\0Uq\0~\0Uxsq\0~\0)w\0\0\0?@\0\0\0\0\0q\0~\0Uxt\0/security/web/user/homesq\0~\0A\0����\0q\0~\0q\0~\0}q\0~\0xpsq\0~\0?@\0\0\0\0\0w\0\0\0\0\0\0q\0~\0Uq\0~\0Uxsq\0~\0)w\0\0\0?@\0\0\0\0\0q\0~\0Uxq\0~\0|q\0~\0}sq\0~\0Ysq\0~\0A\0����\0sq\0~\0=\0\0\0\0\0\0\0\nq\0~\0�q\0~\0`psq\0~\0?@\0\0\0\0\0w\0\0\0\0\0\0\0xsq\0~\0)w\0\0\0?@\0\0\0\0\0\0xq\0~\0�t\0资源管理q\0~\0dsq\0~\0nq\0~\0jpt\0资源管理sq\0~\0A\0����\0q\0~\0jq\0~\0�q\0~\0spsq\0~\0?@\0\0\0\0\0w\0\0\0\0\0\0q\0~\0Uq\0~\0Uxsq\0~\0)w\0\0\0?@\0\0\0\0\0q\0~\0Uxt\0/security/web/resource/homesq\0~\0A\0����\0q\0~\0�q\0~\0�q\0~\0xpsq\0~\0?@\0\0\0\0\0w\0\0\0\0\0\0q\0~\0Uq\0~\0Uxsq\0~\0)w\0\0\0?@\0\0\0\0\0q\0~\0Uxq\0~\0|q\0~\0�xsq\0~\0)w\0\0\0?@\0\0\0\0\0q\0~\0]q\0~\0hq\0~\0}q\0~\0�xq\0~\0ft\0系统管理psq\0~\0nq\0~\0pt\0系统管理sq\0~\0A\0����\0q\0~\0q\0~\0�q\0~\0spsq\0~\0?@\0\0\0\0\0w\0\0\0\0\0\0q\0~\0Uq\0~\0Uxsq\0~\0)w\0\0\0?@\0\0\0\0\0q\0~\0Uxt\0\0sq\0~\0A\0����\0q\0~\0fq\0~\0dq\0~\0xpsq\0~\0?@\0\0\0\0\0w\0\0\0\0\0\0q\0~\0Uq\0~\0Uxsq\0~\0)w\0\0\0?@\0\0\0\0\0q\0~\0Uxq\0~\0|sq\0~\0nq\0~\0�pt\0角色管理sq\0~\0A\0����\0q\0~\0�q\0~\0�q\0~\0spsq\0~\0?@\0\0\0\0\0w\0\0\0\0\0\0q\0~\0Uq\0~\0Uxsq\0~\0)w\0\0\0?@\0\0\0\0\0q\0~\0Uxt\0/security/web/role/homesq\0~\0A\0����\0q\0~\0_q\0~\0]q\0~\0xpsq\0~\0?@\0\0\0\0\0w\0\0\0\0\0\0q\0~\0Uq\0~\0Uxsq\0~\0)w\0\0\0?@\0\0\0\0\0q\0~\0Uxq\0~\0|q\0~\0]q\0~\0hq\0~\0hq\0~\0dq\0~\0dq\0~\0}q\0~\0}q\0~\0�q\0~\0�xsq\0~\0)w\0\0\0?@\0\0\0\0\0q\0~\0]q\0~\0hq\0~\0dq\0~\0}q\0~\0�xt\0	管理员sq\0~\0A\0����\0q\0~\0Vq\0~\0Uq\0~\0Ppsq\0~\0?@\0\0\0\0\0w\0\0\0\0\0\0sq\0~\0nsq\0~\0=\0\0\0\0\0\0\0\rpt\0安全管理sq\0~\0A\0����\0q\0~\0�q\0~\0�q\0~\0spsq\0~\0?@\0\0\0\0\0w\0\0\0\0\0\0q\0~\0Uq\0~\0Uxsq\0~\0)w\0\0\0?@\0\0\0\0\0q\0~\0Uxt\0/security/web/q\0~\0�q\0~\0�q\0~\0�q\0~\0oq\0~\0osq\0~\0nsq\0~\0=\0\0\0\0\0\0\0pt\0oauthsq\0~\0A\0����\0q\0~\0�q\0~\0�q\0~\0spsq\0~\0?@\0\0\0\0\0w\0\0\0\0\0\0q\0~\0Uq\0~\0Uxsq\0~\0)w\0\0\0?@\0\0\0\0\0q\0~\0Uxt\0/oauth/q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�xsq\0~\0)w\0\0\0?@\0\0\0\0\0q\0~\0�q\0~\0�q\0~\0oq\0~\0�q\0~\0�q\0~\0�q\0~\0�xsq\0~\0A\0����\0\0q\0~\0Vq\0~\0Uq\0~\0Tpppq\0~\0Uxsq\0~\0)w\0\0\0?@\0\0\0\0\0q\0~\0Uq\0~\0Hxt\0admin','03533f56fa1f4d43b243f431b96c38e5');
/*!40000 ALTER TABLE `oauth_access_token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_approvals`
--

DROP TABLE IF EXISTS `oauth_approvals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oauth_approvals` (
  `userId` varchar(256) DEFAULT NULL,
  `clientId` varchar(256) DEFAULT NULL,
  `scope` varchar(256) DEFAULT NULL,
  `status` varchar(10) DEFAULT NULL,
  `expiresAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `lastModifiedAt` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_approvals`
--

LOCK TABLES `oauth_approvals` WRITE;
/*!40000 ALTER TABLE `oauth_approvals` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth_approvals` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_client_details`
--

DROP TABLE IF EXISTS `oauth_client_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oauth_client_details` (
  `client_id` varchar(255) NOT NULL,
  `resource_ids` varchar(256) DEFAULT NULL,
  `client_secret` varchar(256) DEFAULT NULL,
  `scope` varchar(256) DEFAULT NULL,
  `authorized_grant_types` varchar(256) DEFAULT NULL,
  `web_server_redirect_uri` varchar(256) DEFAULT NULL,
  `authorities` varchar(256) DEFAULT NULL,
  `access_token_validity` int(11) DEFAULT NULL,
  `refresh_token_validity` int(11) DEFAULT NULL,
  `additional_information` varchar(4096) DEFAULT NULL,
  `autoapprove` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`client_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_client_details`
--

LOCK TABLES `oauth_client_details` WRITE;
/*!40000 ALTER TABLE `oauth_client_details` DISABLE KEYS */;
INSERT  IGNORE INTO `oauth_client_details` (`client_id`, `resource_ids`, `client_secret`, `scope`, `authorized_grant_types`, `web_server_redirect_uri`, `authorities`, `access_token_validity`, `refresh_token_validity`, `additional_information`, `autoapprove`) VALUES ('mobile_client','mobile-resource','secret','read,write,trust','password,refresh_token','http://www.baidu.com',NULL,NULL,NULL,NULL,NULL),('web_client','web-resource','secret','read,write,trust','authorization_code,refresh_token','http://www.baidu.com',NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `oauth_client_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_client_token`
--

DROP TABLE IF EXISTS `oauth_client_token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oauth_client_token` (
  `token_id` varchar(256) DEFAULT NULL,
  `token` blob,
  `authentication_id` varchar(255) NOT NULL,
  `user_name` varchar(256) DEFAULT NULL,
  `client_id` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`authentication_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_client_token`
--

LOCK TABLES `oauth_client_token` WRITE;
/*!40000 ALTER TABLE `oauth_client_token` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth_client_token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_code`
--

DROP TABLE IF EXISTS `oauth_code`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oauth_code` (
  `code` varchar(256) DEFAULT NULL,
  `authentication` blob
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_code`
--

LOCK TABLES `oauth_code` WRITE;
/*!40000 ALTER TABLE `oauth_code` DISABLE KEYS */;
INSERT  IGNORE INTO `oauth_code` (`code`, `authentication`) VALUES ('Tf1oeT','��\0sr\0Aorg.springframework.security.oauth2.provider.OAuth2Authentication�@bR\0L\0\rstoredRequestt\0<Lorg/springframework/security/oauth2/provider/OAuth2Request;L\0userAuthenticationt\02Lorg/springframework/security/core/Authentication;xr\0Gorg.springframework.security.authentication.AbstractAuthenticationTokenӪ(~nGd\0Z\0\rauthenticatedL\0authoritiest\0Ljava/util/Collection;L\0detailst\0Ljava/lang/Object;xp\0sr\0&java.util.Collections$UnmodifiableList�%1��\0L\0listt\0Ljava/util/List;xr\0,java.util.Collections$UnmodifiableCollectionB\0��^�\0L\0cq\0~\0xpsr\0java.util.ArrayListx����a�\0I\0sizexp\0\0\0w\0\0\0sr\0Borg.springframework.security.core.authority.SimpleGrantedAuthority\0\0\0\0\0\0�\0L\0rolet\0Ljava/lang/String;xpt\0ROLE_1sq\0~\0\rt\0ROLE_2xq\0~\0psr\0:org.springframework.security.oauth2.provider.OAuth2Request\0\0\0\0\0\0\0\0Z\0approvedL\0authoritiesq\0~\0L\0\nextensionst\0Ljava/util/Map;L\0redirectUriq\0~\0L\0refresht\0;Lorg/springframework/security/oauth2/provider/TokenRequest;L\0resourceIdst\0Ljava/util/Set;L\0\rresponseTypesq\0~\0xr\08org.springframework.security.oauth2.provider.BaseRequest6(z>�qi�\0L\0clientIdq\0~\0L\0requestParametersq\0~\0L\0scopeq\0~\0xpt\0clientsr\0%java.util.Collections$UnmodifiableMap��t�B\0L\0mq\0~\0xpsq\0~\0\Zsr\0java.util.LinkedHashMap4�N\\l��\0Z\0accessOrderxr\0java.util.HashMap���`�\0F\0\nloadFactorI\0	thresholdxp?@\0\0\0\0\0w\0\0\0\0\0\0t\0\rresponse_typet\0codet\0	client_idq\0~\0t\0redirect_urit\0http://www.baidu.comx\0sr\0%java.util.Collections$UnmodifiableSet��я��U\0\0xq\0~\0	sr\0java.util.LinkedHashSet�l�Z��*\0\0xr\0java.util.HashSet�D�����4\0\0xpw\0\0\0?@\0\0\0\0\0t\0readt\0writet\0trustxsq\0~\0(w\0\0\0?@\0\0\0\0\0\0xsq\0~\0?@\0\0\0\0\0\0w\0\0\0\0\0\0\0xq\0~\0$psq\0~\0(w\0\0\0?@\0\0\0\0\0\0xsq\0~\0(w\0\0\0?@\0\0\0\0\0q\0~\0!xsr\0Oorg.springframework.security.authentication.UsernamePasswordAuthenticationToken\0\0\0\0\0\0�\0L\0credentialsq\0~\0L\0	principalq\0~\0xq\0~\0sq\0~\0sq\0~\0\0\0\0w\0\0\0q\0~\0q\0~\0xq\0~\04sr\0Horg.springframework.security.web.authentication.WebAuthenticationDetails\0\0\0\0\0\0�\0L\0\rremoteAddressq\0~\0L\0	sessionIdq\0~\0xpt\00:0:0:0:0:0:0:1t\0\Z14l7eq1vmfmlv1ld6sdh3cslfypsr\0-com.faceye.component.security.web.entity.User{���T{\0Z\0accountExpiredZ\0\raccountLockedZ\0credentialsExpiredZ\0enabledL\0emailq\0~\0L\0encryptPasswordq\0~\0L\0idt\0Ljava/lang/Long;L\0passwordq\0~\0[\0roleIdst\0[Ljava/lang/Long;L\0rolesq\0~\0L\0usernameq\0~\0xp\0\0\0t\0haipenge@gmail.compsr\0java.lang.Long;��̏#�\0J\0valuexr\0java.lang.Number������\0\0xp\0\0\0\0\0\0\0�t\0 ceb4f32325eda6142bd65215f4c0f371psr\0/org.hibernate.collection.internal.PersistentSet�������\0L\0setq\0~\0xr\0>org.hibernate.collection.internal.AbstractPersistentCollection�J~w��\0	Z\0allowLoadOutsideTransactionI\0\ncachedSizeZ\0dirtyZ\0initializedL\0keyt\0Ljava/io/Serializable;L\0ownerq\0~\0L\0roleq\0~\0L\0sessionFactoryUuidq\0~\0L\0storedSnapshotq\0~\0Dxp\0����\0q\0~\0@q\0~\0<t\03com.faceye.component.security.web.entity.User.rolespsq\0~\0?@\0\0\0\0\0w\0\0\0\0\0\0sr\0-com.faceye.component.security.web.entity.Role{���T{\0L\0idq\0~\0:L\0menusq\0~\0L\0nameq\0~\0L\0	resourcesq\0~\0L\0usersq\0~\0xpsq\0~\0>\0\0\0\0\0\0\0sq\0~\0B\0����\0q\0~\0Jq\0~\0It\03com.faceye.component.security.web.entity.Role.menuspsq\0~\0?@\0\0\0\0\0w\0\0\0\0\0\0sr\0-com.faceye.component.security.web.entity.Menu{���T{\0L\0childrenq\0~\0L\0idq\0~\0:L\0nameq\0~\0L\0parentt\0/Lcom/faceye/component/security/web/entity/Menu;L\0resourcet\03Lcom/faceye/component/security/web/entity/Resource;L\0rolesq\0~\0L\0typet\0Ljava/lang/Integer;xpsq\0~\0B\0����\0sq\0~\0>\0\0\0\0\0\0\0q\0~\0Rt\06com.faceye.component.security.web.entity.Menu.childrenpsq\0~\0?@\0\0\0\0\0w\0\0\0\0\0\0\0xsq\0~\0(w\0\0\0?@\0\0\0\0\0\0xq\0~\0Tt\0用户管理sq\0~\0Nsq\0~\0B\0����\0sq\0~\0>\0\0\0\0\0\0\0q\0~\0Yq\0~\0Upsq\0~\0?@\0\0\0\0\0w\0\0\0\0\0\0q\0~\0Rq\0~\0Rsq\0~\0Nsq\0~\0B\0����\0sq\0~\0>\0\0\0\0\0\0\0q\0~\0]q\0~\0Upsq\0~\0?@\0\0\0\0\0w\0\0\0\0\0\0\0xsq\0~\0(w\0\0\0?@\0\0\0\0\0\0xq\0~\0_t\0菜单管理q\0~\0Ysr\01com.faceye.component.security.web.entity.Resource{���T{\0L\0idq\0~\0:L\0menuq\0~\0OL\0nameq\0~\0L\0rolesq\0~\0L\0urlq\0~\0xpsq\0~\0>\0\0\0\0\0\0\0pt\0菜单管理sq\0~\0B\0����\0q\0~\0eq\0~\0dt\07com.faceye.component.security.web.entity.Resource.rolespsq\0~\0?@\0\0\0\0\0w\0\0\0\0\0\0q\0~\0Iq\0~\0Ixsq\0~\0(w\0\0\0?@\0\0\0\0\0q\0~\0Ixt\0/security/web/menu/homesq\0~\0B\0����\0q\0~\0_q\0~\0]t\03com.faceye.component.security.web.entity.Menu.rolespsq\0~\0?@\0\0\0\0\0w\0\0\0\0\0\0q\0~\0Iq\0~\0Ixsq\0~\0(w\0\0\0?@\0\0\0\0\0q\0~\0Ixsr\0java.lang.Integer⠤���8\0I\0valuexq\0~\0?\0\0\0q\0~\0]sq\0~\0Nsq\0~\0B\0����\0sq\0~\0>\0\0\0\0\0\0\0	q\0~\0rq\0~\0Upsq\0~\0?@\0\0\0\0\0w\0\0\0\0\0\0\0xsq\0~\0(w\0\0\0?@\0\0\0\0\0\0xq\0~\0tt\0角色管理q\0~\0Ysq\0~\0csq\0~\0>\0\0\0\0\0\0\0\npt\0角色管理sq\0~\0B\0����\0q\0~\0yq\0~\0xq\0~\0hpsq\0~\0?@\0\0\0\0\0w\0\0\0\0\0\0q\0~\0Iq\0~\0Ixsq\0~\0(w\0\0\0?@\0\0\0\0\0q\0~\0Ixt\0/security/web/role/homesq\0~\0B\0����\0q\0~\0tq\0~\0rq\0~\0mpsq\0~\0?@\0\0\0\0\0w\0\0\0\0\0\0q\0~\0Iq\0~\0Ixsq\0~\0(w\0\0\0?@\0\0\0\0\0q\0~\0Ixq\0~\0qq\0~\0rsq\0~\0Nsq\0~\0B\0����\0q\0~\0yq\0~\0�q\0~\0Upsq\0~\0?@\0\0\0\0\0w\0\0\0\0\0\0\0xsq\0~\0(w\0\0\0?@\0\0\0\0\0\0xq\0~\0yt\0资源管理q\0~\0Ysq\0~\0cq\0~\0_pt\0资源管理sq\0~\0B\0����\0q\0~\0_q\0~\0�q\0~\0hpsq\0~\0?@\0\0\0\0\0w\0\0\0\0\0\0q\0~\0Iq\0~\0Ixsq\0~\0(w\0\0\0?@\0\0\0\0\0q\0~\0Ixt\0/security/web/resource/homesq\0~\0B\0����\0q\0~\0yq\0~\0�q\0~\0mpsq\0~\0?@\0\0\0\0\0w\0\0\0\0\0\0q\0~\0Iq\0~\0Ixsq\0~\0(w\0\0\0?@\0\0\0\0\0q\0~\0Ixq\0~\0qq\0~\0�xsq\0~\0(w\0\0\0?@\0\0\0\0\0q\0~\0Rq\0~\0]q\0~\0�q\0~\0rxq\0~\0[t\0系统管理psq\0~\0cq\0~\0Tpt\0系统管理sq\0~\0B\0����\0q\0~\0Tq\0~\0�q\0~\0hpsq\0~\0?@\0\0\0\0\0w\0\0\0\0\0\0q\0~\0Iq\0~\0Ixsq\0~\0(w\0\0\0?@\0\0\0\0\0q\0~\0Ixt\0\0sq\0~\0B\0����\0q\0~\0[q\0~\0Yq\0~\0mpsq\0~\0?@\0\0\0\0\0w\0\0\0\0\0\0q\0~\0Iq\0~\0Ixsq\0~\0(w\0\0\0?@\0\0\0\0\0q\0~\0Ixq\0~\0qsq\0~\0cq\0~\0tpt\0用户管理sq\0~\0B\0����\0q\0~\0tq\0~\0�q\0~\0hpsq\0~\0?@\0\0\0\0\0w\0\0\0\0\0\0q\0~\0Iq\0~\0Ixsq\0~\0(w\0\0\0?@\0\0\0\0\0q\0~\0Ixt\0/security/web/user/homesq\0~\0B\0����\0q\0~\0Tq\0~\0Rq\0~\0mpsq\0~\0?@\0\0\0\0\0w\0\0\0\0\0\0q\0~\0Iq\0~\0Ixsq\0~\0(w\0\0\0?@\0\0\0\0\0q\0~\0Ixq\0~\0qq\0~\0Rq\0~\0]q\0~\0]q\0~\0rq\0~\0rq\0~\0Yq\0~\0Yq\0~\0�q\0~\0�xsq\0~\0(w\0\0\0?@\0\0\0\0\0q\0~\0Rq\0~\0]q\0~\0�q\0~\0rq\0~\0Yxt\0	管理员sq\0~\0B\0����\0q\0~\0Jq\0~\0It\07com.faceye.component.security.web.entity.Role.resourcespsq\0~\0?@\0\0\0\0\0w\0\0\0\0\0\0q\0~\0xq\0~\0xq\0~\0�q\0~\0�q\0~\0dq\0~\0dsq\0~\0csq\0~\0>\0\0\0\0\0\0\0pt\0oauthsq\0~\0B\0����\0q\0~\0�q\0~\0�q\0~\0hpsq\0~\0?@\0\0\0\0\0w\0\0\0\0\0\0q\0~\0Iq\0~\0Ixsq\0~\0(w\0\0\0?@\0\0\0\0\0q\0~\0Ixt\0/oauth/q\0~\0�q\0~\0�q\0~\0�sq\0~\0csq\0~\0>\0\0\0\0\0\0\0\rpt\0安全管理sq\0~\0B\0����\0q\0~\0�q\0~\0�q\0~\0hpsq\0~\0?@\0\0\0\0\0w\0\0\0\0\0\0q\0~\0Iq\0~\0Ixsq\0~\0(w\0\0\0?@\0\0\0\0\0q\0~\0Ixt\0/security/web/q\0~\0�q\0~\0�q\0~\0�xsq\0~\0(w\0\0\0?@\0\0\0\0\0q\0~\0xq\0~\0�q\0~\0dq\0~\0�q\0~\0�q\0~\0�q\0~\0�xsq\0~\0B\0����\0\0q\0~\0Jq\0~\0It\03com.faceye.component.security.web.entity.Role.userspppq\0~\0Isq\0~\0Hsq\0~\0>\0\0\0\0\0\0\0sq\0~\0B\0����\0q\0~\0�q\0~\0�q\0~\0Lpsq\0~\0?@\0\0\0\0\0w\0\0\0\0\0\0\0xsq\0~\0(w\0\0\0?@\0\0\0\0\0\0xt\0用户sq\0~\0B\0����\0q\0~\0�q\0~\0�q\0~\0�psq\0~\0?@\0\0\0\0\0w\0\0\0\0\0\0\0xsq\0~\0(w\0\0\0?@\0\0\0\0\0\0xsq\0~\0B\0����\0\0q\0~\0�q\0~\0�q\0~\0�pppq\0~\0�xsq\0~\0(w\0\0\0?@\0\0\0\0\0q\0~\0Iq\0~\0�xt\0admin'),('cp5lpD','��\0sr\0Aorg.springframework.security.oauth2.provider.OAuth2Authentication�@bR\0L\0\rstoredRequestt\0<Lorg/springframework/security/oauth2/provider/OAuth2Request;L\0userAuthenticationt\02Lorg/springframework/security/core/Authentication;xr\0Gorg.springframework.security.authentication.AbstractAuthenticationTokenӪ(~nGd\0Z\0\rauthenticatedL\0authoritiest\0Ljava/util/Collection;L\0detailst\0Ljava/lang/Object;xp\0sr\0&java.util.Collections$UnmodifiableList�%1��\0L\0listt\0Ljava/util/List;xr\0,java.util.Collections$UnmodifiableCollectionB\0��^�\0L\0cq\0~\0xpsr\0java.util.ArrayListx����a�\0I\0sizexp\0\0\0w\0\0\0sr\0Borg.springframework.security.core.authority.SimpleGrantedAuthority\0\0\0\0\0\0�\0L\0rolet\0Ljava/lang/String;xpt\0ROLE_2sq\0~\0\rt\0ROLE_1xq\0~\0psr\0:org.springframework.security.oauth2.provider.OAuth2Request\0\0\0\0\0\0\0\0Z\0approvedL\0authoritiesq\0~\0L\0\nextensionst\0Ljava/util/Map;L\0redirectUriq\0~\0L\0refresht\0;Lorg/springframework/security/oauth2/provider/TokenRequest;L\0resourceIdst\0Ljava/util/Set;L\0\rresponseTypesq\0~\0xr\08org.springframework.security.oauth2.provider.BaseRequest6(z>�qi�\0L\0clientIdq\0~\0L\0requestParametersq\0~\0L\0scopeq\0~\0xpt\0clientsr\0%java.util.Collections$UnmodifiableMap��t�B\0L\0mq\0~\0xpsq\0~\0\Zsr\0java.util.LinkedHashMap4�N\\l��\0Z\0accessOrderxr\0java.util.HashMap���`�\0F\0\nloadFactorI\0	thresholdxp?@\0\0\0\0\0w\0\0\0\0\0\0t\0\rresponse_typet\0codet\0	client_idq\0~\0t\0redirect_urit\0http://www.baidu.comx\0sr\0%java.util.Collections$UnmodifiableSet��я��U\0\0xq\0~\0	sr\0java.util.LinkedHashSet�l�Z��*\0\0xr\0java.util.HashSet�D�����4\0\0xpw\0\0\0?@\0\0\0\0\0t\0readt\0writet\0trustxsq\0~\0(w\0\0\0?@\0\0\0\0\0\0xsq\0~\0?@\0\0\0\0\0\0w\0\0\0\0\0\0\0xq\0~\0$psq\0~\0(w\0\0\0?@\0\0\0\0\0\0xsq\0~\0(w\0\0\0?@\0\0\0\0\0q\0~\0!xsr\0Oorg.springframework.security.authentication.UsernamePasswordAuthenticationToken\0\0\0\0\0\0�\0L\0credentialsq\0~\0L\0	principalq\0~\0xq\0~\0sq\0~\0sq\0~\0\0\0\0w\0\0\0q\0~\0q\0~\0xq\0~\04sr\0Horg.springframework.security.web.authentication.WebAuthenticationDetails\0\0\0\0\0\0�\0L\0\rremoteAddressq\0~\0L\0	sessionIdq\0~\0xpt\00:0:0:0:0:0:0:1t\0nmb0x7v9f81bc17plnsach2ypsr\0-com.faceye.component.security.web.entity.User{���T{\0Z\0accountExpiredZ\0\raccountLockedZ\0credentialsExpiredZ\0enabledL\0emailq\0~\0L\0encryptPasswordq\0~\0L\0idt\0Ljava/lang/Long;L\0passwordq\0~\0[\0roleIdst\0[Ljava/lang/Long;L\0rolesq\0~\0L\0usernameq\0~\0xp\0\0\0t\0haipenge@gmail.compsr\0java.lang.Long;��̏#�\0J\0valuexr\0java.lang.Number������\0\0xp\0\0\0\0\0\0\0�t\0 ceb4f32325eda6142bd65215f4c0f371psr\0/org.hibernate.collection.internal.PersistentSet�������\0L\0setq\0~\0xr\0>org.hibernate.collection.internal.AbstractPersistentCollection�J~w��\0	Z\0allowLoadOutsideTransactionI\0\ncachedSizeZ\0dirtyZ\0initializedL\0keyt\0Ljava/io/Serializable;L\0ownerq\0~\0L\0roleq\0~\0L\0sessionFactoryUuidq\0~\0L\0storedSnapshotq\0~\0Dxp\0����\0q\0~\0@q\0~\0<t\03com.faceye.component.security.web.entity.User.rolespsq\0~\0?@\0\0\0\0\0w\0\0\0\0\0\0sr\0-com.faceye.component.security.web.entity.Role{���T{\0L\0idq\0~\0:L\0menusq\0~\0L\0nameq\0~\0L\0	resourcesq\0~\0L\0usersq\0~\0xpsq\0~\0>\0\0\0\0\0\0\0sq\0~\0B\0����\0q\0~\0Jq\0~\0It\03com.faceye.component.security.web.entity.Role.menuspsq\0~\0?@\0\0\0\0\0w\0\0\0\0\0\0\0xsq\0~\0(w\0\0\0?@\0\0\0\0\0\0xt\0用户sq\0~\0B\0����\0q\0~\0Jq\0~\0It\07com.faceye.component.security.web.entity.Role.resourcespsq\0~\0?@\0\0\0\0\0w\0\0\0\0\0\0\0xsq\0~\0(w\0\0\0?@\0\0\0\0\0\0xsq\0~\0B\0����\0\0q\0~\0Jq\0~\0It\03com.faceye.component.security.web.entity.Role.userspppq\0~\0Isq\0~\0Hsq\0~\0>\0\0\0\0\0\0\0sq\0~\0B\0����\0q\0~\0Wq\0~\0Vq\0~\0Lpsq\0~\0?@\0\0\0\0\0w\0\0\0\0\0\0sr\0-com.faceye.component.security.web.entity.Menu{���T{\0L\0childrenq\0~\0L\0idq\0~\0:L\0nameq\0~\0L\0parentt\0/Lcom/faceye/component/security/web/entity/Menu;L\0resourcet\03Lcom/faceye/component/security/web/entity/Resource;L\0rolesq\0~\0L\0typet\0Ljava/lang/Integer;xpsq\0~\0B\0����\0sq\0~\0>\0\0\0\0\0\0\0	q\0~\0^t\06com.faceye.component.security.web.entity.Menu.childrenpsq\0~\0?@\0\0\0\0\0w\0\0\0\0\0\0\0xsq\0~\0(w\0\0\0?@\0\0\0\0\0\0xq\0~\0`t\0角色管理sq\0~\0Zsq\0~\0B\0����\0sq\0~\0>\0\0\0\0\0\0\0q\0~\0eq\0~\0apsq\0~\0?@\0\0\0\0\0w\0\0\0\0\0\0q\0~\0^q\0~\0^sq\0~\0Zsq\0~\0B\0����\0sq\0~\0>\0\0\0\0\0\0\0\nq\0~\0iq\0~\0apsq\0~\0?@\0\0\0\0\0w\0\0\0\0\0\0\0xsq\0~\0(w\0\0\0?@\0\0\0\0\0\0xq\0~\0kt\0资源管理q\0~\0esr\01com.faceye.component.security.web.entity.Resource{���T{\0L\0idq\0~\0:L\0menuq\0~\0[L\0nameq\0~\0L\0rolesq\0~\0L\0urlq\0~\0xpsq\0~\0>\0\0\0\0\0\0\0pt\0资源管理sq\0~\0B\0����\0q\0~\0qq\0~\0pt\07com.faceye.component.security.web.entity.Resource.rolespsq\0~\0?@\0\0\0\0\0w\0\0\0\0\0\0q\0~\0Vq\0~\0Vxsq\0~\0(w\0\0\0?@\0\0\0\0\0q\0~\0Vxt\0/security/web/resource/homesq\0~\0B\0����\0q\0~\0kq\0~\0it\03com.faceye.component.security.web.entity.Menu.rolespsq\0~\0?@\0\0\0\0\0w\0\0\0\0\0\0q\0~\0Vq\0~\0Vxsq\0~\0(w\0\0\0?@\0\0\0\0\0q\0~\0Vxsr\0java.lang.Integer⠤���8\0I\0valuexq\0~\0?\0\0\0q\0~\0isq\0~\0Zsq\0~\0B\0����\0q\0~\0qq\0~\0~q\0~\0apsq\0~\0?@\0\0\0\0\0w\0\0\0\0\0\0\0xsq\0~\0(w\0\0\0?@\0\0\0\0\0\0xq\0~\0qt\0菜单管理q\0~\0esq\0~\0osq\0~\0>\0\0\0\0\0\0\0pt\0菜单管理sq\0~\0B\0����\0q\0~\0�q\0~\0�q\0~\0tpsq\0~\0?@\0\0\0\0\0w\0\0\0\0\0\0q\0~\0Vq\0~\0Vxsq\0~\0(w\0\0\0?@\0\0\0\0\0q\0~\0Vxt\0/security/web/menu/homesq\0~\0B\0����\0q\0~\0qq\0~\0~q\0~\0ypsq\0~\0?@\0\0\0\0\0w\0\0\0\0\0\0q\0~\0Vq\0~\0Vxsq\0~\0(w\0\0\0?@\0\0\0\0\0q\0~\0Vxq\0~\0}q\0~\0~sq\0~\0Zsq\0~\0B\0����\0sq\0~\0>\0\0\0\0\0\0\0q\0~\0�q\0~\0apsq\0~\0?@\0\0\0\0\0w\0\0\0\0\0\0\0xsq\0~\0(w\0\0\0?@\0\0\0\0\0\0xq\0~\0�t\0用户管理q\0~\0esq\0~\0oq\0~\0`pt\0用户管理sq\0~\0B\0����\0q\0~\0`q\0~\0�q\0~\0tpsq\0~\0?@\0\0\0\0\0w\0\0\0\0\0\0q\0~\0Vq\0~\0Vxsq\0~\0(w\0\0\0?@\0\0\0\0\0q\0~\0Vxt\0/security/web/user/homesq\0~\0B\0����\0q\0~\0�q\0~\0�q\0~\0ypsq\0~\0?@\0\0\0\0\0w\0\0\0\0\0\0q\0~\0Vq\0~\0Vxsq\0~\0(w\0\0\0?@\0\0\0\0\0q\0~\0Vxq\0~\0}q\0~\0�xsq\0~\0(w\0\0\0?@\0\0\0\0\0q\0~\0^q\0~\0~q\0~\0iq\0~\0�xq\0~\0gt\0系统管理psq\0~\0oq\0~\0�pt\0系统管理sq\0~\0B\0����\0q\0~\0�q\0~\0�q\0~\0tpsq\0~\0?@\0\0\0\0\0w\0\0\0\0\0\0q\0~\0Vq\0~\0Vxsq\0~\0(w\0\0\0?@\0\0\0\0\0q\0~\0Vxt\0\0sq\0~\0B\0����\0q\0~\0gq\0~\0eq\0~\0ypsq\0~\0?@\0\0\0\0\0w\0\0\0\0\0\0q\0~\0Vq\0~\0Vxsq\0~\0(w\0\0\0?@\0\0\0\0\0q\0~\0Vxq\0~\0}sq\0~\0oq\0~\0kpt\0角色管理sq\0~\0B\0����\0q\0~\0kq\0~\0�q\0~\0tpsq\0~\0?@\0\0\0\0\0w\0\0\0\0\0\0q\0~\0Vq\0~\0Vxsq\0~\0(w\0\0\0?@\0\0\0\0\0q\0~\0Vxt\0/security/web/role/homesq\0~\0B\0����\0q\0~\0`q\0~\0^q\0~\0ypsq\0~\0?@\0\0\0\0\0w\0\0\0\0\0\0q\0~\0Vq\0~\0Vxsq\0~\0(w\0\0\0?@\0\0\0\0\0q\0~\0Vxq\0~\0}q\0~\0^q\0~\0eq\0~\0eq\0~\0iq\0~\0iq\0~\0~q\0~\0~q\0~\0�q\0~\0�xsq\0~\0(w\0\0\0?@\0\0\0\0\0q\0~\0^q\0~\0eq\0~\0~q\0~\0iq\0~\0�xt\0	管理员sq\0~\0B\0����\0q\0~\0Wq\0~\0Vq\0~\0Qpsq\0~\0?@\0\0\0\0\0w\0\0\0\0\0\0q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0pq\0~\0pq\0~\0�q\0~\0�sq\0~\0osq\0~\0>\0\0\0\0\0\0\0pt\0oauthsq\0~\0B\0����\0q\0~\0�q\0~\0�q\0~\0tpsq\0~\0?@\0\0\0\0\0w\0\0\0\0\0\0q\0~\0Vq\0~\0Vxsq\0~\0(w\0\0\0?@\0\0\0\0\0q\0~\0Vxt\0/oauth/q\0~\0�q\0~\0�q\0~\0�sq\0~\0osq\0~\0>\0\0\0\0\0\0\0\rpt\0安全管理sq\0~\0B\0����\0q\0~\0�q\0~\0�q\0~\0tpsq\0~\0?@\0\0\0\0\0w\0\0\0\0\0\0q\0~\0Vq\0~\0Vxsq\0~\0(w\0\0\0?@\0\0\0\0\0q\0~\0Vxt\0/security/web/q\0~\0�xsq\0~\0(w\0\0\0?@\0\0\0\0\0q\0~\0�q\0~\0�q\0~\0pq\0~\0�q\0~\0�q\0~\0�q\0~\0�xsq\0~\0B\0����\0\0q\0~\0Wq\0~\0Vq\0~\0Upppq\0~\0Vxsq\0~\0(w\0\0\0?@\0\0\0\0\0q\0~\0Iq\0~\0Vxt\0admin');
/*!40000 ALTER TABLE `oauth_code` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_refresh_token`
--

DROP TABLE IF EXISTS `oauth_refresh_token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oauth_refresh_token` (
  `token_id` varchar(256) DEFAULT NULL,
  `token` blob,
  `authentication` blob
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_refresh_token`
--

LOCK TABLES `oauth_refresh_token` WRITE;
/*!40000 ALTER TABLE `oauth_refresh_token` DISABLE KEYS */;
INSERT  IGNORE INTO `oauth_refresh_token` (`token_id`, `token`, `authentication`) VALUES ('bcd14430530ee483fa1bca3eac594d9f','��\0sr\0Lorg.springframework.security.oauth2.common.DefaultExpiringOAuth2RefreshToken/�Gc��ɷ\0L\0\nexpirationt\0Ljava/util/Date;xr\0Dorg.springframework.security.oauth2.common.DefaultOAuth2RefreshTokens�\ncT�^\0L\0valuet\0Ljava/lang/String;xpt\0$18d0166e-6d97-4bcd-b89e-29c9184232easr\0java.util.Datehj�KYt\0\0xpw\0\0X���x','��\0sr\0Aorg.springframework.security.oauth2.provider.OAuth2Authentication�@bR\0L\0\rstoredRequestt\0<Lorg/springframework/security/oauth2/provider/OAuth2Request;L\0userAuthenticationt\02Lorg/springframework/security/core/Authentication;xr\0Gorg.springframework.security.authentication.AbstractAuthenticationTokenӪ(~nGd\0Z\0\rauthenticatedL\0authoritiest\0Ljava/util/Collection;L\0detailst\0Ljava/lang/Object;xp\0sr\0&java.util.Collections$UnmodifiableList�%1��\0L\0listt\0Ljava/util/List;xr\0,java.util.Collections$UnmodifiableCollectionB\0��^�\0L\0cq\0~\0xpsr\0java.util.ArrayListx����a�\0I\0sizexp\0\0\0w\0\0\0sr\0Borg.springframework.security.core.authority.SimpleGrantedAuthority\0\0\0\0\0\0�\0L\0rolet\0Ljava/lang/String;xpt\0ROLE_2sq\0~\0\rt\0ROLE_1xq\0~\0psr\0:org.springframework.security.oauth2.provider.OAuth2Request\0\0\0\0\0\0\0\0Z\0approvedL\0authoritiesq\0~\0L\0\nextensionst\0Ljava/util/Map;L\0redirectUriq\0~\0L\0refresht\0;Lorg/springframework/security/oauth2/provider/TokenRequest;L\0resourceIdst\0Ljava/util/Set;L\0\rresponseTypesq\0~\0xr\08org.springframework.security.oauth2.provider.BaseRequest6(z>�qi�\0L\0clientIdq\0~\0L\0requestParametersq\0~\0L\0scopeq\0~\0xpt\0clientsr\0%java.util.Collections$UnmodifiableMap��t�B\0L\0mq\0~\0xpsr\0java.util.HashMap���`�\0F\0\nloadFactorI\0	thresholdxp?@\0\0\0\0\0w\0\0\0\0\0\0t\0\rresponse_typet\0codet\0redirect_urit\0http://www.baidu.comt\0codet\0Vr6ENZt\0\rclient_secrett\0secrett\0\ngrant_typet\0authorization_codet\0	client_idt\0clientxsr\0%java.util.Collections$UnmodifiableSet��я��U\0\0xq\0~\0	sr\0java.util.LinkedHashSet�l�Z��*\0\0xr\0java.util.HashSet�D�����4\0\0xpw\0\0\0?@\0\0\0\0\0t\0readt\0writet\0trustxsq\0~\0-w\0\0\0?@\0\0\0\0\0\0xsq\0~\0?@\0\0\0\0\0\0w\0\0\0\0\0\0\0xt\0http://www.baidu.compsq\0~\0-w\0\0\0?@\0\0\0\0\0\0xsq\0~\0-w\0\0\0?@\0\0\0\0\0q\0~\0xsr\0Oorg.springframework.security.authentication.UsernamePasswordAuthenticationToken\0\0\0\0\0\0�\0L\0credentialsq\0~\0L\0	principalq\0~\0xq\0~\0sq\0~\0sq\0~\0\0\0\0w\0\0\0q\0~\0q\0~\0xq\0~\0:sr\0Horg.springframework.security.web.authentication.WebAuthenticationDetails\0\0\0\0\0\0�\0L\0\rremoteAddressq\0~\0L\0	sessionIdq\0~\0xpt\00:0:0:0:0:0:0:1t\0nmb0x7v9f81bc17plnsach2ypsr\0-com.faceye.component.security.web.entity.User{���T{\0Z\0accountExpiredZ\0\raccountLockedZ\0credentialsExpiredZ\0enabledL\0emailq\0~\0L\0encryptPasswordq\0~\0L\0idt\0Ljava/lang/Long;L\0passwordq\0~\0[\0roleIdst\0[Ljava/lang/Long;L\0rolesq\0~\0L\0usernameq\0~\0xp\0\0\0t\0haipenge@gmail.compsr\0java.lang.Long;��̏#�\0J\0valuexr\0java.lang.Number������\0\0xp\0\0\0\0\0\0\0�t\0 ceb4f32325eda6142bd65215f4c0f371psr\0/org.hibernate.collection.internal.PersistentSet�������\0L\0setq\0~\0xr\0>org.hibernate.collection.internal.AbstractPersistentCollection�J~w��\0	Z\0allowLoadOutsideTransactionI\0\ncachedSizeZ\0dirtyZ\0initializedL\0keyt\0Ljava/io/Serializable;L\0ownerq\0~\0L\0roleq\0~\0L\0sessionFactoryUuidq\0~\0L\0storedSnapshotq\0~\0Jxp\0����\0q\0~\0Fq\0~\0Bt\03com.faceye.component.security.web.entity.User.rolespsq\0~\0?@\0\0\0\0\0w\0\0\0\0\0\0sr\0-com.faceye.component.security.web.entity.Role{���T{\0L\0idq\0~\0@L\0menusq\0~\0L\0nameq\0~\0L\0	resourcesq\0~\0L\0usersq\0~\0xpsq\0~\0D\0\0\0\0\0\0\0sq\0~\0H\0����\0q\0~\0Pq\0~\0Ot\03com.faceye.component.security.web.entity.Role.menuspsq\0~\0?@\0\0\0\0\0w\0\0\0\0\0\0sr\0-com.faceye.component.security.web.entity.Menu{���T{\0L\0childrenq\0~\0L\0idq\0~\0@L\0nameq\0~\0L\0parentt\0/Lcom/faceye/component/security/web/entity/Menu;L\0resourcet\03Lcom/faceye/component/security/web/entity/Resource;L\0rolesq\0~\0L\0typet\0Ljava/lang/Integer;xpsq\0~\0H\0����\0sq\0~\0D\0\0\0\0\0\0\0q\0~\0Xt\06com.faceye.component.security.web.entity.Menu.childrenpsq\0~\0?@\0\0\0\0\0\0w\0\0\0\0\0\0\0xsq\0~\0-w\0\0\0?@\0\0\0\0\0\0xq\0~\0Zt\0用户管理sq\0~\0Tsq\0~\0H\0����\0sq\0~\0D\0\0\0\0\0\0\0q\0~\0_q\0~\0[psq\0~\0?@\0\0\0\0\0w\0\0\0\0\0\0q\0~\0Xq\0~\0Xsq\0~\0Tsq\0~\0H\0����\0sq\0~\0D\0\0\0\0\0\0\0q\0~\0cq\0~\0[psq\0~\0?@\0\0\0\0\0\0w\0\0\0\0\0\0\0xsq\0~\0-w\0\0\0?@\0\0\0\0\0\0xq\0~\0et\0菜单管理q\0~\0_sr\01com.faceye.component.security.web.entity.Resource{���T{\0L\0idq\0~\0@L\0menuq\0~\0UL\0nameq\0~\0L\0rolesq\0~\0L\0urlq\0~\0xpsq\0~\0D\0\0\0\0\0\0\0pt\0菜单管理sq\0~\0H\0����\0q\0~\0kq\0~\0jt\07com.faceye.component.security.web.entity.Resource.rolespsq\0~\0?@\0\0\0\0\0w\0\0\0\0\0\0q\0~\0Oq\0~\0Oxsq\0~\0-w\0\0\0?@\0\0\0\0\0q\0~\0Oxt\0/security/web/menu/homesq\0~\0H\0����\0q\0~\0eq\0~\0ct\03com.faceye.component.security.web.entity.Menu.rolespsq\0~\0?@\0\0\0\0\0w\0\0\0\0\0\0q\0~\0Oq\0~\0Oxsq\0~\0-w\0\0\0?@\0\0\0\0\0q\0~\0Oxsr\0java.lang.Integer⠤���8\0I\0valuexq\0~\0E\0\0\0q\0~\0csq\0~\0Tsq\0~\0H\0����\0sq\0~\0D\0\0\0\0\0\0\0\nq\0~\0xq\0~\0[psq\0~\0?@\0\0\0\0\0\0w\0\0\0\0\0\0\0xsq\0~\0-w\0\0\0?@\0\0\0\0\0\0xq\0~\0zt\0资源管理q\0~\0_sq\0~\0iq\0~\0ept\0资源管理sq\0~\0H\0����\0q\0~\0eq\0~\0~q\0~\0npsq\0~\0?@\0\0\0\0\0w\0\0\0\0\0\0q\0~\0Oq\0~\0Oxsq\0~\0-w\0\0\0?@\0\0\0\0\0q\0~\0Oxt\0/security/web/resource/homesq\0~\0H\0����\0q\0~\0zq\0~\0xq\0~\0spsq\0~\0?@\0\0\0\0\0w\0\0\0\0\0\0q\0~\0Oq\0~\0Oxsq\0~\0-w\0\0\0?@\0\0\0\0\0q\0~\0Oxq\0~\0wq\0~\0xsq\0~\0Tsq\0~\0H\0����\0sq\0~\0D\0\0\0\0\0\0\0	q\0~\0�q\0~\0[psq\0~\0?@\0\0\0\0\0\0w\0\0\0\0\0\0\0xsq\0~\0-w\0\0\0?@\0\0\0\0\0\0xq\0~\0�t\0角色管理q\0~\0_sq\0~\0iq\0~\0zpt\0角色管理sq\0~\0H\0����\0q\0~\0zq\0~\0�q\0~\0npsq\0~\0?@\0\0\0\0\0w\0\0\0\0\0\0q\0~\0Oq\0~\0Oxsq\0~\0-w\0\0\0?@\0\0\0\0\0q\0~\0Oxt\0/security/web/role/homesq\0~\0H\0����\0q\0~\0�q\0~\0�q\0~\0spsq\0~\0?@\0\0\0\0\0w\0\0\0\0\0\0q\0~\0Oq\0~\0Oxsq\0~\0-w\0\0\0?@\0\0\0\0\0q\0~\0Oxq\0~\0wq\0~\0�xsq\0~\0-w\0\0\0?@\0\0\0\0\0q\0~\0Xq\0~\0cq\0~\0xq\0~\0�xq\0~\0at\0系统管理psq\0~\0iq\0~\0Zpt\0系统管理sq\0~\0H\0����\0q\0~\0Zq\0~\0�q\0~\0npsq\0~\0?@\0\0\0\0\0w\0\0\0\0\0\0q\0~\0Oq\0~\0Oxsq\0~\0-w\0\0\0?@\0\0\0\0\0q\0~\0Oxt\0\0sq\0~\0H\0����\0q\0~\0aq\0~\0_q\0~\0spsq\0~\0?@\0\0\0\0\0w\0\0\0\0\0\0q\0~\0Oq\0~\0Oxsq\0~\0-w\0\0\0?@\0\0\0\0\0q\0~\0Oxq\0~\0wsq\0~\0iq\0~\0�pt\0用户管理sq\0~\0H\0����\0q\0~\0�q\0~\0�q\0~\0npsq\0~\0?@\0\0\0\0\0w\0\0\0\0\0\0q\0~\0Oq\0~\0Oxsq\0~\0-w\0\0\0?@\0\0\0\0\0q\0~\0Oxt\0/security/web/user/homesq\0~\0H\0����\0q\0~\0Zq\0~\0Xq\0~\0spsq\0~\0?@\0\0\0\0\0w\0\0\0\0\0\0q\0~\0Oq\0~\0Oxsq\0~\0-w\0\0\0?@\0\0\0\0\0q\0~\0Oxq\0~\0wq\0~\0Xq\0~\0_q\0~\0_q\0~\0cq\0~\0cq\0~\0xq\0~\0xq\0~\0�q\0~\0�xsq\0~\0-w\0\0\0?@\0\0\0\0\0q\0~\0Xq\0~\0_q\0~\0cq\0~\0xq\0~\0�xt\0	管理员sq\0~\0H\0����\0q\0~\0Pq\0~\0Ot\07com.faceye.component.security.web.entity.Role.resourcespsq\0~\0?@\0\0\0\0\0w\0\0\0\0\0\0q\0~\0�q\0~\0�q\0~\0jq\0~\0jsq\0~\0isq\0~\0D\0\0\0\0\0\0\0pt\0oauthsq\0~\0H\0����\0q\0~\0�q\0~\0�q\0~\0npsq\0~\0?@\0\0\0\0\0w\0\0\0\0\0\0q\0~\0Oq\0~\0Oxsq\0~\0-w\0\0\0?@\0\0\0\0\0q\0~\0Oxt\0/oauth/q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0~q\0~\0~sq\0~\0isq\0~\0D\0\0\0\0\0\0\0\rpt\0安全管理sq\0~\0H\0����\0q\0~\0�q\0~\0�q\0~\0npsq\0~\0?@\0\0\0\0\0w\0\0\0\0\0\0q\0~\0Oq\0~\0Oxsq\0~\0-w\0\0\0?@\0\0\0\0\0q\0~\0Oxt\0/security/web/q\0~\0�xsq\0~\0-w\0\0\0?@\0\0\0\0\0q\0~\0�q\0~\0jq\0~\0�q\0~\0�q\0~\0�q\0~\0~q\0~\0�xsq\0~\0H\0����\0\0q\0~\0Pq\0~\0Ot\03com.faceye.component.security.web.entity.Role.userspppq\0~\0Osq\0~\0Nsq\0~\0D\0\0\0\0\0\0\0sq\0~\0H\0����\0q\0~\0�q\0~\0�q\0~\0Rpsq\0~\0?@\0\0\0\0\0\0w\0\0\0\0\0\0\0xsq\0~\0-w\0\0\0?@\0\0\0\0\0\0xt\0用户sq\0~\0H\0����\0q\0~\0�q\0~\0�q\0~\0�psq\0~\0?@\0\0\0\0\0\0w\0\0\0\0\0\0\0xsq\0~\0-w\0\0\0?@\0\0\0\0\0\0xsq\0~\0H\0����\0\0q\0~\0�q\0~\0�q\0~\0�pppq\0~\0�xsq\0~\0-w\0\0\0?@\0\0\0\0\0q\0~\0Oq\0~\0�xt\0admin'),('e7c2baeebf9df37321e79db62bc4106d','��\0sr\0Lorg.springframework.security.oauth2.common.DefaultExpiringOAuth2RefreshToken/�Gc��ɷ\0L\0\nexpirationt\0Ljava/util/Date;xr\0Dorg.springframework.security.oauth2.common.DefaultOAuth2RefreshTokens�\ncT�^\0L\0valuet\0Ljava/lang/String;xpt\0$874c8651-b81d-488d-96f4-0fcd6ce07990sr\0java.util.Datehj�KYt\0\0xpw\0\0X����x','��\0sr\0Aorg.springframework.security.oauth2.provider.OAuth2Authentication�@bR\0L\0\rstoredRequestt\0<Lorg/springframework/security/oauth2/provider/OAuth2Request;L\0userAuthenticationt\02Lorg/springframework/security/core/Authentication;xr\0Gorg.springframework.security.authentication.AbstractAuthenticationTokenӪ(~nGd\0Z\0\rauthenticatedL\0authoritiest\0Ljava/util/Collection;L\0detailst\0Ljava/lang/Object;xp\0sr\0&java.util.Collections$UnmodifiableList�%1��\0L\0listt\0Ljava/util/List;xr\0,java.util.Collections$UnmodifiableCollectionB\0��^�\0L\0cq\0~\0xpsr\0java.util.ArrayListx����a�\0I\0sizexp\0\0\0w\0\0\0sr\0Borg.springframework.security.core.authority.SimpleGrantedAuthority\0\0\0\0\0\0�\0L\0rolet\0Ljava/lang/String;xpt\0ROLE_1sq\0~\0\rt\0ROLE_2xq\0~\0psr\0:org.springframework.security.oauth2.provider.OAuth2Request\0\0\0\0\0\0\0\0Z\0approvedL\0authoritiesq\0~\0L\0\nextensionst\0Ljava/util/Map;L\0redirectUriq\0~\0L\0refresht\0;Lorg/springframework/security/oauth2/provider/TokenRequest;L\0resourceIdst\0Ljava/util/Set;L\0\rresponseTypesq\0~\0xr\08org.springframework.security.oauth2.provider.BaseRequest6(z>�qi�\0L\0clientIdq\0~\0L\0requestParametersq\0~\0L\0scopeq\0~\0xpt\0\nweb_clientsr\0%java.util.Collections$UnmodifiableMap��t�B\0L\0mq\0~\0xpsr\0java.util.HashMap���`�\0F\0\nloadFactorI\0	thresholdxp?@\0\0\0\0\0w\0\0\0\0\0\0t\0\rresponse_typet\0codet\0redirect_urit\0http://www.baidu.comt\0codet\03sJaPwt\0\rclient_secrett\0secrett\0\ngrant_typet\0authorization_codet\0	client_idt\0\nweb_clientxsr\0%java.util.Collections$UnmodifiableSet��я��U\0\0xq\0~\0	sr\0java.util.LinkedHashSet�l�Z��*\0\0xr\0java.util.HashSet�D�����4\0\0xpw\0\0\0?@\0\0\0\0\0t\0readt\0writet\0trustxsq\0~\0-w\0\0\0?@\0\0\0\0\0\0xsq\0~\0?@\0\0\0\0\0\0w\0\0\0\0\0\0\0xt\0http://www.baidu.compsq\0~\0-w\0\0\0?@\0\0\0\0\0t\0mobile-resourcexsq\0~\0-w\0\0\0?@\0\0\0\0\0q\0~\0xsr\0Oorg.springframework.security.authentication.UsernamePasswordAuthenticationToken\0\0\0\0\0\0�\0L\0credentialsq\0~\0L\0	principalq\0~\0xq\0~\0sq\0~\0sq\0~\0\0\0\0w\0\0\0q\0~\0q\0~\0xq\0~\0;sr\0Horg.springframework.security.web.authentication.WebAuthenticationDetails\0\0\0\0\0\0�\0L\0\rremoteAddressq\0~\0L\0	sessionIdq\0~\0xpt\00:0:0:0:0:0:0:1t\0ycrzl2ue645nsbatp36wnmggpsr\0-com.faceye.component.security.web.entity.User{���T{\0Z\0accountExpiredZ\0\raccountLockedZ\0credentialsExpiredZ\0enabledL\0emailq\0~\0L\0encryptPasswordq\0~\0L\0idt\0Ljava/lang/Long;L\0passwordq\0~\0[\0roleIdst\0[Ljava/lang/Long;L\0rolesq\0~\0L\0usernameq\0~\0xp\0\0\0t\0haipenge@gmail.compsr\0java.lang.Long;��̏#�\0J\0valuexr\0java.lang.Number������\0\0xp\0\0\0\0\0\0\0�t\0 ceb4f32325eda6142bd65215f4c0f371psr\0/org.hibernate.collection.internal.PersistentSet�������\0L\0setq\0~\0xr\0>org.hibernate.collection.internal.AbstractPersistentCollection�J~w��\0	Z\0allowLoadOutsideTransactionI\0\ncachedSizeZ\0dirtyZ\0initializedL\0keyt\0Ljava/io/Serializable;L\0ownerq\0~\0L\0roleq\0~\0L\0sessionFactoryUuidq\0~\0L\0storedSnapshotq\0~\0Kxp\0����\0q\0~\0Gq\0~\0Ct\03com.faceye.component.security.web.entity.User.rolespsq\0~\0?@\0\0\0\0\0w\0\0\0\0\0\0sr\0-com.faceye.component.security.web.entity.Role{���T{\0L\0idq\0~\0AL\0menusq\0~\0L\0nameq\0~\0L\0	resourcesq\0~\0L\0usersq\0~\0xpsq\0~\0E\0\0\0\0\0\0\0sq\0~\0I\0����\0q\0~\0Qq\0~\0Pt\03com.faceye.component.security.web.entity.Role.menuspsq\0~\0?@\0\0\0\0\0\0w\0\0\0\0\0\0\0xsq\0~\0-w\0\0\0?@\0\0\0\0\0\0xt\0用户sq\0~\0I\0����\0q\0~\0Qq\0~\0Pt\07com.faceye.component.security.web.entity.Role.resourcespsq\0~\0?@\0\0\0\0\0\0w\0\0\0\0\0\0\0xsq\0~\0-w\0\0\0?@\0\0\0\0\0\0xsq\0~\0I\0����\0\0q\0~\0Qq\0~\0Pt\03com.faceye.component.security.web.entity.Role.userspppq\0~\0Psq\0~\0Osq\0~\0E\0\0\0\0\0\0\0sq\0~\0I\0����\0q\0~\0^q\0~\0]q\0~\0Spsq\0~\0?@\0\0\0\0\0w\0\0\0\0\0\0sr\0-com.faceye.component.security.web.entity.Menu{���T{\0L\0childrenq\0~\0L\0idq\0~\0AL\0nameq\0~\0L\0parentt\0/Lcom/faceye/component/security/web/entity/Menu;L\0resourcet\03Lcom/faceye/component/security/web/entity/Resource;L\0rolesq\0~\0L\0typet\0Ljava/lang/Integer;xpsq\0~\0I\0����\0sq\0~\0E\0\0\0\0\0\0\0q\0~\0et\06com.faceye.component.security.web.entity.Menu.childrenpsq\0~\0?@\0\0\0\0\0\0w\0\0\0\0\0\0\0xsq\0~\0-w\0\0\0?@\0\0\0\0\0\0xq\0~\0gt\0菜单管理sq\0~\0asq\0~\0I\0����\0sq\0~\0E\0\0\0\0\0\0\0q\0~\0lq\0~\0hpsq\0~\0?@\0\0\0\0\0w\0\0\0\0\0\0q\0~\0eq\0~\0esq\0~\0asq\0~\0I\0����\0sq\0~\0E\0\0\0\0\0\0\0q\0~\0pq\0~\0hpsq\0~\0?@\0\0\0\0\0\0w\0\0\0\0\0\0\0xsq\0~\0-w\0\0\0?@\0\0\0\0\0\0xq\0~\0rt\0用户管理q\0~\0lsr\01com.faceye.component.security.web.entity.Resource{���T{\0L\0idq\0~\0AL\0menuq\0~\0bL\0nameq\0~\0L\0rolesq\0~\0L\0urlq\0~\0xpsq\0~\0E\0\0\0\0\0\0\0	pt\0用户管理sq\0~\0I\0����\0q\0~\0xq\0~\0wt\07com.faceye.component.security.web.entity.Resource.rolespsq\0~\0?@\0\0\0\0\0w\0\0\0\0\0\0q\0~\0]q\0~\0]xsq\0~\0-w\0\0\0?@\0\0\0\0\0q\0~\0]xt\0/security/web/user/homesq\0~\0I\0����\0q\0~\0rq\0~\0pt\03com.faceye.component.security.web.entity.Menu.rolespsq\0~\0?@\0\0\0\0\0w\0\0\0\0\0\0q\0~\0]q\0~\0]xsq\0~\0-w\0\0\0?@\0\0\0\0\0q\0~\0]xsr\0java.lang.Integer⠤���8\0I\0valuexq\0~\0F\0\0\0q\0~\0psq\0~\0asq\0~\0I\0����\0sq\0~\0E\0\0\0\0\0\0\0\nq\0~\0�q\0~\0hpsq\0~\0?@\0\0\0\0\0\0w\0\0\0\0\0\0\0xsq\0~\0-w\0\0\0?@\0\0\0\0\0\0xq\0~\0�t\0资源管理q\0~\0lsq\0~\0vq\0~\0gpt\0资源管理sq\0~\0I\0����\0q\0~\0gq\0~\0�q\0~\0{psq\0~\0?@\0\0\0\0\0w\0\0\0\0\0\0q\0~\0]q\0~\0]xsq\0~\0-w\0\0\0?@\0\0\0\0\0q\0~\0]xt\0/security/web/resource/homesq\0~\0I\0����\0q\0~\0�q\0~\0�q\0~\0�psq\0~\0?@\0\0\0\0\0w\0\0\0\0\0\0q\0~\0]q\0~\0]xsq\0~\0-w\0\0\0?@\0\0\0\0\0q\0~\0]xq\0~\0�q\0~\0�sq\0~\0asq\0~\0I\0����\0q\0~\0xq\0~\0�q\0~\0hpsq\0~\0?@\0\0\0\0\0\0w\0\0\0\0\0\0\0xsq\0~\0-w\0\0\0?@\0\0\0\0\0\0xq\0~\0xt\0角色管理q\0~\0lsq\0~\0vq\0~\0�pt\0角色管理sq\0~\0I\0����\0q\0~\0�q\0~\0�q\0~\0{psq\0~\0?@\0\0\0\0\0w\0\0\0\0\0\0q\0~\0]q\0~\0]xsq\0~\0-w\0\0\0?@\0\0\0\0\0q\0~\0]xt\0/security/web/role/homesq\0~\0I\0����\0q\0~\0xq\0~\0�q\0~\0�psq\0~\0?@\0\0\0\0\0w\0\0\0\0\0\0q\0~\0]q\0~\0]xsq\0~\0-w\0\0\0?@\0\0\0\0\0q\0~\0]xq\0~\0�q\0~\0�xsq\0~\0-w\0\0\0?@\0\0\0\0\0q\0~\0eq\0~\0�q\0~\0pq\0~\0�xq\0~\0nt\0系统管理psq\0~\0vq\0~\0rpt\0系统管理sq\0~\0I\0����\0q\0~\0rq\0~\0�q\0~\0{psq\0~\0?@\0\0\0\0\0w\0\0\0\0\0\0q\0~\0]q\0~\0]xsq\0~\0-w\0\0\0?@\0\0\0\0\0q\0~\0]xt\0\0sq\0~\0I\0����\0q\0~\0nq\0~\0lq\0~\0�psq\0~\0?@\0\0\0\0\0w\0\0\0\0\0\0q\0~\0]q\0~\0]xsq\0~\0-w\0\0\0?@\0\0\0\0\0q\0~\0]xq\0~\0�sq\0~\0vsq\0~\0E\0\0\0\0\0\0\0pt\0菜单管理sq\0~\0I\0����\0q\0~\0�q\0~\0�q\0~\0{psq\0~\0?@\0\0\0\0\0w\0\0\0\0\0\0q\0~\0]q\0~\0]xsq\0~\0-w\0\0\0?@\0\0\0\0\0q\0~\0]xt\0/security/web/menu/homesq\0~\0I\0����\0q\0~\0gq\0~\0eq\0~\0�psq\0~\0?@\0\0\0\0\0w\0\0\0\0\0\0q\0~\0]q\0~\0]xsq\0~\0-w\0\0\0?@\0\0\0\0\0q\0~\0]xq\0~\0�q\0~\0eq\0~\0pq\0~\0pq\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0lq\0~\0lxsq\0~\0-w\0\0\0?@\0\0\0\0\0q\0~\0eq\0~\0�q\0~\0pq\0~\0�q\0~\0lxt\0	管理员sq\0~\0I\0����\0q\0~\0^q\0~\0]q\0~\0Xpsq\0~\0?@\0\0\0\0\0w\0\0\0\0\0\0sq\0~\0vsq\0~\0E\0\0\0\0\0\0\0pt\0oauthsq\0~\0I\0����\0q\0~\0�q\0~\0�q\0~\0{psq\0~\0?@\0\0\0\0\0w\0\0\0\0\0\0q\0~\0]q\0~\0]xsq\0~\0-w\0\0\0?@\0\0\0\0\0q\0~\0]xt\0/oauth/q\0~\0�q\0~\0wq\0~\0wq\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�sq\0~\0vsq\0~\0E\0\0\0\0\0\0\0\rpt\0安全管理sq\0~\0I\0����\0q\0~\0�q\0~\0�q\0~\0{psq\0~\0?@\0\0\0\0\0w\0\0\0\0\0\0q\0~\0]q\0~\0]xsq\0~\0-w\0\0\0?@\0\0\0\0\0q\0~\0]xt\0/security/web/q\0~\0�q\0~\0�q\0~\0�xsq\0~\0-w\0\0\0?@\0\0\0\0\0q\0~\0�q\0~\0wq\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�xsq\0~\0I\0����\0\0q\0~\0^q\0~\0]q\0~\0\\pppq\0~\0]xsq\0~\0-w\0\0\0?@\0\0\0\0\0q\0~\0Pq\0~\0]xt\0admin'),('a3c2d32d9f20743ac0a4cda3c26fbbfb','��\0sr\0Lorg.springframework.security.oauth2.common.DefaultExpiringOAuth2RefreshToken/�Gc��ɷ\0L\0\nexpirationt\0Ljava/util/Date;xr\0Dorg.springframework.security.oauth2.common.DefaultOAuth2RefreshTokens�\ncT�^\0L\0valuet\0Ljava/lang/String;xpt\0$e3d68cca-34a0-4358-89ba-035654327852sr\0java.util.Datehj�KYt\0\0xpw\0\0X�WBx','��\0sr\0Aorg.springframework.security.oauth2.provider.OAuth2Authentication�@bR\0L\0\rstoredRequestt\0<Lorg/springframework/security/oauth2/provider/OAuth2Request;L\0userAuthenticationt\02Lorg/springframework/security/core/Authentication;xr\0Gorg.springframework.security.authentication.AbstractAuthenticationTokenӪ(~nGd\0Z\0\rauthenticatedL\0authoritiest\0Ljava/util/Collection;L\0detailst\0Ljava/lang/Object;xp\0sr\0&java.util.Collections$UnmodifiableList�%1��\0L\0listt\0Ljava/util/List;xr\0,java.util.Collections$UnmodifiableCollectionB\0��^�\0L\0cq\0~\0xpsr\0java.util.ArrayListx����a�\0I\0sizexp\0\0\0w\0\0\0sr\0Borg.springframework.security.core.authority.SimpleGrantedAuthority\0\0\0\0\0\0�\0L\0rolet\0Ljava/lang/String;xpt\0ROLE_2xq\0~\0psr\0:org.springframework.security.oauth2.provider.OAuth2Request\0\0\0\0\0\0\0\0Z\0approvedL\0authoritiesq\0~\0L\0\nextensionst\0Ljava/util/Map;L\0redirectUriq\0~\0L\0refresht\0;Lorg/springframework/security/oauth2/provider/TokenRequest;L\0resourceIdst\0Ljava/util/Set;L\0\rresponseTypesq\0~\0xr\08org.springframework.security.oauth2.provider.BaseRequest6(z>�qi�\0L\0clientIdq\0~\0L\0requestParametersq\0~\0L\0scopeq\0~\0xpt\0\rmobile_clientsr\0%java.util.Collections$UnmodifiableMap��t�B\0L\0mq\0~\0xpsr\0java.util.HashMap���`�\0F\0\nloadFactorI\0	thresholdxp?@\0\0\0\0\0w\0\0\0\0\0\0t\0\ngrant_typet\0passwordt\0scopet\0readt\0	client_idt\0\rmobile_clientt\0usernamet\0demoxsr\0%java.util.Collections$UnmodifiableSet��я��U\0\0xq\0~\0	sr\0java.util.LinkedHashSet�l�Z��*\0\0xr\0java.util.HashSet�D�����4\0\0xpw\0\0\0?@\0\0\0\0\0q\0~\0xsq\0~\0\'w\0\0\0?@\0\0\0\0\0\0xsq\0~\0\Z?@\0\0\0\0\0\0w\0\0\0\0\0\0\0xppsq\0~\0\'w\0\0\0?@\0\0\0\0\0t\0mobile-resourcexsq\0~\0\'w\0\0\0?@\0\0\0\0\0\0xsr\0Oorg.springframework.security.authentication.UsernamePasswordAuthenticationToken\0\0\0\0\0\0�\0L\0credentialsq\0~\0L\0	principalq\0~\0xq\0~\0sq\0~\0sq\0~\0\0\0\0w\0\0\0q\0~\0xq\0~\01sr\0java.util.LinkedHashMap4�N\\l��\0Z\0accessOrderxq\0~\0\Z?@\0\0\0\0\0w\0\0\0\0\0\0q\0~\0q\0~\0q\0~\0q\0~\0t\0\rclient_secrett\0secretq\0~\0 q\0~\0!q\0~\0\"q\0~\0#x\0psr\0-com.faceye.component.security.web.entity.User{���T{\0Z\0accountExpiredZ\0\raccountLockedZ\0credentialsExpiredZ\0enabledL\0emailq\0~\0L\0encryptPasswordq\0~\0L\0idt\0Ljava/lang/Long;L\0passwordq\0~\0[\0roleIdst\0[Ljava/lang/Long;L\0rolesq\0~\0L\0usernameq\0~\0xp\0\0\0t\0demot\0\0sr\0java.lang.Long;��̏#�\0J\0valuexr\0java.lang.Number������\0\0xp\0\0\0\0\0\0\0�t\0 bccf2ed538c8be27b11c14e58c28cdbbur\0[Ljava.lang.Long;}�\n���c+\0\0xp\0\0\0sq\0~\0<\0\0\0\0\0\0\0sr\0/org.hibernate.collection.internal.PersistentSet�������\0L\0setq\0~\0xr\0>org.hibernate.collection.internal.AbstractPersistentCollection�J~w��\0	Z\0allowLoadOutsideTransactionI\0\ncachedSizeZ\0dirtyZ\0initializedL\0keyt\0Ljava/io/Serializable;L\0ownerq\0~\0L\0roleq\0~\0L\0sessionFactoryUuidq\0~\0L\0storedSnapshotq\0~\0Exp\0����\0q\0~\0>q\0~\09t\03com.faceye.component.security.web.entity.User.rolespsq\0~\0\Z?@\0\0\0\0\0w\0\0\0\0\0\0sr\0-com.faceye.component.security.web.entity.Role{���T{\0L\0idq\0~\07L\0menusq\0~\0L\0nameq\0~\0L\0	resourcesq\0~\0L\0usersq\0~\0xpsq\0~\0<\0\0\0\0\0\0\0sq\0~\0C\0����\0q\0~\0Kq\0~\0Jt\03com.faceye.component.security.web.entity.Role.menuspsq\0~\0\Z?@\0\0\0\0\0w\0\0\0\0\0\0\0xsq\0~\0\'w\0\0\0?@\0\0\0\0\0\0xt\0用户sq\0~\0C\0����\0q\0~\0Kq\0~\0Jt\07com.faceye.component.security.web.entity.Role.resourcespsq\0~\0\Z?@\0\0\0\0\0w\0\0\0\0\0\0\0xsq\0~\0\'w\0\0\0?@\0\0\0\0\0\0xsq\0~\0C\0����\0\0q\0~\0Kq\0~\0Jt\03com.faceye.component.security.web.entity.Role.userspppq\0~\0Jxsq\0~\0\'w\0\0\0?@\0\0\0\0\0q\0~\0Jxt\0demo'),('03533f56fa1f4d43b243f431b96c38e5','��\0sr\0Lorg.springframework.security.oauth2.common.DefaultExpiringOAuth2RefreshToken/�Gc��ɷ\0L\0\nexpirationt\0Ljava/util/Date;xr\0Dorg.springframework.security.oauth2.common.DefaultOAuth2RefreshTokens�\ncT�^\0L\0valuet\0Ljava/lang/String;xpt\0$c42c9c9d-f1b2-474c-8999-660873450418sr\0java.util.Datehj�KYt\0\0xpw\0\0X�]��x','��\0sr\0Aorg.springframework.security.oauth2.provider.OAuth2Authentication�@bR\0L\0\rstoredRequestt\0<Lorg/springframework/security/oauth2/provider/OAuth2Request;L\0userAuthenticationt\02Lorg/springframework/security/core/Authentication;xr\0Gorg.springframework.security.authentication.AbstractAuthenticationTokenӪ(~nGd\0Z\0\rauthenticatedL\0authoritiest\0Ljava/util/Collection;L\0detailst\0Ljava/lang/Object;xp\0sr\0&java.util.Collections$UnmodifiableList�%1��\0L\0listt\0Ljava/util/List;xr\0,java.util.Collections$UnmodifiableCollectionB\0��^�\0L\0cq\0~\0xpsr\0java.util.ArrayListx����a�\0I\0sizexp\0\0\0w\0\0\0sr\0Borg.springframework.security.core.authority.SimpleGrantedAuthority\0\0\0\0\0\0�\0L\0rolet\0Ljava/lang/String;xpt\0ROLE_1sq\0~\0\rt\0ROLE_2xq\0~\0psr\0:org.springframework.security.oauth2.provider.OAuth2Request\0\0\0\0\0\0\0\0Z\0approvedL\0authoritiesq\0~\0L\0\nextensionst\0Ljava/util/Map;L\0redirectUriq\0~\0L\0refresht\0;Lorg/springframework/security/oauth2/provider/TokenRequest;L\0resourceIdst\0Ljava/util/Set;L\0\rresponseTypesq\0~\0xr\08org.springframework.security.oauth2.provider.BaseRequest6(z>�qi�\0L\0clientIdq\0~\0L\0requestParametersq\0~\0L\0scopeq\0~\0xpt\0\rmobile_clientsr\0%java.util.Collections$UnmodifiableMap��t�B\0L\0mq\0~\0xpsr\0java.util.HashMap���`�\0F\0\nloadFactorI\0	thresholdxp?@\0\0\0\0\0w\0\0\0\0\0\0t\0\ngrant_typet\0passwordt\0scopet\0readt\0	client_idt\0\rmobile_clientt\0usernamet\0adminxsr\0%java.util.Collections$UnmodifiableSet��я��U\0\0xq\0~\0	sr\0java.util.LinkedHashSet�l�Z��*\0\0xr\0java.util.HashSet�D�����4\0\0xpw\0\0\0?@\0\0\0\0\0q\0~\0!xsq\0~\0)w\0\0\0?@\0\0\0\0\0\0xsq\0~\0?@\0\0\0\0\0\0w\0\0\0\0\0\0\0xppsq\0~\0)w\0\0\0?@\0\0\0\0\0t\0mobile-resourcexsq\0~\0)w\0\0\0?@\0\0\0\0\0\0xsr\0Oorg.springframework.security.authentication.UsernamePasswordAuthenticationToken\0\0\0\0\0\0�\0L\0credentialsq\0~\0L\0	principalq\0~\0xq\0~\0sq\0~\0sq\0~\0\0\0\0w\0\0\0q\0~\0q\0~\0xq\0~\03sr\0java.util.LinkedHashMap4�N\\l��\0Z\0accessOrderxq\0~\0?@\0\0\0\0\0w\0\0\0\0\0\0q\0~\0q\0~\0q\0~\0 q\0~\0!t\0\rclient_secrett\0secretq\0~\0\"q\0~\0#q\0~\0$q\0~\0%x\0psr\0-com.faceye.component.security.web.entity.User{���T{\0Z\0accountExpiredZ\0\raccountLockedZ\0credentialsExpiredZ\0enabledL\0emailq\0~\0L\0encryptPasswordq\0~\0L\0idt\0Ljava/lang/Long;L\0passwordq\0~\0[\0roleIdst\0[Ljava/lang/Long;L\0rolesq\0~\0L\0usernameq\0~\0xp\0\0\0t\0haipenge@gmail.compsr\0java.lang.Long;��̏#�\0J\0valuexr\0java.lang.Number������\0\0xp\0\0\0\0\0\0\0�t\0 ceb4f32325eda6142bd65215f4c0f371psr\0/org.hibernate.collection.internal.PersistentSet�������\0L\0setq\0~\0xr\0>org.hibernate.collection.internal.AbstractPersistentCollection�J~w��\0	Z\0allowLoadOutsideTransactionI\0\ncachedSizeZ\0dirtyZ\0initializedL\0keyt\0Ljava/io/Serializable;L\0ownerq\0~\0L\0roleq\0~\0L\0sessionFactoryUuidq\0~\0L\0storedSnapshotq\0~\0Cxp\0����\0q\0~\0?q\0~\0;t\03com.faceye.component.security.web.entity.User.rolespsq\0~\0?@\0\0\0\0\0w\0\0\0\0\0\0sr\0-com.faceye.component.security.web.entity.Role{���T{\0L\0idq\0~\09L\0menusq\0~\0L\0nameq\0~\0L\0	resourcesq\0~\0L\0usersq\0~\0xpsq\0~\0=\0\0\0\0\0\0\0sq\0~\0A\0����\0q\0~\0Iq\0~\0Ht\03com.faceye.component.security.web.entity.Role.menuspsq\0~\0?@\0\0\0\0\0w\0\0\0\0\0\0sr\0-com.faceye.component.security.web.entity.Menu{���T{\0L\0childrenq\0~\0L\0idq\0~\09L\0nameq\0~\0L\0parentt\0/Lcom/faceye/component/security/web/entity/Menu;L\0resourcet\03Lcom/faceye/component/security/web/entity/Resource;L\0rolesq\0~\0L\0typet\0Ljava/lang/Integer;xpsq\0~\0A\0����\0sq\0~\0=\0\0\0\0\0\0\0\nq\0~\0Qt\06com.faceye.component.security.web.entity.Menu.childrenpsq\0~\0?@\0\0\0\0\0w\0\0\0\0\0\0\0xsq\0~\0)w\0\0\0?@\0\0\0\0\0\0xq\0~\0St\0资源管理sq\0~\0Msq\0~\0A\0����\0sq\0~\0=\0\0\0\0\0\0\0q\0~\0Xq\0~\0Tpsq\0~\0?@\0\0\0\0\0w\0\0\0\0\0\0q\0~\0Qq\0~\0Qsq\0~\0Msq\0~\0A\0����\0sq\0~\0=\0\0\0\0\0\0\0q\0~\0\\q\0~\0Tpsq\0~\0?@\0\0\0\0\0w\0\0\0\0\0\0\0xsq\0~\0)w\0\0\0?@\0\0\0\0\0\0xq\0~\0^t\0菜单管理q\0~\0Xsr\01com.faceye.component.security.web.entity.Resource{���T{\0L\0idq\0~\09L\0menuq\0~\0NL\0nameq\0~\0L\0rolesq\0~\0L\0urlq\0~\0xpsq\0~\0=\0\0\0\0\0\0\0pt\0菜单管理sq\0~\0A\0����\0q\0~\0dq\0~\0ct\07com.faceye.component.security.web.entity.Resource.rolespsq\0~\0?@\0\0\0\0\0w\0\0\0\0\0\0q\0~\0Hq\0~\0Hxsq\0~\0)w\0\0\0?@\0\0\0\0\0q\0~\0Hxt\0/security/web/menu/homesq\0~\0A\0����\0q\0~\0^q\0~\0\\t\03com.faceye.component.security.web.entity.Menu.rolespsq\0~\0?@\0\0\0\0\0w\0\0\0\0\0\0q\0~\0Hq\0~\0Hxsq\0~\0)w\0\0\0?@\0\0\0\0\0q\0~\0Hxsr\0java.lang.Integer⠤���8\0I\0valuexq\0~\0>\0\0\0q\0~\0\\sq\0~\0Msq\0~\0A\0����\0sq\0~\0=\0\0\0\0\0\0\0q\0~\0qq\0~\0Tpsq\0~\0?@\0\0\0\0\0w\0\0\0\0\0\0\0xsq\0~\0)w\0\0\0?@\0\0\0\0\0\0xq\0~\0st\0用户管理q\0~\0Xsq\0~\0bsq\0~\0=\0\0\0\0\0\0\0	pt\0用户管理sq\0~\0A\0����\0q\0~\0xq\0~\0wq\0~\0gpsq\0~\0?@\0\0\0\0\0w\0\0\0\0\0\0q\0~\0Hq\0~\0Hxsq\0~\0)w\0\0\0?@\0\0\0\0\0q\0~\0Hxt\0/security/web/user/homesq\0~\0A\0����\0q\0~\0sq\0~\0qq\0~\0lpsq\0~\0?@\0\0\0\0\0w\0\0\0\0\0\0q\0~\0Hq\0~\0Hxsq\0~\0)w\0\0\0?@\0\0\0\0\0q\0~\0Hxq\0~\0pq\0~\0qsq\0~\0Msq\0~\0A\0����\0q\0~\0xq\0~\0�q\0~\0Tpsq\0~\0?@\0\0\0\0\0w\0\0\0\0\0\0\0xsq\0~\0)w\0\0\0?@\0\0\0\0\0\0xq\0~\0xt\0角色管理q\0~\0Xsq\0~\0bq\0~\0Spt\0角色管理sq\0~\0A\0����\0q\0~\0Sq\0~\0�q\0~\0gpsq\0~\0?@\0\0\0\0\0w\0\0\0\0\0\0q\0~\0Hq\0~\0Hxsq\0~\0)w\0\0\0?@\0\0\0\0\0q\0~\0Hxt\0/security/web/role/homesq\0~\0A\0����\0q\0~\0xq\0~\0�q\0~\0lpsq\0~\0?@\0\0\0\0\0w\0\0\0\0\0\0q\0~\0Hq\0~\0Hxsq\0~\0)w\0\0\0?@\0\0\0\0\0q\0~\0Hxq\0~\0pq\0~\0�xsq\0~\0)w\0\0\0?@\0\0\0\0\0q\0~\0Qq\0~\0�q\0~\0\\q\0~\0qxq\0~\0Zt\0系统管理psq\0~\0bq\0~\0spt\0系统管理sq\0~\0A\0����\0q\0~\0sq\0~\0�q\0~\0gpsq\0~\0?@\0\0\0\0\0w\0\0\0\0\0\0q\0~\0Hq\0~\0Hxsq\0~\0)w\0\0\0?@\0\0\0\0\0q\0~\0Hxt\0\0sq\0~\0A\0����\0q\0~\0Zq\0~\0Xq\0~\0lpsq\0~\0?@\0\0\0\0\0w\0\0\0\0\0\0q\0~\0Hq\0~\0Hxsq\0~\0)w\0\0\0?@\0\0\0\0\0q\0~\0Hxq\0~\0psq\0~\0bq\0~\0^pt\0资源管理sq\0~\0A\0����\0q\0~\0^q\0~\0�q\0~\0gpsq\0~\0?@\0\0\0\0\0w\0\0\0\0\0\0q\0~\0Hq\0~\0Hxsq\0~\0)w\0\0\0?@\0\0\0\0\0q\0~\0Hxt\0/security/web/resource/homesq\0~\0A\0����\0q\0~\0Sq\0~\0Qq\0~\0lpsq\0~\0?@\0\0\0\0\0w\0\0\0\0\0\0q\0~\0Hq\0~\0Hxsq\0~\0)w\0\0\0?@\0\0\0\0\0q\0~\0Hxq\0~\0pq\0~\0Qq\0~\0\\q\0~\0\\q\0~\0Xq\0~\0Xq\0~\0qq\0~\0qq\0~\0�q\0~\0�xsq\0~\0)w\0\0\0?@\0\0\0\0\0q\0~\0Qq\0~\0Xq\0~\0�q\0~\0\\q\0~\0qxt\0	管理员sq\0~\0A\0����\0q\0~\0Iq\0~\0Ht\07com.faceye.component.security.web.entity.Role.resourcespsq\0~\0?@\0\0\0\0\0w\0\0\0\0\0\0q\0~\0cq\0~\0cq\0~\0�q\0~\0�sq\0~\0bsq\0~\0=\0\0\0\0\0\0\0\rpt\0安全管理sq\0~\0A\0����\0q\0~\0�q\0~\0�q\0~\0gpsq\0~\0?@\0\0\0\0\0w\0\0\0\0\0\0q\0~\0Hq\0~\0Hxsq\0~\0)w\0\0\0?@\0\0\0\0\0q\0~\0Hxt\0/security/web/q\0~\0�sq\0~\0bsq\0~\0=\0\0\0\0\0\0\0pt\0oauthsq\0~\0A\0����\0q\0~\0�q\0~\0�q\0~\0gpsq\0~\0?@\0\0\0\0\0w\0\0\0\0\0\0q\0~\0Hq\0~\0Hxsq\0~\0)w\0\0\0?@\0\0\0\0\0q\0~\0Hxt\0/oauth/q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0wq\0~\0wxsq\0~\0)w\0\0\0?@\0\0\0\0\0q\0~\0cq\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0wxsq\0~\0A\0����\0\0q\0~\0Iq\0~\0Ht\03com.faceye.component.security.web.entity.Role.userspppq\0~\0Hsq\0~\0Gsq\0~\0=\0\0\0\0\0\0\0sq\0~\0A\0����\0q\0~\0�q\0~\0�q\0~\0Kpsq\0~\0?@\0\0\0\0\0w\0\0\0\0\0\0\0xsq\0~\0)w\0\0\0?@\0\0\0\0\0\0xt\0用户sq\0~\0A\0����\0q\0~\0�q\0~\0�q\0~\0�psq\0~\0?@\0\0\0\0\0w\0\0\0\0\0\0\0xsq\0~\0)w\0\0\0?@\0\0\0\0\0\0xsq\0~\0A\0����\0\0q\0~\0�q\0~\0�q\0~\0�pppq\0~\0�xsq\0~\0)w\0\0\0?@\0\0\0\0\0q\0~\0Hq\0~\0�xt\0admin');
/*!40000 ALTER TABLE `oauth_refresh_token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `security_web_menu`
--

DROP TABLE IF EXISTS `security_web_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `security_web_menu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `type` int(11) DEFAULT NULL,
  `resource_id` bigint(20) NOT NULL,
  `parent_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_50t5t0q11h5j9wdec8qk57f2u` (`resource_id`),
  UNIQUE KEY `UK_a9fh5apdxrl4h8ili458dxd8f` (`resource_id`),
  KEY `FK_50t5t0q11h5j9wdec8qk57f2u` (`resource_id`),
  KEY `FK_er03g9dnoydqnir77091ukden` (`parent_id`),
  CONSTRAINT `FK_50t5t0q11h5j9wdec8qk57f2u` FOREIGN KEY (`resource_id`) REFERENCES `security_web_resource` (`id`),
  CONSTRAINT `FK_er03g9dnoydqnir77091ukden` FOREIGN KEY (`parent_id`) REFERENCES `security_web_menu` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `security_web_menu`
--

LOCK TABLES `security_web_menu` WRITE;
/*!40000 ALTER TABLE `security_web_menu` DISABLE KEYS */;
INSERT  IGNORE INTO `security_web_menu` (`id`, `name`, `type`, `resource_id`, `parent_id`) VALUES (7,'系统管理',1,8,NULL),(8,'用户管理',1,9,7),(9,'角色管理',1,10,7),(10,'资源管理',1,11,7),(11,'菜单管理',1,12,7);
/*!40000 ALTER TABLE `security_web_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `security_web_menu_role`
--

DROP TABLE IF EXISTS `security_web_menu_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `security_web_menu_role` (
  `menu_id` bigint(20) NOT NULL,
  `role_id` bigint(20) NOT NULL,
  PRIMARY KEY (`role_id`,`menu_id`),
  KEY `FK_1lv42xx9ruwf84kdkwv6sifpq` (`role_id`),
  KEY `FK_nx2oahgulctm5g61bassx95fa` (`menu_id`),
  CONSTRAINT `FK_1lv42xx9ruwf84kdkwv6sifpq` FOREIGN KEY (`role_id`) REFERENCES `security_web_role` (`id`),
  CONSTRAINT `FK_nx2oahgulctm5g61bassx95fa` FOREIGN KEY (`menu_id`) REFERENCES `security_web_menu` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `security_web_menu_role`
--

LOCK TABLES `security_web_menu_role` WRITE;
/*!40000 ALTER TABLE `security_web_menu_role` DISABLE KEYS */;
INSERT  IGNORE INTO `security_web_menu_role` (`menu_id`, `role_id`) VALUES (7,1),(8,1),(9,1),(10,1),(11,1);
/*!40000 ALTER TABLE `security_web_menu_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `security_web_resource`
--

DROP TABLE IF EXISTS `security_web_resource`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `security_web_resource` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `menu_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_d15ku65bdplj98ldr1k8dvsdo` (`menu_id`),
  CONSTRAINT `FK_d15ku65bdplj98ldr1k8dvsdo` FOREIGN KEY (`menu_id`) REFERENCES `security_web_menu` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `security_web_resource`
--

LOCK TABLES `security_web_resource` WRITE;
/*!40000 ALTER TABLE `security_web_resource` DISABLE KEYS */;
INSERT  IGNORE INTO `security_web_resource` (`id`, `name`, `url`, `menu_id`) VALUES (4,'测试','/ajax/register',NULL),(8,'系统管理','',NULL),(9,'用户管理','/security/web/user/home',NULL),(10,'角色管理','/security/web/role/home',NULL),(11,'资源管理','/security/web/resource/home',NULL),(12,'菜单管理','/security/web/menu/home',NULL),(13,'安全管理','/security/web/',NULL),(14,'oauth','/oauth/',NULL);
/*!40000 ALTER TABLE `security_web_resource` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `security_web_role`
--

DROP TABLE IF EXISTS `security_web_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `security_web_role` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `security_web_role`
--

LOCK TABLES `security_web_role` WRITE;
/*!40000 ALTER TABLE `security_web_role` DISABLE KEYS */;
INSERT  IGNORE INTO `security_web_role` (`id`, `name`) VALUES (1,'管理员'),(2,'用户');
/*!40000 ALTER TABLE `security_web_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `security_web_role_resource`
--

DROP TABLE IF EXISTS `security_web_role_resource`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `security_web_role_resource` (
  `role_id` bigint(20) NOT NULL,
  `resource_id` bigint(20) NOT NULL,
  PRIMARY KEY (`resource_id`,`role_id`),
  KEY `FK_gccnse2a6193nkat9fhkhk7lw` (`resource_id`),
  KEY `FK_rhpl71m7fgrapqw0ufc8xrkas` (`role_id`),
  CONSTRAINT `FK_gccnse2a6193nkat9fhkhk7lw` FOREIGN KEY (`resource_id`) REFERENCES `security_web_resource` (`id`),
  CONSTRAINT `FK_rhpl71m7fgrapqw0ufc8xrkas` FOREIGN KEY (`role_id`) REFERENCES `security_web_role` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `security_web_role_resource`
--

LOCK TABLES `security_web_role_resource` WRITE;
/*!40000 ALTER TABLE `security_web_role_resource` DISABLE KEYS */;
INSERT  IGNORE INTO `security_web_role_resource` (`role_id`, `resource_id`) VALUES (1,8),(1,9),(1,10),(1,11),(1,12),(1,13),(1,14);
/*!40000 ALTER TABLE `security_web_role_resource` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `security_web_user`
--

DROP TABLE IF EXISTS `security_web_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `security_web_user` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `account_expired` tinyint(1) DEFAULT NULL,
  `account_locked` tinyint(1) DEFAULT NULL,
  `credentials_expired` tinyint(1) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `enabled` tinyint(1) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `encrypt_password` varchar(255) DEFAULT NULL,
  `roleIds` tinyblob,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=215 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `security_web_user`
--

LOCK TABLES `security_web_user` WRITE;
/*!40000 ALTER TABLE `security_web_user` DISABLE KEYS */;
INSERT  IGNORE INTO `security_web_user` (`id`, `account_expired`, `account_locked`, `credentials_expired`, `email`, `enabled`, `password`, `name`, `encrypt_password`, `roleIds`) VALUES (209,0,0,0,'haipenge@gmail.com',1,'ceb4f32325eda6142bd65215f4c0f371','admin',NULL,NULL),(210,0,0,0,'test@sohu.com',1,'889255f1c9c8f12a353be255f78a848b','test','',NULL),(214,0,0,0,'demo',1,'bccf2ed538c8be27b11c14e58c28cdbb','demo','','��\0ur\0[Ljava.lang.Long;}�\n���c+\0\0xp\0\0\0sr\0java.lang.Long;��̏#�\0J\0valuexr\0java.lang.Number������\0\0xp\0\0\0\0\0\0\0');
/*!40000 ALTER TABLE `security_web_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `security_web_user_role`
--

DROP TABLE IF EXISTS `security_web_user_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `security_web_user_role` (
  `role_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  PRIMARY KEY (`user_id`,`role_id`),
  KEY `FK_f56d9g77c0nbc6kyu2h9v7tix` (`user_id`),
  KEY `FK_qftn6eesvr93j7uavpecptmkr` (`role_id`),
  CONSTRAINT `FK_f56d9g77c0nbc6kyu2h9v7tix` FOREIGN KEY (`user_id`) REFERENCES `security_web_user` (`id`),
  CONSTRAINT `FK_qftn6eesvr93j7uavpecptmkr` FOREIGN KEY (`role_id`) REFERENCES `security_web_role` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `security_web_user_role`
--

LOCK TABLES `security_web_user_role` WRITE;
/*!40000 ALTER TABLE `security_web_user_role` DISABLE KEYS */;
INSERT  IGNORE INTO `security_web_user_role` (`role_id`, `user_id`) VALUES (1,209),(2,209),(1,210),(2,210),(2,214);
/*!40000 ALTER TABLE `security_web_user_role` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-10-24 18:27:59
