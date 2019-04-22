SELECT resource.title, resource.ead_id, ao.title
,CONCAT('/repositories/14/archival_objects/', ao.id) AS ao_uri
,CONCAT('/repositories/14/resources/', resource.id) AS resource_uri
FROM resource
LEFT JOIN resource ON ao.root_record_id=resource.id
WHERE ead_id IN () #add EAD IDs, e.g. 'mssa.hvt.0001'
AND ao.title='Administrative documents'
ORDER BY resource.ead_id
