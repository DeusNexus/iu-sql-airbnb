--
-- TOC entry 253 (class 1259 OID 16563)
-- Name: Media; Type: TABLE; Schema: public; Owner: iu
--

CREATE TABLE public."Media" (
    id integer NOT NULL,
    owner integer NOT NULL,
    file_name character varying(255) NOT NULL,
    file_location character varying(255) NOT NULL,
    created_on timestamp with time zone NOT NULL
);


ALTER TABLE public."Media" OWNER TO iu;

--
-- TOC entry 3750 (class 0 OID 0)
-- Dependencies: 253
-- Name: TABLE "Media"; Type: COMMENT; Schema: public; Owner: iu
--

COMMENT ON TABLE public."Media" IS 'File locations of Media';


--
-- TOC entry 3751 (class 0 OID 0)
-- Dependencies: 253
-- Name: COLUMN "Media".id; Type: COMMENT; Schema: public; Owner: iu
--

COMMENT ON COLUMN public."Media".id IS 'PK';


--
-- TOC entry 3752 (class 0 OID 0)
-- Dependencies: 253
-- Name: COLUMN "Media".owner; Type: COMMENT; Schema: public; Owner: iu
--

COMMENT ON COLUMN public."Media".owner IS 'Media owner';


--
-- TOC entry 3753 (class 0 OID 0)
-- Dependencies: 253
-- Name: COLUMN "Media".file_name; Type: COMMENT; Schema: public; Owner: iu
--

COMMENT ON COLUMN public."Media".file_name IS 'File Name';


--
-- TOC entry 3754 (class 0 OID 0)
-- Dependencies: 253
-- Name: COLUMN "Media".file_location; Type: COMMENT; Schema: public; Owner: iu
--

COMMENT ON COLUMN public."Media".file_location IS 'Location where File is saved';


--
-- TOC entry 3755 (class 0 OID 0)
-- Dependencies: 253
-- Name: COLUMN "Media".created_on; Type: COMMENT; Schema: public; Owner: iu
--

COMMENT ON COLUMN public."Media".created_on IS 'Creation timestamp';


--
-- TOC entry 252 (class 1259 OID 16562)
-- Name: Media_id_seq; Type: SEQUENCE; Schema: public; Owner: iu
--

ALTER TABLE public."Media" ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public."Media_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
