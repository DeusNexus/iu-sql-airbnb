--
-- TOC entry 248 (class 1259 OID 16544)
-- Name: Review Type; Type: TABLE; Schema: public; Owner: iu
--

CREATE TABLE public."Review Type" (
    id integer NOT NULL,
    entity_type character varying(25) NOT NULL
);


ALTER TABLE public."Review Type" OWNER TO iu;

--
-- TOC entry 3848 (class 0 OID 0)
-- Dependencies: 248
-- Name: TABLE "Review Type"; Type: COMMENT; Schema: public; Owner: iu
--

COMMENT ON TABLE public."Review Type" IS 'Type of entity being reviewed (Guest, Host, Property)';


--
-- TOC entry 3849 (class 0 OID 0)
-- Dependencies: 248
-- Name: COLUMN "Review Type".id; Type: COMMENT; Schema: public; Owner: iu
--

COMMENT ON COLUMN public."Review Type".id IS 'PK';


--
-- TOC entry 3850 (class 0 OID 0)
-- Dependencies: 248
-- Name: COLUMN "Review Type".entity_type; Type: COMMENT; Schema: public; Owner: iu
--

COMMENT ON COLUMN public."Review Type".entity_type IS 'Entity being reviewed';


--
-- TOC entry 247 (class 1259 OID 16543)
-- Name: Review Type_id_seq; Type: SEQUENCE; Schema: public; Owner: iu
--

ALTER TABLE public."Review Type" ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public."Review Type_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
