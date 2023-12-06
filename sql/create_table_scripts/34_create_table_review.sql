--
-- TOC entry 246 (class 1259 OID 16535)
-- Name: Review; Type: TABLE; Schema: public; Owner: iu
--

CREATE TABLE public."Review" (
    id integer NOT NULL,
    review_type_id integer NOT NULL,
    review_by_id integer NOT NULL,
    rating integer NOT NULL,
    comment text,
    anonymous boolean DEFAULT false NOT NULL,
    created_on timestamp with time zone NOT NULL
);


ALTER TABLE public."Review" OWNER TO iu;

--
-- TOC entry 3840 (class 0 OID 0)
-- Dependencies: 246
-- Name: TABLE "Review"; Type: COMMENT; Schema: public; Owner: iu
--

COMMENT ON TABLE public."Review" IS 'Review of property, host or guest';


--
-- TOC entry 3841 (class 0 OID 0)
-- Dependencies: 246
-- Name: COLUMN "Review".id; Type: COMMENT; Schema: public; Owner: iu
--

COMMENT ON COLUMN public."Review".id IS 'PK';


--
-- TOC entry 3842 (class 0 OID 0)
-- Dependencies: 246
-- Name: COLUMN "Review".review_type_id; Type: COMMENT; Schema: public; Owner: iu
--

COMMENT ON COLUMN public."Review".review_type_id IS 'Type of entity being reviewed (Guest, Host, Property, etc.)';


--
-- TOC entry 3843 (class 0 OID 0)
-- Dependencies: 246
-- Name: COLUMN "Review".review_by_id; Type: COMMENT; Schema: public; Owner: iu
--

COMMENT ON COLUMN public."Review".review_by_id IS 'User id of reviewer';


--
-- TOC entry 3844 (class 0 OID 0)
-- Dependencies: 246
-- Name: COLUMN "Review".rating; Type: COMMENT; Schema: public; Owner: iu
--

COMMENT ON COLUMN public."Review".rating IS 'Rating 0-5 (low to high)';


--
-- TOC entry 3845 (class 0 OID 0)
-- Dependencies: 246
-- Name: COLUMN "Review".comment; Type: COMMENT; Schema: public; Owner: iu
--

COMMENT ON COLUMN public."Review".comment IS 'Review comment';


--
-- TOC entry 3846 (class 0 OID 0)
-- Dependencies: 246
-- Name: COLUMN "Review".anonymous; Type: COMMENT; Schema: public; Owner: iu
--

COMMENT ON COLUMN public."Review".anonymous IS 'Anonymous Bool';


--
-- TOC entry 3847 (class 0 OID 0)
-- Dependencies: 246
-- Name: COLUMN "Review".created_on; Type: COMMENT; Schema: public; Owner: iu
--

COMMENT ON COLUMN public."Review".created_on IS 'Timestamp of creation';

--
-- TOC entry 245 (class 1259 OID 16534)
-- Name: Review_id_seq; Type: SEQUENCE; Schema: public; Owner: iu
--

ALTER TABLE public."Review" ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public."Review_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
