package com.faceye.component.security.web.repository.jpa;

import org.springframework.stereotype.Repository;

import com.faceye.component.security.web.entity.ClientDetails;
import com.faceye.feature.repository.jpa.BaseRepository;
/**
 * Role 实体DAO
 * @author @haipenge 
 * haipenge@gmail.com
*  Create Date:2014年5月20日
 */
@Repository
public interface ClientDetailsRepository extends BaseRepository<ClientDetails,String> {
	
	
}/**@generate-repository-source@**/
