--
-- TOC entry 237 (class 1259 OID 16494)
-- Name: Payment Status; Type: TABLE; Schema: public; Owner: iu
--

CREATE TABLE public."Payment Status" (
    id integer NOT NULL,
    status character varying(25) NOT NULL,
    info text
);


ALTER TABLE public."Payment Status" OWNER TO iu;

--
-- TOC entry 3782 (class 0 OID 0)
-- Dependencies: 237
-- Name: TABLE "Payment Status"; Type: COMMENT; Schema: public; Owner: iu
--

COMMENT ON TABLE public."Payment Status" IS 'All available payment status';


--
-- TOC entry 3783 (class 0 OID 0)
-- Dependencies: 237
-- Name: COLUMN "Payment Status".id; Type: COMMENT; Schema: public; Owner: iu
--

COMMENT ON COLUMN public."Payment Status".id IS 'PK';


--
-- TOC entry 3784 (class 0 OID 0)
-- Dependencies: 237
-- Name: COLUMN "Payment Status".status; Type: COMMENT; Schema: public; Owner: iu
--

COMMENT ON COLUMN public."Payment Status".status IS 'Payment status';


--
-- TOC entry 3785 (class 0 OID 0)
-- Dependencies: 237
-- Name: COLUMN "Payment Status".info; Type: COMMENT; Schema: public; Owner: iu
--

COMMENT ON COLUMN public."Payment Status".info IS 'Information about the status';


--
-- TOC entry 236 (class 1259 OID 16493)
-- Name: Payment Status_id_seq; Type: SEQUENCE; Schema: public; Owner: iu
--

ALTER TABLE public."Payment Status" ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public."Payment Status_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
