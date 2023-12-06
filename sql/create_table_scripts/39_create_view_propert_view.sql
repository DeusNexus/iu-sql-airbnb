--
-- TOC entry 272 (class 1259 OID 17043)
-- Name: property_view; Type: VIEW; Schema: public; Owner: iu
--

CREATE VIEW public.property_view AS
 SELECT p.id,
    p.guest_capacity,
    p.name,
    p.adress,
    p.description_long,
    p.description_short,
    p.units_available,
    p.units_total,
    p.dates_available,
    p.visibile,
    p.longitude,
    p.latitude,
    p.beds,
    p.baths,
    p.smoke_allowed,
    p.rooms,
    p.updated_on,
    p.host_id,
    c.name AS country_name,
    c.country_code,
    pt.type_name,
    pt.description AS property_type_description,
    pi.media_id,
    pr.review_id,
    pa.amenity_id
   FROM (((((public."Property" p
     LEFT JOIN public."Country" c ON ((p.country_id = c.id)))
     LEFT JOIN public."Property Type" pt ON ((p.property_type_id = pt.id)))
     LEFT JOIN public."Property Images" pi ON ((p.id = pi.property_id)))
     LEFT JOIN public."Property Review" pr ON ((p.id = pr.property_id)))
     LEFT JOIN public."Property Amenity" pa ON ((p.id = pa.property_id)));


ALTER TABLE public.property_view OWNER TO iu;
