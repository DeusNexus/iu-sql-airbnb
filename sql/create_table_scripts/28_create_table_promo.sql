--
-- TOC entry 241 (class 1259 OID 16510)
-- Name: Promo; Type: TABLE; Schema: public; Owner: iu
--

CREATE TABLE public."Promo" (
    id integer NOT NULL,
    promo_code character varying(50) NOT NULL,
    expiry_date date NOT NULL,
    discount_percentage double precision DEFAULT 0,
    discount_abs_value double precision DEFAULT 0 NOT NULL
);


ALTER TABLE public."Promo" OWNER TO iu;

--
-- TOC entry 3802 (class 0 OID 0)
-- Dependencies: 241
-- Name: TABLE "Promo"; Type: COMMENT; Schema: public; Owner: iu
--

COMMENT ON TABLE public."Promo" IS 'Promotional deals and discounts';


--
-- TOC entry 3803 (class 0 OID 0)
-- Dependencies: 241
-- Name: COLUMN "Promo".id; Type: COMMENT; Schema: public; Owner: iu
--

COMMENT ON COLUMN public."Promo".id IS 'PK - Promo ID';


--
-- TOC entry 3804 (class 0 OID 0)
-- Dependencies: 241
-- Name: COLUMN "Promo".promo_code; Type: COMMENT; Schema: public; Owner: iu
--

COMMENT ON COLUMN public."Promo".promo_code IS 'Promotional code';


--
-- TOC entry 3805 (class 0 OID 0)
-- Dependencies: 241
-- Name: COLUMN "Promo".expiry_date; Type: COMMENT; Schema: public; Owner: iu
--

COMMENT ON COLUMN public."Promo".expiry_date IS 'Date when promotion is no longer valid';


--
-- TOC entry 3806 (class 0 OID 0)
-- Dependencies: 241
-- Name: COLUMN "Promo".discount_percentage; Type: COMMENT; Schema: public; Owner: iu
--

COMMENT ON COLUMN public."Promo".discount_percentage IS 'Amount of percentage off';


--
-- TOC entry 3807 (class 0 OID 0)
-- Dependencies: 241
-- Name: COLUMN "Promo".discount_abs_value; Type: COMMENT; Schema: public; Owner: iu
--

COMMENT ON COLUMN public."Promo".discount_abs_value IS 'Total absolute value discounted in USD';


--
-- TOC entry 240 (class 1259 OID 16509)
-- Name: Promo_id_seq; Type: SEQUENCE; Schema: public; Owner: iu
--

ALTER TABLE public."Promo" ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public."Promo_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);

