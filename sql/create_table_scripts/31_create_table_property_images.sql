--
-- TOC entry 267 (class 1259 OID 16972)
-- Name: Property Images; Type: TABLE; Schema: public; Owner: iu
--

CREATE TABLE public."Property Images" (
    property_id integer NOT NULL,
    media_id integer NOT NULL
);


ALTER TABLE public."Property Images" OWNER TO iu;

--
-- TOC entry 3832 (class 0 OID 0)
-- Dependencies: 267
-- Name: TABLE "Property Images"; Type: COMMENT; Schema: public; Owner: iu
--

COMMENT ON TABLE public."Property Images" IS 'Property Images';
