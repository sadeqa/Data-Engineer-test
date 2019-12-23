SELECT * FROM CIS_bdpm AS t1 INNER JOIN COMPO_bdpm AS t2 ON t1.cis=t2.cis WHERE t2.sub_nature='SA'
ALTER TABLE joined ADD normalized_longname text
UPDATE joined SET normalized_longname=REGEXP_REPLACE(LOWER(longname), '([+-]?[0-9]+),([0-9]+)', '$1.$2')
UPDATE joined SET normalized_longname=SUBSTRING_INDEX(normalized_longname,',',1)