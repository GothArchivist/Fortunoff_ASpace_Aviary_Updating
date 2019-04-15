SELECT title
,CONCAT('/repositories/14/digital_objects/',id) as do_uri
FROM digital_object
WHERE title IN () #add titles from the original input.
