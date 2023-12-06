--
-- TOC entry 254 (class 1259 OID 16575)
-- Name: Property Amenity; Type: TABLE; Schema: public; Owner: iu
--

CREATE TABLE public."Property Amenity" (
    property_id integer NOT NULL,
    amenity_id integer NOT NULL
);


ALTER TABLE public."Property Amenity" OWNER TO iu;

--
-- TOC entry 3829 (class 0 OID 0)
-- Dependencies: 254
-- Name: TABLE "Property Amenity"; Type: COMMENT; Schema: public; Owner: iu
--

COMMENT ON TABLE public."Property Amenity" IS 'Multiple-to-Multiple Property Amenity';


--
-- TOC entry 3830 (class 0 OID 0)
-- Dependencies: 254
-- Name: COLUMN "Property Amenity".property_id; Type: COMMENT; Schema: public; Owner: iu
--

COMMENT ON COLUMN public."Property Amenity".property_id IS 'FK - Property ID';


--
-- TOC entry 3831 (class 0 OID 0)
-- Dependencies: 254
-- Name: COLUMN "Property Amenity".amenity_id; Type: COMMENT; Schema: public; Owner: iu
--

COMMENT ON COLUMN public."Property Amenity".amenity_id IS 'FK - Amenity ID';
