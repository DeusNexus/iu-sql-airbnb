--
-- TOC entry 3383 (class 2604 OID 16860)
-- Name: Access Level id; Type: DEFAULT; Schema: public; Owner: iu
--

ALTER TABLE ONLY public."Access Level" ALTER COLUMN id SET DEFAULT nextval('public."Access Level_id_seq"'::regclass);
