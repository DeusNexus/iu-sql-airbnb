--
-- TOC entry 223 (class 1259 OID 16445)
-- Name: Country; Type: TABLE; Schema: public; Owner: iu
--

CREATE TABLE public."Country" (
    id integer NOT NULL,
    name character varying(100) NOT NULL,
    country_code character varying(3) NOT NULL
);


ALTER TABLE public."Country" OWNER TO iu;

--
-- TOC entry 3738 (class 0 OID 0)
-- Dependencies: 223
-- Name: TABLE "Country"; Type: COMMENT; Schema: public; Owner: iu
--

COMMENT ON TABLE public."Country" IS 'Available Countries';


--
-- TOC entry 3739 (class 0 OID 0)
-- Dependencies: 223
-- Name: COLUMN "Country".id; Type: COMMENT; Schema: public; Owner: iu
--

COMMENT ON COLUMN public."Country".id IS 'PK';


--
-- TOC entry 3740 (class 0 OID 0)
-- Dependencies: 223
-- Name: COLUMN "Country".name; Type: COMMENT; Schema: public; Owner: iu
--

COMMENT ON COLUMN public."Country".name IS 'Name of the Country';


--
-- TOC entry 3741 (class 0 OID 0)
-- Dependencies: 223
-- Name: COLUMN "Country".country_code; Type: COMMENT; Schema: public; Owner: iu
--

COMMENT ON COLUMN public."Country".country_code IS 'ISO 3166 3-letter code of the Country';

--
-- TOC entry 222 (class 1259 OID 16444)
-- Name: Country_id_seq; Type: SEQUENCE; Schema: public; Owner: iu
--

ALTER TABLE public."Country" ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public."Country_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
