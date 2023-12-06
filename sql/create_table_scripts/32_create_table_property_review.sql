--
-- TOC entry 255 (class 1259 OID 16580)
-- Name: Property Review; Type: TABLE; Schema: public; Owner: iu
--

CREATE TABLE public."Property Review" (
    property_id integer NOT NULL,
    review_id integer NOT NULL
);


ALTER TABLE public."Property Review" OWNER TO iu;

--
-- TOC entry 3833 (class 0 OID 0)
-- Dependencies: 255
-- Name: TABLE "Property Review"; Type: COMMENT; Schema: public; Owner: iu
--

COMMENT ON TABLE public."Property Review" IS 'Many-to-Many Property to Review';


--
-- TOC entry 3834 (class 0 OID 0)
-- Dependencies: 255
-- Name: COLUMN "Property Review".property_id; Type: COMMENT; Schema: public; Owner: iu
--

COMMENT ON COLUMN public."Property Review".property_id IS 'FK - Property ID';


--
-- TOC entry 3835 (class 0 OID 0)
-- Dependencies: 255
-- Name: COLUMN "Property Review".review_id; Type: COMMENT; Schema: public; Owner: iu
--

COMMENT ON COLUMN public."Property Review".review_id IS 'FK - Review ID';
