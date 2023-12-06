--
-- TOC entry 239 (class 1259 OID 16502)
-- Name: Preferences; Type: TABLE; Schema: public; Owner: iu
--

CREATE TABLE public."Preferences" (
    id integer NOT NULL,
    language integer,
    allow_promotional_contact boolean DEFAULT true NOT NULL,
    price_range_min integer,
    price_range_max integer,
    night_mode boolean DEFAULT false NOT NULL
);


ALTER TABLE public."Preferences" OWNER TO iu;

--
-- TOC entry 3786 (class 0 OID 0)
-- Dependencies: 239
-- Name: TABLE "Preferences"; Type: COMMENT; Schema: public; Owner: iu
--

COMMENT ON TABLE public."Preferences" IS 'Guest preferences when selecting / filtering for properties, service interactions, etc.';


--
-- TOC entry 3787 (class 0 OID 0)
-- Dependencies: 239
-- Name: COLUMN "Preferences".id; Type: COMMENT; Schema: public; Owner: iu
--

COMMENT ON COLUMN public."Preferences".id IS 'PK';


--
-- TOC entry 3788 (class 0 OID 0)
-- Dependencies: 239
-- Name: COLUMN "Preferences".language; Type: COMMENT; Schema: public; Owner: iu
--

COMMENT ON COLUMN public."Preferences".language IS 'Service language';


--
-- TOC entry 3789 (class 0 OID 0)
-- Dependencies: 239
-- Name: COLUMN "Preferences".allow_promotional_contact; Type: COMMENT; Schema: public; Owner: iu
--

COMMENT ON COLUMN public."Preferences".allow_promotional_contact IS 'Permission to contact user';


--
-- TOC entry 3790 (class 0 OID 0)
-- Dependencies: 239
-- Name: COLUMN "Preferences".price_range_min; Type: COMMENT; Schema: public; Owner: iu
--

COMMENT ON COLUMN public."Preferences".price_range_min IS 'Specified min price range by Guest';


--
-- TOC entry 3791 (class 0 OID 0)
-- Dependencies: 239
-- Name: COLUMN "Preferences".price_range_max; Type: COMMENT; Schema: public; Owner: iu
--

COMMENT ON COLUMN public."Preferences".price_range_max IS 'Specified max price range by Guest';


--
-- TOC entry 3792 (class 0 OID 0)
-- Dependencies: 239
-- Name: COLUMN "Preferences".night_mode; Type: COMMENT; Schema: public; Owner: iu
--

COMMENT ON COLUMN public."Preferences".night_mode IS 'Night mode on or off';

--
-- TOC entry 238 (class 1259 OID 16501)
-- Name: Preferences_id_seq; Type: SEQUENCE; Schema: public; Owner: iu
--

ALTER TABLE public."Preferences" ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public."Preferences_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);

