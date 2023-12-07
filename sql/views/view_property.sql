SELECT
	p.id, 
-- 	p.country_id, 
-- 	p.property_type_id, 
	p.guest_capacity, p.name, p.adress, 
	p.description_long, p.description_short, p.units_available, p.units_total, 
	p.dates_available, p.visibile, p.longitude, p.latitude, p.beds, p.baths, 
	p.smoke_allowed, p.rooms, p.updated_on, 
	p.host_id, ---????
-- 	c.id, 
	c.name, c.country_code,
-- 	pt.id, 
	pt.type_name, pt.description,
-- 	pi.property_id,
	pi.media_id,
-- 	pr.property_id, 
	pr.review_id,
	pa.property_id,
	pa.amenity_id
FROM public."Property" as p
LEFT JOIN public."Country" as c
	ON p.country_id = c.id
LEFT JOIN public."Property Type" as pt
	ON p.property_type_id = pt.id
LEFT JOIN public."Property Images" as pi
	ON p.id = pi.property_id
LEFT JOIN public."Property Review" as pr
	ON p.id = pr.property_id
LEFT JOIN public."Property Amenity" as pa
	ON p.id = pa.property_id;