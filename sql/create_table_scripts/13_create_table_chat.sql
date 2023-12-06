--
-- TOC entry 269 (class 1259 OID 16992)
-- Name: Chat; Type: TABLE; Schema: public; Owner: iu
--

CREATE TABLE public."Chat" (
    id integer NOT NULL,
    host_id integer NOT NULL,
    guest_id integer NOT NULL
);


ALTER TABLE public."Chat" OWNER TO iu;

--
-- TOC entry 3737 (class 0 OID 0)
-- Dependencies: 269
-- Name: TABLE "Chat"; Type: COMMENT; Schema: public; Owner: iu
--

COMMENT ON TABLE public."Chat" IS 'Keeps track of chat between host and guest';

--
-- TOC entry 268 (class 1259 OID 16991)
-- Name: Chat_id_seq1; Type: SEQUENCE; Schema: public; Owner: iu
--

ALTER TABLE public."Chat" ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public."Chat_id_seq1"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
