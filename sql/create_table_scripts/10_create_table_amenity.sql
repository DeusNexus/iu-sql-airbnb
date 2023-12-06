--
-- TOC entry 217 (class 1259 OID 16417)
-- Name: Amenity; Type: TABLE; Schema: public; Owner: iu
--

CREATE TABLE public."Amenity" (
    id integer NOT NULL,
    category_id integer NOT NULL,
    name character varying(100) NOT NULL
);


ALTER TABLE public."Amenity" OWNER TO iu;

--
-- TOC entry 3712 (class 0 OID 0)
-- Dependencies: 217
-- Name: TABLE "Amenity"; Type: COMMENT; Schema: public; Owner: iu
--

COMMENT ON TABLE public."Amenity" IS 'Generic amenities that a Property can poses';


--
-- TOC entry 3713 (class 0 OID 0)
-- Dependencies: 217
-- Name: COLUMN "Amenity".id; Type: COMMENT; Schema: public; Owner: iu
--

COMMENT ON COLUMN public."Amenity".id IS 'PK';


--
-- TOC entry 3714 (class 0 OID 0)
-- Dependencies: 217
-- Name: COLUMN "Amenity".category_id; Type: COMMENT; Schema: public; Owner: iu
--

COMMENT ON COLUMN public."Amenity".category_id IS 'Category of the Amenity';


--
-- TOC entry 3715 (class 0 OID 0)
-- Dependencies: 217
-- Name: COLUMN "Amenity".name; Type: COMMENT; Schema: public; Owner: iu
--

COMMENT ON COLUMN public."Amenity".name IS 'Name of the Amenity';

--
-- TOC entry 216 (class 1259 OID 16415)
-- Name: Amenity_id_seq; Type: SEQUENCE; Schema: public; Owner: iu
--

ALTER TABLE public."Amenity" ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public."Amenity_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
