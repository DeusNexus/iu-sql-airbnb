--
-- TOC entry 221 (class 1259 OID 16429)
-- Name: Booking; Type: TABLE; Schema: public; Owner: iu
--

CREATE TABLE public."Booking" (
    id integer NOT NULL,
    guest_id integer NOT NULL,
    host_id integer NOT NULL,
    property_id integer NOT NULL,
    chat_id integer,
    payment_id integer,
    review_id integer,
    promo_id integer,
    is_active boolean DEFAULT false NOT NULL,
    is_cancelled boolean DEFAULT false NOT NULL,
    booking_price double precision DEFAULT 0 NOT NULL,
    daily_rate double precision NOT NULL,
    num_of_days integer NOT NULL,
    commission_host double precision DEFAULT 0 NOT NULL,
    timestamp_checkin timestamp with time zone NOT NULL,
    timestamp_checkout timestamp with time zone NOT NULL,
    created_on timestamp with time zone NOT NULL
);


ALTER TABLE public."Booking" OWNER TO iu;

--
-- TOC entry 3719 (class 0 OID 0)
-- Dependencies: 221
-- Name: TABLE "Booking"; Type: COMMENT; Schema: public; Owner: iu
--

COMMENT ON TABLE public."Booking" IS 'Bookings made by Guests';


--
-- TOC entry 3720 (class 0 OID 0)
-- Dependencies: 221
-- Name: COLUMN "Booking".id; Type: COMMENT; Schema: public; Owner: iu
--

COMMENT ON COLUMN public."Booking".id IS 'PK';


--
-- TOC entry 3721 (class 0 OID 0)
-- Dependencies: 221
-- Name: COLUMN "Booking".guest_id; Type: COMMENT; Schema: public; Owner: iu
--

COMMENT ON COLUMN public."Booking".guest_id IS 'Guest booking the property';


--
-- TOC entry 3722 (class 0 OID 0)
-- Dependencies: 221
-- Name: COLUMN "Booking".host_id; Type: COMMENT; Schema: public; Owner: iu
--

COMMENT ON COLUMN public."Booking".host_id IS 'Host that will faciliate booking';


--
-- TOC entry 3723 (class 0 OID 0)
-- Dependencies: 221
-- Name: COLUMN "Booking".property_id; Type: COMMENT; Schema: public; Owner: iu
--

COMMENT ON COLUMN public."Booking".property_id IS 'The property that is booked';


--
-- TOC entry 3724 (class 0 OID 0)
-- Dependencies: 221
-- Name: COLUMN "Booking".chat_id; Type: COMMENT; Schema: public; Owner: iu
--

COMMENT ON COLUMN public."Booking".chat_id IS 'Reference to the chat session between host and guest';


--
-- TOC entry 3725 (class 0 OID 0)
-- Dependencies: 221
-- Name: COLUMN "Booking".payment_id; Type: COMMENT; Schema: public; Owner: iu
--

COMMENT ON COLUMN public."Booking".payment_id IS 'Reference to Payment';


--
-- TOC entry 3726 (class 0 OID 0)
-- Dependencies: 221
-- Name: COLUMN "Booking".review_id; Type: COMMENT; Schema: public; Owner: iu
--

COMMENT ON COLUMN public."Booking".review_id IS 'Reference to Rating after Booking is completed, contains rating from Guest for Property & Host and rating from Host for Guest.';


--
-- TOC entry 3727 (class 0 OID 0)
-- Dependencies: 221
-- Name: COLUMN "Booking".promo_id; Type: COMMENT; Schema: public; Owner: iu
--

COMMENT ON COLUMN public."Booking".promo_id IS 'FK - Promo used for Booking';


--
-- TOC entry 3728 (class 0 OID 0)
-- Dependencies: 221
-- Name: COLUMN "Booking".is_active; Type: COMMENT; Schema: public; Owner: iu
--

COMMENT ON COLUMN public."Booking".is_active IS 'Whether the booking is still on-going (not cancelled or past check-out date).';


--
-- TOC entry 3729 (class 0 OID 0)
-- Dependencies: 221
-- Name: COLUMN "Booking".is_cancelled; Type: COMMENT; Schema: public; Owner: iu
--

COMMENT ON COLUMN public."Booking".is_cancelled IS 'If Booking got cancelled or not';


--
-- TOC entry 3730 (class 0 OID 0)
-- Dependencies: 221
-- Name: COLUMN "Booking".booking_price; Type: COMMENT; Schema: public; Owner: iu
--

COMMENT ON COLUMN public."Booking".booking_price IS 'Price of booking for Guest';


--
-- TOC entry 3731 (class 0 OID 0)
-- Dependencies: 221
-- Name: COLUMN "Booking".daily_rate; Type: COMMENT; Schema: public; Owner: iu
--

COMMENT ON COLUMN public."Booking".daily_rate IS 'Price per day';


--
-- TOC entry 3732 (class 0 OID 0)
-- Dependencies: 221
-- Name: COLUMN "Booking".num_of_days; Type: COMMENT; Schema: public; Owner: iu
--

COMMENT ON COLUMN public."Booking".num_of_days IS 'Number of Days Booked';


--
-- TOC entry 3733 (class 0 OID 0)
-- Dependencies: 221
-- Name: COLUMN "Booking".commission_host; Type: COMMENT; Schema: public; Owner: iu
--

COMMENT ON COLUMN public."Booking".commission_host IS 'Commission that Host pays for service';


--
-- TOC entry 3734 (class 0 OID 0)
-- Dependencies: 221
-- Name: COLUMN "Booking".timestamp_checkin; Type: COMMENT; Schema: public; Owner: iu
--

COMMENT ON COLUMN public."Booking".timestamp_checkin IS 'Checkin timestamp';


--
-- TOC entry 3735 (class 0 OID 0)
-- Dependencies: 221
-- Name: COLUMN "Booking".timestamp_checkout; Type: COMMENT; Schema: public; Owner: iu
--

COMMENT ON COLUMN public."Booking".timestamp_checkout IS 'Checkout timestamp';


--
-- TOC entry 3736 (class 0 OID 0)
-- Dependencies: 221
-- Name: COLUMN "Booking".created_on; Type: COMMENT; Schema: public; Owner: iu
--

COMMENT ON COLUMN public."Booking".created_on IS 'Timestamp Booking was created';

--
-- TOC entry 220 (class 1259 OID 16428)
-- Name: Booking_id_seq; Type: SEQUENCE; Schema: public; Owner: iu
--

ALTER TABLE public."Booking" ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public."Booking_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);

