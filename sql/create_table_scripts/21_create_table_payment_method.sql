--
-- TOC entry 235 (class 1259 OID 16487)
-- Name: Payment Method; Type: TABLE; Schema: public; Owner: iu
--

CREATE TABLE public."Payment Method" (
    id integer NOT NULL,
    payment_account character varying(255) NOT NULL,
    available boolean DEFAULT false NOT NULL,
    name_id integer NOT NULL
);


ALTER TABLE public."Payment Method" OWNER TO iu;

--
-- TOC entry 3774 (class 0 OID 0)
-- Dependencies: 235
-- Name: TABLE "Payment Method"; Type: COMMENT; Schema: public; Owner: iu
--

COMMENT ON TABLE public."Payment Method" IS 'Ways to pay for a booking payment';


--
-- TOC entry 3775 (class 0 OID 0)
-- Dependencies: 235
-- Name: COLUMN "Payment Method".id; Type: COMMENT; Schema: public; Owner: iu
--

COMMENT ON COLUMN public."Payment Method".id IS 'PK';


--
-- TOC entry 3776 (class 0 OID 0)
-- Dependencies: 235
-- Name: COLUMN "Payment Method".payment_account; Type: COMMENT; Schema: public; Owner: iu
--

COMMENT ON COLUMN public."Payment Method".payment_account IS 'The payment account of the service that will receive the currency';


--
-- TOC entry 3777 (class 0 OID 0)
-- Dependencies: 235
-- Name: COLUMN "Payment Method".available; Type: COMMENT; Schema: public; Owner: iu
--

COMMENT ON COLUMN public."Payment Method".available IS 'Availability of the Payment Method';


--
-- TOC entry 3778 (class 0 OID 0)
-- Dependencies: 235
-- Name: COLUMN "Payment Method".name_id; Type: COMMENT; Schema: public; Owner: iu
--

COMMENT ON COLUMN public."Payment Method".name_id IS 'FK - Payment Method Name ID';

--
-- TOC entry 234 (class 1259 OID 16486)
-- Name: Payment Method_id_seq; Type: SEQUENCE; Schema: public; Owner: iu
--

ALTER TABLE public."Payment Method" ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public."Payment Method_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
