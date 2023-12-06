--
-- TOC entry 258 (class 1259 OID 16595)
-- Name: Preferences Property Type; Type: TABLE; Schema: public; Owner: iu
--

CREATE TABLE public."Preferences Property Type" (
    preferences_id integer NOT NULL,
    property_type_id integer NOT NULL
);


ALTER TABLE public."Preferences Property Type" OWNER TO iu;

--
-- TOC entry 3799 (class 0 OID 0)
-- Dependencies: 258
-- Name: TABLE "Preferences Property Type"; Type: COMMENT; Schema: public; Owner: iu
--

COMMENT ON TABLE public."Preferences Property Type" IS 'Many-to-many between Preferences and Property Type';


--
-- TOC entry 3800 (class 0 OID 0)
-- Dependencies: 258
-- Name: COLUMN "Preferences Property Type".preferences_id; Type: COMMENT; Schema: public; Owner: iu
--

COMMENT ON COLUMN public."Preferences Property Type".preferences_id IS 'FK - Preferences ID';


--
-- TOC entry 3801 (class 0 OID 0)
-- Dependencies: 258
-- Name: COLUMN "Preferences Property Type".property_type_id; Type: COMMENT; Schema: public; Owner: iu
--

COMMENT ON COLUMN public."Preferences Property Type".property_type_id IS 'FK - Property Type ID';
