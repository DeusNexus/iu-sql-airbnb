--
-- TOC entry 233 (class 1259 OID 16479)
-- Name: Payment; Type: TABLE; Schema: public; Owner: iu
--

CREATE TABLE public."Payment" (
    id integer NOT NULL,
    booking_id integer NOT NULL,
    payment_status_id integer NOT NULL,
    payment_method_id integer NOT NULL,
    paid_total double precision DEFAULT 0 NOT NULL,
    refund_total double precision DEFAULT 0 NOT NULL,
    paid_full_on timestamp with time zone,
    due_on timestamp with time zone NOT NULL,
    created_on timestamp with time zone NOT NULL
);


ALTER TABLE public."Payment" OWNER TO iu;

--
-- TOC entry 3764 (class 0 OID 0)
-- Dependencies: 233
-- Name: TABLE "Payment"; Type: COMMENT; Schema: public; Owner: iu
--

COMMENT ON TABLE public."Payment" IS 'Payment data when bookings are made';


--
-- TOC entry 3765 (class 0 OID 0)
-- Dependencies: 233
-- Name: COLUMN "Payment".id; Type: COMMENT; Schema: public; Owner: iu
--

COMMENT ON COLUMN public."Payment".id IS 'PK';


--
-- TOC entry 3766 (class 0 OID 0)
-- Dependencies: 233
-- Name: COLUMN "Payment".booking_id; Type: COMMENT; Schema: public; Owner: iu
--

COMMENT ON COLUMN public."Payment".booking_id IS 'Reference to the Booking';


--
-- TOC entry 3767 (class 0 OID 0)
-- Dependencies: 233
-- Name: COLUMN "Payment".payment_status_id; Type: COMMENT; Schema: public; Owner: iu
--

COMMENT ON COLUMN public."Payment".payment_status_id IS 'Payment status';


--
-- TOC entry 3768 (class 0 OID 0)
-- Dependencies: 233
-- Name: COLUMN "Payment".payment_method_id; Type: COMMENT; Schema: public; Owner: iu
--

COMMENT ON COLUMN public."Payment".payment_method_id IS 'Method of Payment';


--
-- TOC entry 3769 (class 0 OID 0)
-- Dependencies: 233
-- Name: COLUMN "Payment".paid_total; Type: COMMENT; Schema: public; Owner: iu
--

COMMENT ON COLUMN public."Payment".paid_total IS 'Total amount paid';


--
-- TOC entry 3770 (class 0 OID 0)
-- Dependencies: 233
-- Name: COLUMN "Payment".refund_total; Type: COMMENT; Schema: public; Owner: iu
--

COMMENT ON COLUMN public."Payment".refund_total IS 'Refunded total amount';


--
-- TOC entry 3771 (class 0 OID 0)
-- Dependencies: 233
-- Name: COLUMN "Payment".paid_full_on; Type: COMMENT; Schema: public; Owner: iu
--

COMMENT ON COLUMN public."Payment".paid_full_on IS 'Timestamp when payment was paid in full';


--
-- TOC entry 3772 (class 0 OID 0)
-- Dependencies: 233
-- Name: COLUMN "Payment".due_on; Type: COMMENT; Schema: public; Owner: iu
--

COMMENT ON COLUMN public."Payment".due_on IS 'Timestamp before the Payment should be paid in full';


--
-- TOC entry 3773 (class 0 OID 0)
-- Dependencies: 233
-- Name: COLUMN "Payment".created_on; Type: COMMENT; Schema: public; Owner: iu
--

COMMENT ON COLUMN public."Payment".created_on IS 'Data payment was created';

--
-- TOC entry 232 (class 1259 OID 16478)
-- Name: Payment_id_seq; Type: SEQUENCE; Schema: public; Owner: iu
--

ALTER TABLE public."Payment" ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public."Payment_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
