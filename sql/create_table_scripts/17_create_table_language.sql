--
-- TOC entry 229 (class 1259 OID 16463)
-- Name: Language; Type: TABLE; Schema: public; Owner: iu
--

CREATE TABLE public."Language" (
    id integer NOT NULL,
    language_name character varying(100) NOT NULL
);


ALTER TABLE public."Language" OWNER TO iu;

--
-- TOC entry 3747 (class 0 OID 0)
-- Dependencies: 229
-- Name: TABLE "Language"; Type: COMMENT; Schema: public; Owner: iu
--

COMMENT ON TABLE public."Language" IS 'Languages';


--
-- TOC entry 3748 (class 0 OID 0)
-- Dependencies: 229
-- Name: COLUMN "Language".id; Type: COMMENT; Schema: public; Owner: iu
--

COMMENT ON COLUMN public."Language".id IS 'PK';


--
-- TOC entry 3749 (class 0 OID 0)
-- Dependencies: 229
-- Name: COLUMN "Language".language_name; Type: COMMENT; Schema: public; Owner: iu
--

COMMENT ON COLUMN public."Language".language_name IS 'Name of Language';


--
-- TOC entry 228 (class 1259 OID 16462)
-- Name: Language_id_seq; Type: SEQUENCE; Schema: public; Owner: iu
--

ALTER TABLE public."Language" ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public."Language_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
