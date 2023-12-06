--
-- TOC entry 215 (class 1259 OID 16408)
-- Name: Allowed Operations; Type: TABLE; Schema: public; Owner: iu
--

CREATE TABLE public."Allowed Operations" (
    id integer NOT NULL,
    operation character varying NOT NULL,
    description text NOT NULL
);


ALTER TABLE public."Allowed Operations" OWNER TO iu;

--
-- TOC entry 3708 (class 0 OID 0)
-- Dependencies: 215
-- Name: TABLE "Allowed Operations"; Type: COMMENT; Schema: public; Owner: iu
--

COMMENT ON TABLE public."Allowed Operations" IS 'Operations that can be executed on the database';


--
-- TOC entry 3709 (class 0 OID 0)
-- Dependencies: 215
-- Name: COLUMN "Allowed Operations".id; Type: COMMENT; Schema: public; Owner: iu
--

COMMENT ON COLUMN public."Allowed Operations".id IS 'PK';


--
-- TOC entry 3710 (class 0 OID 0)
-- Dependencies: 215
-- Name: COLUMN "Allowed Operations".operation; Type: COMMENT; Schema: public; Owner: iu
--

COMMENT ON COLUMN public."Allowed Operations".operation IS 'Operation on Database';


--
-- TOC entry 3711 (class 0 OID 0)
-- Dependencies: 215
-- Name: COLUMN "Allowed Operations".description; Type: COMMENT; Schema: public; Owner: iu
--

COMMENT ON COLUMN public."Allowed Operations".description IS 'Description of what the operation performs';


--
-- TOC entry 260 (class 1259 OID 16848)
-- Name: Allowed Operations_id_seq; Type: SEQUENCE; Schema: public; Owner: iu
--

ALTER TABLE public."Allowed Operations" ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public."Allowed Operations_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
