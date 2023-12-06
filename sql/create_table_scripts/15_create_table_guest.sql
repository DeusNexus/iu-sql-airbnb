--
-- TOC entry 225 (class 1259 OID 16451)
-- Name: Guest; Type: TABLE; Schema: public; Owner: iu
--

CREATE TABLE public."Guest" (
    id integer NOT NULL,
    preference_id integer
);


ALTER TABLE public."Guest" OWNER TO iu;

--
-- TOC entry 3742 (class 0 OID 0)
-- Dependencies: 225
-- Name: TABLE "Guest"; Type: COMMENT; Schema: public; Owner: iu
--

COMMENT ON TABLE public."Guest" IS 'A guest books properties';


--
-- TOC entry 3743 (class 0 OID 0)
-- Dependencies: 225
-- Name: COLUMN "Guest".id; Type: COMMENT; Schema: public; Owner: iu
--

COMMENT ON COLUMN public."Guest".id IS 'PK';


--
-- TOC entry 3744 (class 0 OID 0)
-- Dependencies: 225
-- Name: COLUMN "Guest".preference_id; Type: COMMENT; Schema: public; Owner: iu
--

COMMENT ON COLUMN public."Guest".preference_id IS 'FK';


--
-- TOC entry 224 (class 1259 OID 16450)
-- Name: Guest_id_seq; Type: SEQUENCE; Schema: public; Owner: iu
--

ALTER TABLE public."Guest" ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public."Guest_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);

