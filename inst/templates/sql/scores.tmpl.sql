SELECT DISTINCT
	organization_user.Id user_id,
	course.`Name` course_name,
	content.Id game_id,
	content.`Name` game_name,
	content_score_detail.ContentAbilityId ability_id,
	content_score_detail.CreateTime game_time,
	content_score_detail.ApproximateScore game_score_raw,
	content_score_detail.StandardScore game_score_std
FROM
	iquizoo_datacenter_db.content_score_detail
	INNER JOIN iquizoo_user_db.organization_user ON organization_user.Id = content_score_detail.UserId
	INNER JOIN iquizoo_user_db.base_organization ON base_organization.Id = organization_user.OrganizationId -- `base_organization` might be used in "where_clause"
	INNER JOIN iquizoo_content_db.content ON content.Id = content_score_detail.ContentId -- `content` might be used in "where_clause"
	INNER JOIN iquizoo_content_db.course ON course.Id = content_score_detail.CourseId -- `course` might be used in "where_clause"
{ where_clause };
