--
-- TOC entry 219 (class 1259 OID 16423)
-- Name: Amenity Categories; Type: TABLE; Schema: public; Owner: iu
--

CREATE TABLE public."Amenity Categories" (
    id integer NOT NULL,
    category character varying(50)
);


ALTER TABLE public."Amenity Categories" OWNER TO iu;

--
-- TOC entry 3716 (class 0 OID 0)
-- Dependencies: 219
-- Name: TABLE "Amenity Categories"; Type: COMMENT; Schema: public; Owner: iu
--

COMMENT ON TABLE public."Amenity Categories" IS 'Categories for amenities';


--
-- TOC entry 3717 (class 0 OID 0)
-- Dependencies: 219
-- Name: COLUMN "Amenity Categories".id; Type: COMMENT; Schema: public; Owner: iu
--

COMMENT ON COLUMN public."Amenity Categories".id IS 'PK';


--
-- TOC entry 3718 (class 0 OID 0)
-- Dependencies: 219
-- Name: COLUMN "Amenity Categories".category; Type: COMMENT; Schema: public; Owner: iu
--

COMMENT ON COLUMN public."Amenity Categories".category IS 'Name of category';

--
-- TOC entry 218 (class 1259 OID 16422)
-- Name: Amenity Categories_id_seq; Type: SEQUENCE; Schema: public; Owner: iu
--

ALTER TABLE public."Amenity Categories" ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public."Amenity Categories_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
