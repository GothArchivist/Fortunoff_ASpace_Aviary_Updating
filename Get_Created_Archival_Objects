SELECT ao.title, resource.title, resource.ead_id
,CONCAT('/repositories/14/archival_objects/', ao.id) AS ao_uri
FROM archival_object ao
LEFT JOIN resource ON ao.root_record_id=resource.id
WHERE (ao.title='Transcripts'OR ao.title='Indexes')
AND resource.ead_id IN () #add EAD ID for each of the newly created archival objects
ORDER BY resource.ead_id
