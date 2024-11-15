COPY customers (id, first_name, last_name, email, phone) FROM stdin;
1	John	Doe	johndoe1@test.com	555-555-0101
2	Jane	Smith	janesmith2@test.com	555-555-0102
3	Michael	Johnson	mjohnson3@test.com	555-555-0103
4	Emily	Davis	edavis4@test.com	555-555-0104
5	David	Brown	dbrown5@test.com	555-555-0105
6	Sarah	Wilson	swilson6@test.com	555-555-0106
7	Chris	Moore	cmoore7@test.com	555-555-0107
8	Jessica	Taylor	jtaylor8@test.com	555-555-0108
9	Daniel	Anderson	danderson9@test.com	555-555-0109
10	Laura	Thomas	lthomas10@test.com	555-555-0110
\.


COPY time_slots (id, date, start_time, end_time) FROM stdin;
1	2024-11-15	08:00:00	08:30:00
2	2024-11-15	08:30:00	09:00:00
3	2024-11-15	09:00:00	09:30:00
4	2024-11-15	09:30:00	10:00:00
5	2024-11-15	10:00:00	10:30:00
6	2024-11-15	10:30:00	11:00:00
7	2024-11-15	11:00:00	11:30:00
8	2024-11-15	11:30:00	12:00:00
9	2024-11-18	08:00:00	08:30:00
10	2024-11-18	08:30:00	09:00:00
11	2024-11-18	09:00:00	09:30:00
12	2024-11-18	09:30:00	10:00:00
13	2024-11-18	10:00:00	10:30:00
14	2024-11-18	10:30:00	11:00:00
15	2024-11-18	11:00:00	11:30:00
16	2024-11-18	11:30:00	12:00:00
17	2024-11-18	13:00:00	13:30:00
18	2024-11-18	13:30:00	14:00:00
19	2024-11-18	14:00:00	14:30:00
20	2024-11-18	14:30:00	15:00:00
21	2024-11-18	15:00:00	15:30:00
22	2024-11-18	15:30:00	16:00:00
23	2024-11-18	16:00:00	16:30:00
24	2024-11-18	16:30:00	17:00:00
25	2024-11-19	08:00:00	08:30:00
26	2024-11-19	08:30:00	09:00:00
27	2024-11-19	09:00:00	09:30:00
28	2024-11-19	09:30:00	10:00:00
29	2024-11-19	10:00:00	10:30:00
30	2024-11-19	10:30:00	11:00:00
31	2024-11-19	11:00:00	11:30:00
32	2024-11-19	11:30:00	12:00:00
33	2024-11-19	13:00:00	13:30:00
34	2024-11-19	13:30:00	14:00:00
35	2024-11-19	14:00:00	14:30:00
36	2024-11-19	14:30:00	15:00:00
37	2024-11-19	15:00:00	15:30:00
38	2024-11-19	15:30:00	16:00:00
39	2024-11-19	16:00:00	16:30:00
40	2024-11-19	16:30:00	17:00:00
41	2024-11-20	08:00:00	08:30:00
42	2024-11-20	08:30:00	09:00:00
43	2024-11-20	09:00:00	09:30:00
44	2024-11-20	09:30:00	10:00:00
45	2024-11-20	10:00:00	10:30:00
46	2024-11-20	10:30:00	11:00:00
47	2024-11-20	11:00:00	11:30:00
48	2024-11-20	11:30:00	12:00:00
49	2024-11-20	13:00:00	13:30:00
50	2024-11-20	13:30:00	14:00:00
51	2024-11-20	14:00:00	14:30:00
52	2024-11-20	14:30:00	15:00:00
53	2024-11-20	15:00:00	15:30:00
54	2024-11-20	15:30:00	16:00:00
55	2024-11-20	16:00:00	16:30:00
56	2024-11-20	16:30:00	17:00:00
57	2024-11-21	08:00:00	08:30:00
58	2024-11-21	08:30:00	09:00:00
59	2024-11-21	09:00:00	09:30:00
60	2024-11-21	09:30:00	10:00:00
61	2024-11-21	10:00:00	10:30:00
62	2024-11-21	10:30:00	11:00:00
63	2024-11-21	11:00:00	11:30:00
64	2024-11-21	11:30:00	12:00:00
65	2024-11-21	13:00:00	13:30:00
66	2024-11-21	13:30:00	14:00:00
67	2024-11-21	14:00:00	14:30:00
68	2024-11-21	14:30:00	15:00:00
69	2024-11-21	15:00:00	15:30:00
70	2024-11-21	15:30:00	16:00:00
71	2024-11-21	16:00:00	16:30:00
72	2024-11-21	16:30:00	17:00:00
73	2024-11-22	08:00:00	08:30:00
74	2024-11-22	08:30:00	09:00:00
75	2024-11-22	09:00:00	09:30:00
76	2024-11-22	09:30:00	10:00:00
77	2024-11-22	10:00:00	10:30:00
78	2024-11-22	10:30:00	11:00:00
79	2024-11-22	11:00:00	11:30:00
80	2024-11-22	11:30:00	12:00:00
81	2024-11-25	08:00:00	08:30:00
82	2024-11-25	08:30:00	09:00:00
83	2024-11-25	09:00:00	09:30:00
84	2024-11-25	09:30:00	10:00:00
85	2024-11-25	10:00:00	10:30:00
86	2024-11-25	10:30:00	11:00:00
87	2024-11-25	11:00:00	11:30:00
88	2024-11-25	11:30:00	12:00:00
89	2024-11-25	13:00:00	13:30:00
90	2024-11-25	13:30:00	14:00:00
91	2024-11-25	14:00:00	14:30:00
92	2024-11-25	14:30:00	15:00:00
93	2024-11-25	15:00:00	15:30:00
94	2024-11-25	15:30:00	16:00:00
95	2024-11-25	16:00:00	16:30:00
96	2024-11-25	16:30:00	17:00:00
97	2024-11-26	08:00:00	08:30:00
98	2024-11-26	08:30:00	09:00:00
99	2024-11-26	09:00:00	09:30:00
100	2024-11-26	09:30:00	10:00:00
101	2024-11-26	10:00:00	10:30:00
102	2024-11-26	10:30:00	11:00:00
103	2024-11-26	11:00:00	11:30:00
104	2024-11-26	11:30:00	12:00:00
105	2024-11-26	13:00:00	13:30:00
106	2024-11-26	13:30:00	14:00:00
107	2024-11-26	14:00:00	14:30:00
108	2024-11-26	14:30:00	15:00:00
109	2024-11-26	15:00:00	15:30:00
110	2024-11-26	15:30:00	16:00:00
111	2024-11-26	16:00:00	16:30:00
112	2024-11-26	16:30:00	17:00:00
113	2024-11-27	08:00:00	08:30:00
114	2024-11-27	08:30:00	09:00:00
115	2024-11-27	09:00:00	09:30:00
116	2024-11-27	09:30:00	10:00:00
117	2024-11-27	10:00:00	10:30:00
118	2024-11-27	10:30:00	11:00:00
119	2024-11-27	11:00:00	11:30:00
120	2024-11-27	11:30:00	12:00:00
121	2024-11-27	13:00:00	13:30:00
122	2024-11-27	13:30:00	14:00:00
123	2024-11-27	14:00:00	14:30:00
124	2024-11-27	14:30:00	15:00:00
125	2024-11-27	15:00:00	15:30:00
126	2024-11-27	15:30:00	16:00:00
127	2024-11-27	16:00:00	16:30:00
128	2024-11-27	16:30:00	17:00:00
129	2024-12-02	08:00:00	08:30:00
130	2024-12-02	08:30:00	09:00:00
131	2024-12-02	09:00:00	09:30:00
132	2024-12-02	09:30:00	10:00:00
133	2024-12-02	10:00:00	10:30:00
134	2024-12-02	10:30:00	11:00:00
135	2024-12-02	11:00:00	11:30:00
136	2024-12-02	11:30:00	12:00:00
137	2024-12-02	13:00:00	13:30:00
138	2024-12-02	13:30:00	14:00:00
139	2024-12-02	14:00:00	14:30:00
140	2024-12-02	14:30:00	15:00:00
141	2024-12-02	15:00:00	15:30:00
142	2024-12-02	15:30:00	16:00:00
143	2024-12-02	16:00:00	16:30:00
144	2024-12-02	16:30:00	17:00:00
145	2024-12-03	08:00:00	08:30:00
146	2024-12-03	08:30:00	09:00:00
147	2024-12-03	09:00:00	09:30:00
148	2024-12-03	09:30:00	10:00:00
149	2024-12-03	10:00:00	10:30:00
150	2024-12-03	10:30:00	11:00:00
151	2024-12-03	11:00:00	11:30:00
152	2024-12-03	11:30:00	12:00:00
153	2024-12-03	13:00:00	13:30:00
154	2024-12-03	13:30:00	14:00:00
155	2024-12-03	14:00:00	14:30:00
156	2024-12-03	14:30:00	15:00:00
157	2024-12-03	15:00:00	15:30:00
158	2024-12-03	15:30:00	16:00:00
159	2024-12-03	16:00:00	16:30:00
160	2024-12-03	16:30:00	17:00:00
161	2024-12-04	08:00:00	08:30:00
162	2024-12-04	08:30:00	09:00:00
163	2024-12-04	09:00:00	09:30:00
164	2024-12-04	09:30:00	10:00:00
165	2024-12-04	10:00:00	10:30:00
166	2024-12-04	10:30:00	11:00:00
167	2024-12-04	11:00:00	11:30:00
168	2024-12-04	11:30:00	12:00:00
169	2024-12-04	13:00:00	13:30:00
170	2024-12-04	13:30:00	14:00:00
171	2024-12-04	14:00:00	14:30:00
172	2024-12-04	14:30:00	15:00:00
173	2024-12-04	15:00:00	15:30:00
174	2024-12-04	15:30:00	16:00:00
175	2024-12-04	16:00:00	16:30:00
176	2024-12-04	16:30:00	17:00:00
177	2024-12-05	08:00:00	08:30:00
178	2024-12-05	08:30:00	09:00:00
179	2024-12-05	09:00:00	09:30:00
180	2024-12-05	09:30:00	10:00:00
181	2024-12-05	10:00:00	10:30:00
182	2024-12-05	10:30:00	11:00:00
183	2024-12-05	11:00:00	11:30:00
184	2024-12-05	11:30:00	12:00:00
185	2024-12-05	13:00:00	13:30:00
186	2024-12-05	13:30:00	14:00:00
187	2024-12-05	14:00:00	14:30:00
188	2024-12-05	14:30:00	15:00:00
189	2024-12-05	15:00:00	15:30:00
190	2024-12-05	15:30:00	16:00:00
191	2024-12-05	16:00:00	16:30:00
192	2024-12-05	16:30:00	17:00:00
193	2024-12-06	08:00:00	08:30:00
194	2024-12-06	08:30:00	09:00:00
195	2024-12-06	09:00:00	09:30:00
196	2024-12-06	09:30:00	10:00:00
197	2024-12-06	10:00:00	10:30:00
198	2024-12-06	10:30:00	11:00:00
199	2024-12-06	11:00:00	11:30:00
200	2024-12-06	11:30:00	12:00:00
\.

COPY appointments (id, customer_id, time_slot_id, note) FROM stdin;
1	1	5	Meet to talk about health plan
2	2	12	Follow up on diet plan
3	3	25	Discuss exercise routine
4	4	38	Evaluate wellness progress
5	5	50	Nutrition plan check-in
6	6	76	Review mental health strategies
7	7	102	Monthly health assessment
8	8	145	Reassess diet and nutrition
9	9	167	Plan next wellness steps
10	10	190	Discuss lifestyle improvements
\.

SELECT pg_catalog.setval('appointments_id_seq', 10, true);
SELECT pg_catalog.setval('customers_id_seq', 10, true);
SELECT pg_catalog.setval('time_slots_id_seq', 200, true);
