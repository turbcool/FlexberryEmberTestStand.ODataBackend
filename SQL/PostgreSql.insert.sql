--
-- PostgreSQL database dump
--

--
-- Data for Name: applicationuser; Type: TABLE DATA; Schema: public; Owner: flexberryuser
--

INSERT INTO public.applicationuser (primarykey, createtime, creator, edittime, editor, name, email, phone1, phone2, phone3, activated, vk, facebook, twitter, birthday, gender, vip, karma) VALUES ('01c157a0-aa74-411d-96d3-8f877dbab853', NULL, NULL, NULL, NULL, 'Пользователь', 'user@email', NULL, NULL, NULL, false, NULL, NULL, NULL, NULL, 'Male', false, 100);


--
-- Data for Name: suggestiontype; Type: TABLE DATA; Schema: public; Owner: flexberryuser
--

INSERT INTO public.suggestiontype (primarykey, createtime, creator, edittime, editor, name, moderated, parent) VALUES ('6c339922-91e2-4371-ae36-0d1fa9dba453', NULL, NULL, NULL, NULL, 'С этим надо что то делать', false, NULL);
INSERT INTO public.suggestiontype (primarykey, createtime, creator, edittime, editor, name, moderated, parent) VALUES ('1a5a5fcb-2ad1-4554-8fbc-cd33e51308da', NULL, NULL, NULL, NULL, 'С этим уже ничего не сделать', false, '6c339922-91e2-4371-ae36-0d1fa9dba453');
INSERT INTO public.suggestiontype (primarykey, createtime, creator, edittime, editor, name, moderated, parent) VALUES ('b491aedf-f0c8-4565-a046-0e7468249926', NULL, NULL, NULL, NULL, 'Предложение #3', false, NULL);
INSERT INTO public.suggestiontype (primarykey, createtime, creator, edittime, editor, name, moderated, parent) VALUES ('f3d8e64d-d698-4b99-b332-e99e83b2847e', NULL, NULL, NULL, NULL, 'Предложение #4', false, NULL);
INSERT INTO public.suggestiontype (primarykey, createtime, creator, edittime, editor, name, moderated, parent) VALUES ('970eec88-5a00-4426-9dba-823ed5f53f5c', NULL, NULL, NULL, NULL, 'Предложение #5', false, NULL);
INSERT INTO public.suggestiontype (primarykey, createtime, creator, edittime, editor, name, moderated, parent) VALUES ('73c6b3a2-3788-4b5f-8d1d-f2d51cb1a75e', NULL, NULL, NULL, NULL, 'Предложение #6', false, NULL);
INSERT INTO public.suggestiontype (primarykey, createtime, creator, edittime, editor, name, moderated, parent) VALUES ('912744c1-bb11-4636-8df2-002efbc3f206', NULL, NULL, NULL, NULL, 'Предложение #7', false, NULL);
INSERT INTO public.suggestiontype (primarykey, createtime, creator, edittime, editor, name, moderated, parent) VALUES ('4f0c9824-68ea-4d8f-b789-e1b382c7030c', NULL, NULL, NULL, NULL, 'Предложение #8', false, NULL);
INSERT INTO public.suggestiontype (primarykey, createtime, creator, edittime, editor, name, moderated, parent) VALUES ('ba34ca3e-8ce6-40c5-bd3f-9bda3f2a1d22', NULL, NULL, NULL, NULL, 'Предложение #9', false, NULL);
INSERT INTO public.suggestiontype (primarykey, createtime, creator, edittime, editor, name, moderated, parent) VALUES ('824df31d-e691-4009-97e8-8d0cb5b387a3', NULL, NULL, NULL, NULL, 'Предложение #10', false, NULL);
INSERT INTO public.suggestiontype (primarykey, createtime, creator, edittime, editor, name, moderated, parent) VALUES ('e20b8614-358b-4e71-90ea-95aa2431fcfc', NULL, NULL, NULL, NULL, 'Предложение #11', false, NULL);
INSERT INTO public.suggestiontype (primarykey, createtime, creator, edittime, editor, name, moderated, parent) VALUES ('dc5571ba-68bd-4bdc-bf5d-464af0a23ca9', NULL, NULL, NULL, NULL, 'Предложение #12', false, NULL);
INSERT INTO public.suggestiontype (primarykey, createtime, creator, edittime, editor, name, moderated, parent) VALUES ('dd81a3f6-6793-48c0-9518-a26c6d9eb0e5', NULL, NULL, NULL, NULL, 'Предложение #13', false, NULL);
INSERT INTO public.suggestiontype (primarykey, createtime, creator, edittime, editor, name, moderated, parent) VALUES ('921cf909-d954-4431-889d-57e85de5133d', NULL, NULL, NULL, NULL, 'Предложение #14', false, NULL);
INSERT INTO public.suggestiontype (primarykey, createtime, creator, edittime, editor, name, moderated, parent) VALUES ('86b6a3d0-a584-4804-9824-87c621245386', NULL, NULL, NULL, NULL, 'Предложение #15', false, NULL);
INSERT INTO public.suggestiontype (primarykey, createtime, creator, edittime, editor, name, moderated, parent) VALUES ('162f2b48-7141-48b2-8e34-872b5ae56fc7', NULL, NULL, NULL, NULL, 'Предложение #16', false, NULL);
INSERT INTO public.suggestiontype (primarykey, createtime, creator, edittime, editor, name, moderated, parent) VALUES ('cef66410-128e-4122-8dc7-fc9770752ba3', NULL, NULL, NULL, NULL, 'Предложение #17', false, NULL);
INSERT INTO public.suggestiontype (primarykey, createtime, creator, edittime, editor, name, moderated, parent) VALUES ('d38f6c0b-af7e-4864-8ff2-e347b6db8ccf', NULL, NULL, NULL, NULL, 'Предложение #18', false, NULL);
INSERT INTO public.suggestiontype (primarykey, createtime, creator, edittime, editor, name, moderated, parent) VALUES ('357e3eb1-7142-4eef-aa78-dde4866abfcd', NULL, NULL, NULL, NULL, 'Предложение #19', false, NULL);
INSERT INTO public.suggestiontype (primarykey, createtime, creator, edittime, editor, name, moderated, parent) VALUES ('4c592380-e012-4ea6-aea9-6dc78155cc73', NULL, NULL, NULL, NULL, 'Предложение #20', false, NULL);
INSERT INTO public.suggestiontype (primarykey, createtime, creator, edittime, editor, name, moderated, parent) VALUES ('f791a9d0-79b9-460d-9f72-777029e1a21e', NULL, NULL, NULL, NULL, 'Предложение #21', false, NULL);
INSERT INTO public.suggestiontype (primarykey, createtime, creator, edittime, editor, name, moderated, parent) VALUES ('e0be032c-5453-4cc7-90df-46973678aff8', NULL, NULL, NULL, NULL, 'Предложение #22', false, NULL);
INSERT INTO public.suggestiontype (primarykey, createtime, creator, edittime, editor, name, moderated, parent) VALUES ('5493c4f9-39a4-4ade-8871-0bd5192ec79a', NULL, NULL, NULL, NULL, 'Предложение #23', false, NULL);
INSERT INTO public.suggestiontype (primarykey, createtime, creator, edittime, editor, name, moderated, parent) VALUES ('7017a265-b109-44d0-9057-63a91fb8ed12', NULL, NULL, NULL, NULL, 'Предложение #24', false, NULL);
INSERT INTO public.suggestiontype (primarykey, createtime, creator, edittime, editor, name, moderated, parent) VALUES ('b81d6c38-9d7c-46df-9d18-dc1e3b7aa4b9', NULL, NULL, NULL, NULL, 'Предложение #25', false, NULL);
INSERT INTO public.suggestiontype (primarykey, createtime, creator, edittime, editor, name, moderated, parent) VALUES ('ed089d57-bcd9-4af1-a5fc-63e8b39d77c0', NULL, NULL, NULL, NULL, 'Предложение #26', false, NULL);
INSERT INTO public.suggestiontype (primarykey, createtime, creator, edittime, editor, name, moderated, parent) VALUES ('9442e03c-d635-4bfd-b4cc-c01add4c131b', NULL, NULL, NULL, NULL, 'Предложение #27', false, NULL);
INSERT INTO public.suggestiontype (primarykey, createtime, creator, edittime, editor, name, moderated, parent) VALUES ('97223ffa-93cb-4531-9cd7-0c5a5eb92e28', NULL, NULL, NULL, NULL, 'Предложение #28', false, NULL);
INSERT INTO public.suggestiontype (primarykey, createtime, creator, edittime, editor, name, moderated, parent) VALUES ('7ce6a5c6-6dc8-49f5-83ca-4469c8fde95c', NULL, NULL, NULL, NULL, 'Предложение #29', false, NULL);
INSERT INTO public.suggestiontype (primarykey, createtime, creator, edittime, editor, name, moderated, parent) VALUES ('f33a81bc-a087-4ffb-903d-0bbdab2f27a4', NULL, NULL, NULL, NULL, 'Предложение #30', false, NULL);
INSERT INTO public.suggestiontype (primarykey, createtime, creator, edittime, editor, name, moderated, parent) VALUES ('4e607a64-3411-4191-86eb-1949d38bf805', NULL, NULL, NULL, NULL, 'Предложение #31', false, NULL);
INSERT INTO public.suggestiontype (primarykey, createtime, creator, edittime, editor, name, moderated, parent) VALUES ('71daf8ba-1a86-42ea-a0b5-a60aabbeb1f4', NULL, NULL, NULL, NULL, 'Предложение #32', false, NULL);
INSERT INTO public.suggestiontype (primarykey, createtime, creator, edittime, editor, name, moderated, parent) VALUES ('2dd6684d-68e5-44f0-a800-51a89fa4180e', NULL, NULL, NULL, NULL, 'Предложение #33', false, NULL);
INSERT INTO public.suggestiontype (primarykey, createtime, creator, edittime, editor, name, moderated, parent) VALUES ('d1299383-bcf4-4d82-af38-5c90eef3d476', NULL, NULL, NULL, NULL, 'Предложение #34', false, NULL);
INSERT INTO public.suggestiontype (primarykey, createtime, creator, edittime, editor, name, moderated, parent) VALUES ('10d54fd1-2337-42d6-83e8-14894f3bbb6b', NULL, NULL, NULL, NULL, 'Предложение #35', false, NULL);
INSERT INTO public.suggestiontype (primarykey, createtime, creator, edittime, editor, name, moderated, parent) VALUES ('5f71f1ae-21a7-46ec-82a0-90409d7af76b', NULL, NULL, NULL, NULL, 'Предложение #36', false, NULL);
INSERT INTO public.suggestiontype (primarykey, createtime, creator, edittime, editor, name, moderated, parent) VALUES ('2e425b06-785b-4c72-b4b4-8fe1bce0e842', NULL, NULL, NULL, NULL, 'Предложение #37', false, NULL);
INSERT INTO public.suggestiontype (primarykey, createtime, creator, edittime, editor, name, moderated, parent) VALUES ('5f39ccbb-7009-4626-bf8f-67e828d0191e', NULL, NULL, NULL, NULL, 'Предложение #38', false, NULL);
INSERT INTO public.suggestiontype (primarykey, createtime, creator, edittime, editor, name, moderated, parent) VALUES ('24e82d59-14de-44c9-932e-8ff8299053b8', NULL, NULL, NULL, NULL, 'Предложение #39', false, NULL);
INSERT INTO public.suggestiontype (primarykey, createtime, creator, edittime, editor, name, moderated, parent) VALUES ('2030f182-ca30-438e-857b-5f59d8ae5327', NULL, NULL, NULL, NULL, 'Предложение #40', false, NULL);
INSERT INTO public.suggestiontype (primarykey, createtime, creator, edittime, editor, name, moderated, parent) VALUES ('296e97e9-db2a-4f1b-85a5-709d4f208f64', NULL, NULL, NULL, NULL, 'Предложение #41', false, NULL);
INSERT INTO public.suggestiontype (primarykey, createtime, creator, edittime, editor, name, moderated, parent) VALUES ('9391c83e-6762-4b60-bf93-e4d7a67b1a1a', NULL, NULL, NULL, NULL, 'Предложение #42', false, NULL);
INSERT INTO public.suggestiontype (primarykey, createtime, creator, edittime, editor, name, moderated, parent) VALUES ('e67c0018-ed5a-46f7-80c9-15821c3f70ea', NULL, NULL, NULL, NULL, 'Предложение #43', false, NULL);
INSERT INTO public.suggestiontype (primarykey, createtime, creator, edittime, editor, name, moderated, parent) VALUES ('673a743d-6dfd-41ed-ab92-5cad7047fc7e', NULL, NULL, NULL, NULL, 'Предложение #44', false, NULL);
INSERT INTO public.suggestiontype (primarykey, createtime, creator, edittime, editor, name, moderated, parent) VALUES ('94580079-d293-46f3-b142-68ded9f955cf', NULL, NULL, NULL, NULL, 'Предложение #45', false, NULL);
INSERT INTO public.suggestiontype (primarykey, createtime, creator, edittime, editor, name, moderated, parent) VALUES ('b8ca8f26-9e0b-4094-8865-07aa8662b78e', NULL, NULL, NULL, NULL, 'Предложение #46', false, NULL);
INSERT INTO public.suggestiontype (primarykey, createtime, creator, edittime, editor, name, moderated, parent) VALUES ('1b96fb3d-e5cb-45ea-bee9-12bac98dc04a', NULL, NULL, NULL, NULL, 'Предложение #47', false, NULL);
INSERT INTO public.suggestiontype (primarykey, createtime, creator, edittime, editor, name, moderated, parent) VALUES ('921ed2cd-a641-44ee-8665-ea80a682f0ca', NULL, NULL, NULL, NULL, 'Предложение #48', false, NULL);
INSERT INTO public.suggestiontype (primarykey, createtime, creator, edittime, editor, name, moderated, parent) VALUES ('3293e8bc-49ff-4812-a7f5-945b24ff184f', NULL, NULL, NULL, NULL, 'Предложение #49', false, NULL);
INSERT INTO public.suggestiontype (primarykey, createtime, creator, edittime, editor, name, moderated, parent) VALUES ('d427cbf6-1237-4454-bd98-94aa1b88976b', NULL, NULL, NULL, NULL, 'Предложение #50', false, NULL);
INSERT INTO public.suggestiontype (primarykey, createtime, creator, edittime, editor, name, moderated, parent) VALUES ('e3cebde4-85fd-420a-b060-2bc9ef777e19', NULL, NULL, NULL, NULL, 'Предложение #51', false, NULL);
INSERT INTO public.suggestiontype (primarykey, createtime, creator, edittime, editor, name, moderated, parent) VALUES ('b2b3809e-988b-4595-a2a6-07952949ef51', NULL, NULL, NULL, NULL, 'Предложение #52', false, NULL);
INSERT INTO public.suggestiontype (primarykey, createtime, creator, edittime, editor, name, moderated, parent) VALUES ('785d7740-0612-44df-bb7f-4f0f41bc18c4', NULL, NULL, NULL, NULL, 'Предложение #53', false, NULL);
INSERT INTO public.suggestiontype (primarykey, createtime, creator, edittime, editor, name, moderated, parent) VALUES ('2eeb9e04-e843-4549-8f40-50230f0fe55e', NULL, NULL, NULL, NULL, 'Предложение #54', false, NULL);
INSERT INTO public.suggestiontype (primarykey, createtime, creator, edittime, editor, name, moderated, parent) VALUES ('2b843efe-bb22-4770-8716-f97c20988409', NULL, NULL, NULL, NULL, 'Предложение #55', false, NULL);


--
-- Data for Name: suggestion; Type: TABLE DATA; Schema: public; Owner: flexberryuser
--

INSERT INTO public.suggestion (primarykey, createtime, creator, edittime, editor, address, text, date, votes, moderated, author, type, editor1) VALUES ('2e98a54d-7146-4e61-bb2d-a278796c861e', NULL, NULL, NULL, NULL, 'ул. Первая, д. 1', NULL, '2019-01-15 12:00:01.000', 0, false, '01c157a0-aa74-411d-96d3-8f877dbab853', '6c339922-91e2-4371-ae36-0d1fa9dba453', '01c157a0-aa74-411d-96d3-8f877dbab853');
INSERT INTO public.suggestion (primarykey, createtime, creator, edittime, editor, address, text, date, votes, moderated, author, type, editor1) VALUES ('0b3b49dd-1071-4fb7-af75-4bd9cc9486dd', NULL, NULL, NULL, NULL, 'ул. Вторая, д. 2', NULL, '2019-01-15 12:00:02.000', 0, false, '01c157a0-aa74-411d-96d3-8f877dbab853', '6c339922-91e2-4371-ae36-0d1fa9dba453', '01c157a0-aa74-411d-96d3-8f877dbab853');
INSERT INTO public.suggestion (primarykey, createtime, creator, edittime, editor, address, text, date, votes, moderated, author, type, editor1) VALUES ('fd718a62-5412-4cdf-a96a-b973f762cadd', NULL, NULL, NULL, NULL, 'ул. Третья, д. 3', NULL, '2019-01-15 12:00:03.000', 0, false, '01c157a0-aa74-411d-96d3-8f877dbab853', '6c339922-91e2-4371-ae36-0d1fa9dba453', '01c157a0-aa74-411d-96d3-8f877dbab853');
INSERT INTO public.suggestion (primarykey, createtime, creator, edittime, editor, address, text, date, votes, moderated, author, type, editor1) VALUES ('2d27e580-419b-459a-b497-c7c798deae5a', NULL, NULL, NULL, NULL, 'ул. Четвертая, д. 4', NULL, '2019-01-15 12:00:04.000', 0, false, '01c157a0-aa74-411d-96d3-8f877dbab853', '6c339922-91e2-4371-ae36-0d1fa9dba453', '01c157a0-aa74-411d-96d3-8f877dbab853');
INSERT INTO public.suggestion (primarykey, createtime, creator, edittime, editor, address, text, date, votes, moderated, author, type, editor1) VALUES ('87fe604d-92cd-4cce-896b-e3d62ab566dd', NULL, NULL, NULL, NULL, 'ул. Пятая, д. 7', NULL, '2019-01-15 12:00:05.000', 0, false, '01c157a0-aa74-411d-96d3-8f877dbab853', '1a5a5fcb-2ad1-4554-8fbc-cd33e51308da', '01c157a0-aa74-411d-96d3-8f877dbab853');


--
-- PostgreSQL database dump complete
--
