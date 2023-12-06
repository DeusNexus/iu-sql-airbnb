--
-- TOC entry 257 (class 1259 OID 16590)
-- Name: Preferences Amenity; Type: TABLE; Schema: public; Owner: iu
--

CREATE TABLE public."Preferences Amenity" (
    preferences_id integer NOT NULL,
    amenity_id integer NOT NULL
);


ALTER TABLE public."Preferences Amenity" OWNER TO iu;

--
-- TOC entry 3793 (class 0 OID 0)
-- Dependencies: 257
-- Name: TABLE "Preferences Amenity"; Type: COMMENT; Schema: public; Owner: iu
--

COMMENT ON TABLE public."Preferences Amenity" IS 'Many-to-many between Preferences and Amenity';


--
-- TOC entry 3794 (class 0 OID 0)
-- Dependencies: 257
-- Name: COLUMN "Preferences Amenity".preferences_id; Type: COMMENT; Schema: public; Owner: iu
--

COMMENT ON COLUMN public."Preferences Amenity".preferences_id IS 'FK - Preferences ID';


--
-- TOC entry 3795 (class 0 OID 0)
-- Dependencies: 257
-- Name: COLUMN "Preferences Amenity".amenity_id; Type: COMMENT; Schema: public; Owner: iu
--

COMMENT ON COLUMN public."Preferences Amenity".amenity_id IS 'FK - Amenity ID';
