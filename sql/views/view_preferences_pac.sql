SELECT 
	p.id, 
-- 	p.language, 
	p.allow_promotional_contact, p.price_range_min, p.price_range_max, p.night_mode,
-- 	ppt.property_type_id, 
-- 	pa.amenity_id, 
-- 	pc.country_id, 
	l.language_name,
	pt.type_name, pt.description,
	c.name, c.country_code, 
	a.name, 
-- 	a.category_id,
	ac.category
FROM public."Preferences" as p
INNER JOIN public."Preferences Property Type" as ppt
    ON p.id = ppt.preferences_id
INNER JOIN public."Preferences Amenity" as pa
    ON p.id = pa.preferences_id
INNER JOIN public."Preferences Country" as pc
    ON p.id = pc.preferences_id
INNER JOIN public."Language" as l
	ON p.language = l.id
INNER JOIN public."Property Type" as pt
	ON ppt.property_type_id = pt.id
INNER JOIN public."Country" as c
	ON pc.country_id = c.id
INNER JOIN public."Amenity" as a
	ON pa.amenity_id = a.id
INNER JOIN public."Amenity Categories" as ac
	ON a.category_id = ac.id;
