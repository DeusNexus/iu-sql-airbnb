--
-- TOC entry 3384 (class 2604 OID 16876)
-- Name: Admin admin_id; Type: DEFAULT; Schema: public; Owner: iu
--

ALTER TABLE ONLY public."Admin" ALTER COLUMN admin_id SET DEFAULT nextval('public.admin_admin_id_seq'::regclass);
