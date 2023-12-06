--
-- TOC entry 244 (class 1259 OID 16527)
-- Name: Property Type; Type: TABLE; Schema: public; Owner: iu
--

CREATE TABLE public."Property Type" (
    id integer NOT NULL,
    type_name character varying(50) NOT NULL,
    description text NOT NULL
);


ALTER TABLE public."Property Type" OWNER TO iu;

--
-- TOC entry 3836 (class 0 OID 0)
-- Dependencies: 244
-- Name: TABLE "Property Type"; Type: COMMENT; Schema: public; Owner: iu
--

COMMENT ON TABLE public."Property Type" IS 'Types of available Properties';


--
-- TOC entry 3837 (class 0 OID 0)
-- Dependencies: 244
-- Name: COLUMN "Property Type".id; Type: COMMENT; Schema: public; Owner: iu
--

COMMENT ON COLUMN public."Property Type".id IS 'PK';


--
-- TOC entry 3838 (class 0 OID 0)
-- Dependencies: 244
-- Name: COLUMN "Property Type".type_name; Type: COMMENT; Schema: public; Owner: iu
--

COMMENT ON COLUMN public."Property Type".type_name IS 'Name of the Propery Type';


--
-- TOC entry 3839 (class 0 OID 0)
-- Dependencies: 244
-- Name: COLUMN "Property Type".description; Type: COMMENT; Schema: public; Owner: iu
--

COMMENT ON COLUMN public."Property Type".description IS 'General description of what the type consists of';


--
-- TOC entry 259 (class 1259 OID 16846)
-- Name: Property Type_id_seq; Type: SEQUENCE; Schema: public; Owner: iu
--

ALTER TABLE public."Property Type" ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public."Property Type_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
