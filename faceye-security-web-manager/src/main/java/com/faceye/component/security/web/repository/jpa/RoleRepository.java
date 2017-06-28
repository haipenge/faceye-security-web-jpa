package com.faceye.component.security.web.repository.jpa;

import com.faceye.component.security.web.entity.Role;
import com.faceye.feature.repository.jpa.BaseRepository;
/**
 * Role 实体DAO
 * @author @haipenge 
 * haipenge@gmail.com
*  Create Date:2014年5月20日
 */
public interface RoleRepository extends BaseRepository<Role,Long> {
	
	public Role getRoleByName(String name);
}/**@generate-repository-source@**/
