--
-- TOC entry 271 (class 1259 OID 17018)
-- Name: Payment Method Name; Type: TABLE; Schema: public; Owner: iu
--

CREATE TABLE public."Payment Method Name" (
    id integer NOT NULL,
    payment_name character varying(50)
);


ALTER TABLE public."Payment Method Name" OWNER TO iu;

--
-- TOC entry 3779 (class 0 OID 0)
-- Dependencies: 271
-- Name: TABLE "Payment Method Name"; Type: COMMENT; Schema: public; Owner: iu
--

COMMENT ON TABLE public."Payment Method Name" IS 'Available Payment Method names';


--
-- TOC entry 3780 (class 0 OID 0)
-- Dependencies: 271
-- Name: COLUMN "Payment Method Name".id; Type: COMMENT; Schema: public; Owner: iu
--

COMMENT ON COLUMN public."Payment Method Name".id IS 'Payment Method Name ID';


--
-- TOC entry 3781 (class 0 OID 0)
-- Dependencies: 271
-- Name: COLUMN "Payment Method Name".payment_name; Type: COMMENT; Schema: public; Owner: iu
--

COMMENT ON COLUMN public."Payment Method Name".payment_name IS 'Name of Payment Method';


--
-- TOC entry 270 (class 1259 OID 17017)
-- Name: Payment Method Name_id_seq; Type: SEQUENCE; Schema: public; Owner: iu
--

ALTER TABLE public."Payment Method Name" ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public."Payment Method Name_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
