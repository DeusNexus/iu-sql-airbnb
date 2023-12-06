--
-- TOC entry 227 (class 1259 OID 16457)
-- Name: Host; Type: TABLE; Schema: public; Owner: iu
--

CREATE TABLE public."Host" (
    id integer NOT NULL
);


ALTER TABLE public."Host" OWNER TO iu;

--
-- TOC entry 3745 (class 0 OID 0)
-- Dependencies: 227
-- Name: TABLE "Host"; Type: COMMENT; Schema: public; Owner: iu
--

COMMENT ON TABLE public."Host" IS 'Provides properties to guests';


--
-- TOC entry 3746 (class 0 OID 0)
-- Dependencies: 227
-- Name: COLUMN "Host".id; Type: COMMENT; Schema: public; Owner: iu
--

COMMENT ON COLUMN public."Host".id IS 'PK';


--
-- TOC entry 226 (class 1259 OID 16456)
-- Name: Host_id_seq; Type: SEQUENCE; Schema: public; Owner: iu
--

ALTER TABLE public."Host" ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public."Host_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
