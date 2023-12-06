--
-- TOC entry 251 (class 1259 OID 16557)
-- Name: User Type; Type: TABLE; Schema: public; Owner: iu
--

CREATE TABLE public."User Type" (
    id integer NOT NULL,
    name character varying(25) NOT NULL
);


ALTER TABLE public."User Type" OWNER TO iu;

--
-- TOC entry 3866 (class 0 OID 0)
-- Dependencies: 251
-- Name: TABLE "User Type"; Type: COMMENT; Schema: public; Owner: iu
--

COMMENT ON TABLE public."User Type" IS 'Type of User (Host, Guest, Admin, etc.)';


--
-- TOC entry 3867 (class 0 OID 0)
-- Dependencies: 251
-- Name: COLUMN "User Type".id; Type: COMMENT; Schema: public; Owner: iu
--

COMMENT ON COLUMN public."User Type".id IS 'PK';


--
-- TOC entry 250 (class 1259 OID 16556)
-- Name: User Type_id_seq; Type: SEQUENCE; Schema: public; Owner: iu
--

ALTER TABLE public."User Type" ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public."User Type_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
