CREATE TABLE districts
(
    district_id    INT AUTO_INCREMENT NOT NULL,
    country_id     INT                NOT NULL,
    district_name  NVARCHAR(255)      NOT NULL,
    enabled        BIT DEFAULT 1      NOT NULL,
    CONSTRAINT pk_districts PRIMARY KEY (district_id),
    CONSTRAINT fk_districts_countries FOREIGN KEY (country_id) REFERENCES countries(country_id)
);


INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1, N'Unclaimed Sector', 1, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2, N'Sector claimed by Australia', 1, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3, N'Sector claimed by Argentina/UK', 1, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (4, N'Sector claimed by New Zealand', 1, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (5, N'Sector claimed by Norway', 1, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (6, N'Sector claimed by Argentina/Chile/UK', 1, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (7, N'Sector claimed by France', 1, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (8, N'Tierra del Fuego', 2, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (9, N'South Georgia', 3, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (10, N'Magellanes', 4, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (11, N'Falkland Islands', 3, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (12, N'Santa Cruz', 2, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (13, N'Kerguelen', 5, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (14, N'Southland', 6, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (15, N'Otago', 6, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (16, N'Crozet Islands', 5, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (17, N'Chubut', 2, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (18, N'Aisén', 4, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (19, N'Canterbury', 6, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (20, N'Waikato', 6, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (21, N'West Coast', 6, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (22, N'Los Lagos', 4, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (23, N'Tasman', 6, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (24, N'Marlborough', 6, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (25, N'Hawkes Bay', 6, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (26, N'Nelson', 6, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (27, N'Wellington', 6, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (28, N'Río Negro', 2, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (29, N'Manawatu-Wanganui', 6, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (30, N'Gough Island', 7, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (31, N'Taranaki', 6, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (32, N'Northland', 6, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (33, N'Araucanía', 4, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (34, N'Neuquén', 2, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (35, N'Buenos Aires', 2, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (36, N'Gisborne', 6, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (37, N'Bay of Plenty', 6, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (38, N'Amsterdam', 5, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (39, N'Bío Bío', 4, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (40, N'Tristan da Cunha', 7, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (41, N'Auckland', 6, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (42, N'La Pampa', 2, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (43, N'Maule', 4, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (44, N'Maldonado', 8, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (45, N'Canelones', 8, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (46, N'Montevideo', 8, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (47, N'San José', 8, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (48, N'Libertador General Bernardo OHiggins', 4, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (49, N'Rocha', 8, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (50, N'Mendoza', 2, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (51, N'Lavalleja', 8, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (52, N'Western Cape', 9, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (53, N'Colonia', 8, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (54, N'Florida', 8, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (55, N'Eastern Cape', 9, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (56, N'Soriano', 8, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (57, N'Metropolitana', 4, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (58, N'Santa Fé', 2, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (59, N'San Luis', 2, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (60, N'Valparaíso', 4, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (61, N'Flores', 8, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (62, N'Rio Grande do Sul', 10, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (63, N'Durazno', 8, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (64, N'Treinta y Tres', 8, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (65, N'Entre Ríos', 2, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (66, N'Córdoba', 2, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (67, N'Río Negro', 8, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (68, N'Cerro Largo', 8, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (69, N'Tacuarembó', 8, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (70, N'Paysandú', 8, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (71, N'Santa Catarina', 10, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (72, N'Rivera', 8, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (73, N'Coquimbo', 4, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (74, N'San Juan', 2, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (75, N'Northern Cape', 9, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (76, N'Salto', 8, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (77, N'Free State', 9, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (78, N'KwaZulu Natal', 9, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (79, N'Artigas', 8, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (80, N'Quthing', 11, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (81, N'Mohales Hoek', 11, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (82, N'Qachas Nek', 11, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (83, N'Mafeteng', 11, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (84, N'Thaba-Tseka', 11, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (85, N'La Rioja', 2, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (86, N'Maseru', 11, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (87, N'Mokhotlong', 11, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (88, N'Corrientes', 2, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (89, N'Berea', 11, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (90, N'Minas Gerais', 10, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (91, N'Leribe', 11, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (92, N'Butha-Buthe', 11, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (93, N'Atacama', 4, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (94, N'Karas', 12, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (95, N'Catamarca', 2, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (96, N'North West', 9, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (97, N'Santiago del Estero', 2, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (98, N'Tubuai', 13, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (99, N'Misiones', 2, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (100, N'Chaco', 2, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (101, N'Misiones', 14, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (102, N'Mpumalanga', 9, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (103, N'Itapúa', 14, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (104, N'Ñeembucú', 14, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (105, N'Shiselweni', 15, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (106, N'Osterinsel', 16, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (107, N'Lubombo', 15, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (108, N'Kgalagadi South', 17, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (109, N'Tucumán', 2, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (110, N'Gauteng', 9, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (111, N'Manzini', 15, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (112, N'Caazapá', 14, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (113, N'Paraná', 10, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (114, N'Guairá', 14, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (115, N'Hhohho', 15, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (116, N'Paraguarí', 14, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (117, N'Formosa', 2, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (118, N'Alto Paraná', 14, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (119, N'Maputo Provincia', 18, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (120, N'Maputo', 18, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (121, N'Ngwaketse', 17, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (122, N'Central', 14, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (123, N'Cordillera', 14, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (124, N'Caaguazú', 14, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (125, N'Jwaneng', 17, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (126, N'Antofagasta', 4, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (127, N'Toliary', 19, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (128, N'Asunción', 14, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (129, N'Presidente Hayes', 14, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (130, N'Lobatse', 17, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (131, N'Pitcairn', 20, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (132, N'Gaza', 18, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (133, N'South East', 17, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (134, N'São Paulo', 10, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (135, N'Limpopo', 9, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (136, N'Hardap', 12, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (137, N'San Pedro', 14, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (138, N'Salta', 2, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (139, N'Kweneng', 17, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (140, N'Gaborone', 17, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (141, N'Kgatleng', 17, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (142, N'Canendiyú', 14, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (143, N'Jujuy', 2, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (144, N'Kgalagadi North', 17, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (145, N'Mato Grosso do Sul', 10, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (146, N'Inhambane', 18, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (147, N'Mahalapye', 17, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (148, N'Goiás', 10, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (149, N'Tutume', 17, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (150, N'Concepción', 14, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (151, N'Fianarantsoa', 19, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (152, N'Amambay', 14, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (153, N'Rio de Janeiro', 10, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (154, N'Tuamotu-Gambier', 13, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (155, N'Ghanzi', 17, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (156, N'Erongo', 12, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (157, N'Serowe-Palapye', 17, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (158, N'Tarija', 21, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (159, N'Sud', 22, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (160, N'Boquerón', 14, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (161, N'Khomas', 12, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (162, N'Omaheke', 12, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (163, N'Kunene', 12, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (164, N'Alto Paraguay', 14, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (165, N'Bobonong', 17, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (166, N'Matabeleland South', 23, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (167, N'Potosí', 21, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (168, N'Otjozondjupa', 12, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (169, N'Selibe Phikwe', 17, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (170, N'Mangaia', 24, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (171, N'North East', 17, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (172, N'Îles', 22, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (173, N'Nord', 22, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (174, N'Boteti', 17, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (175, N'Saint-Pierre', 25, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (176, N'Eua', 26, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (177, N'Orapa', 17, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (178, N'Saint-Paul', 25, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (179, N'Tongatapu', 26, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (180, N'Rarotonga', 24, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (181, N'Francistown', 17, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (182, N'Saint-Benoît', 25, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (183, N'Espírito Santo', 10, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (184, N'Masvingo', 23, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (185, N'Saint-Denis', 25, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (186, N'Chuquisaca', 21, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (187, N'Savanne', 27, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (188, N'Grand Port', 27, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (189, N'Ngamiland', 17, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (190, N'Black River', 27, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (191, N'Mato Grosso', 10, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (192, N'Santa Cruz', 21, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (193, N'Midlands', 23, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (194, N'Plaines Wilhelm', 27, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (195, N'Moka', 27, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (196, N'Flacq', 27, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (197, N'Tarapacá', 4, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (198, N'Manicaland', 23, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (199, N'Bulawayo', 23, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (200, N'Pamplemousses', 27, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (201, N'Mauke', 24, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (202, N'Riviere du Rempart', 27, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (203, N'Sowa', 17, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (204, N'Toamasina', 19, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (205, N'Atiu', 24, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (206, N'Matabeleland North', 23, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (207, N'Okavango', 17, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (208, N'Antananarivo', 19, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (209, N'Sofala', 18, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (210, N'Mitiaro', 24, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (211, N'Haapai', 26, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (212, N'Oshikoto', 12, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (213, N'Tafea', 28, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (214, N'Mashonaland East', 23, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (215, N'Manica', 18, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (216, N'Oruro', 21, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (217, N'Aitutaki', 24, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (218, N'Vavau', 26, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (219, N'Beni', 21, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (220, N'Mashonaland West', 23, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (221, N'Chobe', 17, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (222, N'Central', 29, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (223, N'Eastern', 29, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (224, N'Cochabamba', 21, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (225, N'Western', 29, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (226, N'Bahia', 10, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (227, N'Tacna', 30, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (228, N'Harare', 23, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (229, N'Kavango', 12, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (230, N'Omusati', 12, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (231, N'Zambezia', 18, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (232, N'Southern', 31, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (233, N'Îles du Vent', 13, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (234, N'Oshana', 12, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (235, N'Shefa', 28, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (236, N'Moquegua', 30, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (237, N'Mashonaland Central', 23, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (238, N'Caprivi', 12, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (239, N'Western', 31, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (240, N'Ohangwena', 12, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (241, N'La Paz', 21, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (242, N'Arequipa', 30, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (243, N'Puno', 30, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (244, N'Cunene', 32, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (245, N'Northern', 29, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (246, N'Nsanje', 33, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (247, N'Îles sous le Vent', 13, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (248, N'Mahajanga', 19, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (249, N'Nampula', 18, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (250, N'Tete', 18, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (251, N'Malampa', 28, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (252, N'Thyolo', 33, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (253, N'Chikwawa', 33, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (254, N'Mulanje', 33, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (255, N'Saint Helena', 7, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (256, N'Niuas', 26, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (257, N'Tumbes', 30, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (258, N'Blantyre City', 33, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (259, N'Phalombe', 33, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (260, N'Distrito Federal', 10, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (261, N'Lusaka', 31, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (262, N'Chiradzulu', 33, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (263, N'Mwanza', 33, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (264, N'Sanma', 28, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (265, N'Zomba Municipality', 33, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (266, N'Penama', 28, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (267, N'Ica', 30, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (268, N'Namibe', 32, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (269, N'Machinga', 33, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (270, N'Ayacucho', 30, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (271, N'Central', 31, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (272, N'Balaka', 33, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (273, N'Huíla', 32, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (274, N'Antsiranana', 19, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (275, N'Ntcheu', 33, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (276, N'Niassa', 18, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (277, N'Kuando-Kubango', 32, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (278, N'Eastern', 31, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (279, N'Cusco', 30, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (280, N'Mangochi', 33, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (281, N'Western', 34, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (282, N'Dedza', 33, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (283, N'Eastern', 34, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (284, N'Alo', 35, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (285, N'Sigave', 35, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (286, N'Manua', 34, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (287, N'Rest of Upolu', 36, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (288, N'Lilongwe City', 33, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (289, N'North West Upolu', 36, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (290, N'Savaii', 36, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (291, N'Torba', 28, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (292, N'Apia Urban Area', 36, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (293, N'Mchinji', 33, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (294, N'Salima', 33, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (295, N'North-Western', 31, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (296, N'Apurímac', 30, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (297, N'Dowa', 33, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (298, N'Copperbelt', 31, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (299, N'Mua', 35, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (300, N'Ntchisi', 33, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (301, N'Pasco', 30, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (302, N'Hahake', 35, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (303, N'Hihifo', 35, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (304, N'Cabo Delgado', 18, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (305, N'Lima Provincias', 30, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (306, N'Rondônia', 10, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (307, N'Kasungu', 33, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (308, N'Mayotte', 37, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (309, N'Huancavelica', 30, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (310, N'Tocantins', 10, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (311, N'Nkhotakota', 33, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (312, N'Huambo', 32, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (313, N'Junín', 30, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (314, N'Pamanzi', 37, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (315, N'Madre de Dios', 30, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (316, N'Benguela', 32, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (317, N'Bié', 32, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (318, N'Ndzouani', 38, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (319, N'Mwali', 38, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (320, N'Cocos Islands', 39, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (321, N'Callao', 30, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (322, N'Ngazidja', 38, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (323, N'Mzimba', 33, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (324, N'Acre', 10, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (325, N'Northern', 31, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (326, N'Moxico', 32, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (327, N'Katanga', 40, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (328, N'Nkhata Bay', 33, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (329, N'Nassau', 24, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (330, N'Rennell and Bellona', 41, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (331, N'Sergipe', 10, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (332, N'Mzuzu City', 33, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (333, N'Tanga', 42, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (334, N'Kwanza Sul', 32, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (335, N'Luapala', 31, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (336, N'Ruvuma', 42, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (337, N'Pwani', 42, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (338, N'Pando', 21, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (339, N'Rumphi', 33, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (340, N'Mtwara', 42, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (341, N'Pukapuka', 24, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (342, N'Temotu', 41, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (343, N'Milne Bay', 43, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (344, N'Karonga', 33, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (345, N'Iringa', 42, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (346, N'Marquises', 13, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (347, N'Mbeya', 42, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (348, N'Piauí', 10, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (349, N'Makira and Ulawa', 41, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (350, N'Manihiki', 24, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (351, N'Alagoas', 10, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (352, N'Lindi', 42, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (353, N'Christmas Island', 39, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (354, N'Nusa Tenggara Timur', 44, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (355, N'Huánuco', 30, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (356, N'Ancash', 30, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (357, N'Rakahanga', 24, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (358, N'Chitipa', 33, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (359, N'Lunda Sul', 32, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (360, N'Morogoro', 42, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (361, N'Malanje', 32, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (362, N'National Capital District', 43, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (363, N'Maranhão', 10, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (364, N'Guadalcanal', 41, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (365, N'Fakaofo', 45, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (366, N'Pernambuco', 10, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (367, N'Nukulaelae', 46, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (368, N'Cova Lima', 47, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (369, N'Kwanza Norte', 32, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (370, N'Rukwa', 42, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (371, N'Pará', 10, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (372, N'Oecussi', 47, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (373, N'Nukunonu', 45, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (374, N'Bobonaro', 47, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (375, N'Central', 41, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (376, N'Fly River', 43, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (377, N'Tongareva', 24, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (378, N'Ainaro', 47, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (379, N'Manufahi', 47, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (380, N'Viqueque', 47, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (381, N'Oro', 43, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (382, N'Luanda', 32, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (383, N'Ermera', 47, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (384, N'Malaita', 41, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (385, N'Amazonas', 10, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (386, N'Bali', 44, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (387, N'Nusa Tenggara Barat', 44, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (388, N'Aileu', 47, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (389, N'Liquiça', 47, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (390, N'Dili', 47, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (391, N'Bengo', 32, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (392, N'Atafu', 45, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (393, N'Manatuto', 47, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (394, N'Funafuti', 46, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (395, N'Papua', 44, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (396, N'Ucayali', 30, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (397, N'Lautem', 47, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (398, N'Baucau', 47, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (399, N'Jawa Timur', 44, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (400, N'La Libertad', 30, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (401, N'San Martín', 30, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (402, N'Lunda Norte', 32, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (403, N'Uíge', 32, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (404, N'Isabel', 41, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (405, N'Western', 41, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (406, N'Nukufetau', 46, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (407, N'Yogyakarta', 44, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (408, N'Gulf', 43, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (409, N'Ascension', 7, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (410, N'Paraíba', 10, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (411, N'Jawa Tengah', 44, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (412, N'Cajamarca', 30, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (413, N'Ceará', 10, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (414, N'Vaitupu', 46, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (415, N'Jawa Barat', 44, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (416, N'Loreto', 30, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (417, N'Morobe', 43, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (418, N'Nui', 46, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (419, N'Zaire', 32, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (420, N'Kasai-Oriental', 40, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (421, N'Lambayeque', 30, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (422, N'Dar es Salaam', 42, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (423, N'North Solomons', 43, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (424, N'Dodoma', 42, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (425, N'Choiseul', 41, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (426, N'Rio Grande do Norte', 10, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (427, N'Madang', 43, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (428, N'Kasai-Occidental', 40, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (429, N'Bandundu', 40, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (430, N'Zanzibar and Pemba', 42, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (431, N'Arusha', 42, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (432, N'Banten', 44, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (433, N'Southern Highlands', 43, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (434, N'Nanumanga', 46, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (435, N'Eastern Highlands', 43, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (436, N'Amazonas', 30, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (437, N'West New Britain', 43, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (438, N'Jakarta', 44, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (439, N'Niutao', 46, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (440, N'Simbu', 43, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (441, N'Singida', 42, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (442, N'Western Highlands', 43, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (443, N'Bas-Congo', 40, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (444, N'Nanumea', 46, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (445, N'Tabora', 42, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (446, N'Maluku', 44, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (447, N'Piura', 30, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (448, N'Cabinda', 32, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (449, N'Sulawesi Selatan', 44, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (450, N'Enga', 43, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (451, N'Sulawesi Tenggara', 44, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (452, N'Lampung', 44, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (453, N'Manyara', 42, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (454, N'Kigoma', 42, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (455, N'Kilimanjaro', 42, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (456, N'Kouilou', 48, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (457, N'Coast', 49, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (458, N'Maniema', 40, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (459, N'Loja', 50, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (460, N'Pool', 48, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (461, N'East New Britain', 43, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (462, N'Kinshasa', 40, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (463, N'Brazzaville', 48, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (464, N'Amazonas', 51, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (465, N'East Sepik', 43, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (466, N'Niari', 48, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (467, N'Bouenza', 48, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (468, N'Makamba', 52, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (469, N'Sumatera Selatan', 44, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (470, N'Zamora Chinchipe', 50, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (471, N'Bururi', 52, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (472, N'Rutana', 52, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (473, N'Shinyanga', 42, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (474, N'Amapá', 10, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (475, N'Bengkulu', 44, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (476, N'El Oro', 50, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (477, N'Los Ríos', 50, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (478, N'Lékoumou', 48, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (479, N'New Ireland', 43, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (480, N'Sud-Kivu', 40, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (481, N'Gitega', 52, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (482, N'Ruyigi', 52, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (483, N'Nyanga', 53, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (484, N'Kalimantan Selatan', 44, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (485, N'Morona Santiago', 50, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (486, N'Bujumbura', 52, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (487, N'Muramvya', 52, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (488, N'Cankuzo', 52, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (489, N'Bubanza', 52, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (490, N'Kalimantan Tengah', 44, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (491, N'Karuzi', 52, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (492, N'Kagera', 42, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (493, N'Mwanza', 42, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (494, N'Bangka-Belitung', 44, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (495, N'Kayanza', 52, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (496, N'Ngozi', 52, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (497, N'Azuay', 50, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (498, N'Cibitoke', 52, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (499, N'Guayas', 50, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (500, N'Phoenix Islands', 54, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (501, N'Muyinga', 52, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (502, N'Cañar', 50, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (503, N'Sandaun', 43, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (504, N'Eastern', 49, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (505, N'Ogooué-Maritime', 53, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (506, N'Butare', 55, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (507, N'Kirundo', 52, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (508, N'Plateaux', 48, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (509, N'Rift Valley', 49, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (510, N'Gikongoro', 55, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (511, N'Tamana', 54, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (512, N'Cyangugu', 55, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (513, N'Kalimantan Barat', 44, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (514, N'Ngounié', 53, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (515, N'Mara', 42, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (516, N'Chimborazo', 50, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (517, N'Kibungo', 55, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (518, N'Woleu-Ntem', 53, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (519, N'Gitarama', 55, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (520, N'Kibuye', 55, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (521, N'Jambi', 44, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (522, N'Manus', 43, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (523, N'Ville de Kigali', 55, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (524, N'Onotoa', 54, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (525, N'Roraima', 10, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (526, N'Bolívar', 50, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (527, N'Nord-Kivu', 40, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (528, N'Gisenyi', 55, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (529, N'Haut-Ogooué', 53, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (530, N'Byumba', 55, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (531, N'Manabí', 50, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (532, N'Ruhengeri', 55, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (533, N'Pastaza', 50, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (534, N'Tabiteuea South', 54, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (535, N'Annobón', 56, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (536, N'Tungurahua', 50, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (537, N'Sulawesi Tengah', 44, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (538, N'Nikunau', 54, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (539, N'Beru', 54, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (540, N'Nairobi', 49, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (541, N'Western', 57, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (542, N'Kalimantan Timur', 44, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (543, N'Central', 49, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (544, N'Tabiteuea North', 54, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (545, N'Jubbada Hose', 58, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (546, N'Nyanza', 49, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (547, N'Ogooué-Lolo', 53, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (548, N'Cotopaxi', 50, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (549, N'Ogooué-Ivindo', 53, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (550, N'Riau', 44, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (551, N'Napo', 50, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (552, N'Sumatera Barat', 44, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (553, N'Galápagos', 50, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (554, N'Cuvette-Ouest', 48, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (555, N'Banaba', 54, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (556, N'Eastern', 57, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (557, N'Carchi', 50, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (558, N'Western', 49, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (559, N'Central', 57, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (560, N'Orellana', 50, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (561, N'Moyen-Ogooué', 53, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (562, N'Nonouti', 54, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (563, N'Siin', 59, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (564, N'Aiwo', 60, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (565, N'Pichincha', 50, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (566, N'Cuvette', 48, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (567, N'North Eastern', 49, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (568, N'Ghaviyani', 59, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (569, N'Équateur', 40, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (570, N'Putumayo', 51, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (571, N'Estuaire', 53, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (572, N'Sucumbíos', 50, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (573, N'Aranuka', 54, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (574, N'Gaaf Dhaal', 59, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (575, N'Kuria', 54, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (576, N'Imbabura', 50, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (577, N'Cantagalo', 61, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (578, N'Mé-Zochi', 61, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (579, N'Esmeraldas', 50, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (580, N'Gaaf Alif', 59, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (581, N'Lobata', 61, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (582, N'Água Grande', 61, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (583, N'Lemba', 61, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (584, N'Sulawesi Utara', 44, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (585, N'Abemana', 54, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (586, N'Vaupés', 51, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (587, N'Jubbada Ðexe', 58, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (588, N'Haut-Congo', 40, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (589, N'Gorontalo', 44, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (590, N'Maluku Utara', 44, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (591, N'Caquetá', 51, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (592, N'Nariño', 51, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (593, N'Riau Kepulauan', 44, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (594, N'Maiana', 54, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (595, N'Centro Sur', 56, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (596, N'Šabellaha Hose', 58, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (597, N'Wele-Nzas', 56, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (598, N'Sarawak', 62, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (599, N'Gedo', 58, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (600, N'Sumatera Utara', 44, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (601, N'Tarawa South', 54, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (602, N'Guaviare', 51, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (603, N'Litoral', 56, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (604, N'Johor', 62, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (605, N'Cauca', 51, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (606, N'Sangha', 48, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (607, N'Tarawa North', 54, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (608, N'Likouala', 48, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (609, N'Pagué', 61, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (610, N'Huila', 51, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (611, N'Laam', 59, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (612, N'Abaiang', 54, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (613, N'Northern', 57, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (614, N'Šabellaha Ðexe', 58, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (615, N'Kiritimati', 54, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (616, N'Kié-Ntem', 56, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (617, N'Banadir', 58, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (618, N'Marakei', 54, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (619, N'Thaa', 59, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (620, N'Meta', 51, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (621, N'Melaka', 62, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (622, N'Sud', 63, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (623, N'Negeri Sembilan', 62, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (624, N'Bay', 58, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (625, N'Selangor', 62, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (626, N'Arorae', 54, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (627, N'Dhaal', 59, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (628, N'Miim', 59, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (629, N'Hatobohei', 64, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (630, N'Faaf', 59, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (631, N'Butaritari', 54, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (632, N'Kuala Lumpur', 62, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (633, N'Cayenne', 65, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (634, N'Tolima', 51, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (635, N'Centre', 63, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (636, N'Valle del Cauca', 51, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (637, N'Vaav', 59, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (638, N'Pahang', 62, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (639, N'Makin', 54, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (640, N'Upper Takutu-Upper Essequibo', 66, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (641, N'Hiran', 58, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (642, N'Bioko Sur', 56, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (643, N'Alif Dhaal', 59, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (644, N'Est', 63, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (645, N'Sangha-Mbaéré', 67, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (646, N'Oromia', 68, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (647, N'Saint-Laurent-du-Maroni', 65, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (648, N'Littoral', 63, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (649, N'Lobaye', 67, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (650, N'Perak', 62, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (651, N'Sabah', 62, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (652, N'Bioko Norte', 56, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (653, N'Galgudud', 58, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (654, N'Pohnpei', 69, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (655, N'Guainía', 51, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (656, N'East Berbice-Corentyne', 66, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (657, N'Kaaf', 59, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (658, N'Tabuaeran', 54, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (659, N'Alif Alif', 59, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (660, N'Cundinamarca', 51, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (661, N'Sudouest', 63, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (662, N'Bakol', 58, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (663, N'Bahr-al-Jabal', 70, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (664, N'Mambéré-Kadéï', 67, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (665, N'Aceh', 44, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (666, N'Malé', 59, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (667, N'Terengganu', 62, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (668, N'Chocó', 51, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (669, N'Ombella Mpoko', 67, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (670, N'Bayelsa', 71, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (671, N'Mbomou', 67, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (672, N'Quindió', 51, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (673, N'Basse-Kotto', 67, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (674, N'Bangui', 67, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (675, N'Maryland and Grand Kru', 72, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (676, N'Šarq-al-Istiwaiyah', 70, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (677, N'Bas Sassandra', 73, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (678, N'Rivers', 71, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (679, N'Vichada', 51, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (680, N'Garb-al-Istiwaiyah', 70, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (681, N'Belait', 74, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (682, N'Ebon', 75, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (683, N'Bogotá', 51, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (684, N'Akwa Ibom', 71, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (685, N'Mudug', 58, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (686, N'Muslim Mindanao', 76, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (687, N'Teraina', 54, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (688, N'Temburong', 74, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (689, N'Casanare', 51, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (690, N'Cross River', 71, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (691, N'Risaralda', 51, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (692, N'Tutong', 74, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (693, N'Boyacá', 51, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (694, N'Western', 77, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (695, N'Baa', 59, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (696, N'Kelantan', 62, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (697, N'Brunei-Muara', 74, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (698, N'Ouest', 63, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (699, N'Caldas', 51, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (700, N'Ouaka', 67, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (701, N'Brokopondo', 78, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (702, N'Abia', 71, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (703, N'Central', 77, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (704, N'Lagunes', 73, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (705, N'Edo', 71, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (706, N'Nuun', 59, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (707, N'Pulau Pinang', 62, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (708, N'Sud-Comoé', 73, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (709, N'Delta', 71, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (710, N'Lhaviyani', 59, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (711, N'Chuuk', 69, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (712, N'Kusaie', 69, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (713, N'Labuan', 62, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (714, N'Sonsorol', 64, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (715, N'Kedah', 62, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (716, N'Haut-Mbomou', 67, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (717, N'Southern Mindanao', 76, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (718, N'Upper Demerara-Berbice', 66, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (719, N'Raa', 59, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (720, N'Imo', 71, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (721, N'Marowijne', 78, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (722, N'Antioquia', 51, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (723, N'Greater Accra', 77, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (724, N'Para', 78, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (725, N'Adamaoua', 63, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (726, N'Namorik', 75, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (727, N'Southern', 68, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (728, N'Kili', 75, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (729, N'Amazonas', 79, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (730, N'Nana-Mambéré', 67, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (731, N'Wanica', 78, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (732, N'Kémo', 67, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (733, N'Santander', 51, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (734, N'Nickerie', 78, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (735, N'Yala', 80, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (736, N'Volta', 77, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (737, N'Jaluit', 75, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (738, N'Saramacca', 78, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (739, N'Commewijne', 78, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (740, N'Eastern', 77, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (741, N'Nordouest', 63, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (742, N'Paramaribo', 78, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (743, N'Sud-Bandama', 73, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (744, N'Anambra', 71, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (745, N'Grand Bassa', 72, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (746, N'Coronie', 78, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (747, N'Ebonyi', 71, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (748, N'Enugu', 71, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (749, N'Agnéby', 73, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (750, N'Matara', 81, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (751, N'Shaviyani', 59, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (752, N'Narathiwat', 80, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (753, N'Hambantota', 81, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (754, N'Mili', 75, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (755, N'Haa Dhaal', 59, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (756, N'Galla', 81, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (757, N'Western Mindanao', 76, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (758, N'Grand Gedeh', 72, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (759, N'Nord', 63, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (760, N'Lae', 75, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (761, N'Central Mindanao', 76, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (762, N'Fromager', 73, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (763, N'Maritime', 82, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (764, N'Ashanti', 77, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (765, N'Junqali', 70, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (766, N'Arauca', 51, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (767, N'Mahaica-Berbice', 66, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (768, N'Mono', 83, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (769, N'Montserrado', 72, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (770, N'Ouham-Pendé', 67, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (771, N'Atlantique', 83, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (772, N'Littoral', 83, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (773, N'Perlis', 62, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (774, N'Cuyuni-Mazaruni', 66, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (775, N'Lagos', 71, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (776, N'Nzi-Comoé', 73, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (777, N'Ouémé', 83, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (778, N'Kalatura', 81, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (779, N'Haut-Sassandra', 73, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (780, N'Tigray', 68, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (781, N'Ouham', 67, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (782, N'Ondo', 71, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (783, N'Haute-Kotto', 67, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (784, N'Moyen-Cavally', 73, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (785, N'Lacs', 73, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (786, N'al-Buhayrat', 70, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (787, N'Ogun', 71, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (788, N'Marahoué', 73, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (789, N'Satun', 80, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (790, N'Songkhla', 80, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (791, N'Ratnapuraya', 81, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (792, N'Demerara-Mahaica', 66, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (793, N'Yap', 69, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (794, N'Taraba', 71, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (795, N'Pattani', 80, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (796, N'Plateau', 83, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (797, N'Moyen-Comoé', 73, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (798, N'Grand Cape Mount', 72, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (799, N'Badulla', 81, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (800, N'Couffo', 83, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (801, N'Monaragala', 81, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (802, N'Essequibo Islands-West Demerara', 66, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (803, N'Colombo', 81, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (804, N'Haa Alif', 59, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (805, N'Bomi', 72, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (806, N'Maha Nuwara', 81, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (807, N'Plateaux', 82, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (808, N'Angaur', 64, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (809, N'Nuwara Eliya', 81, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (810, N'Gampaha', 81, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (811, N'Arno', 75, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (812, N'Kogi', 71, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (813, N'Nana-Gribizi', 67, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (814, N'Bong', 72, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (815, N'Dix-huit Montagnes', 73, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (816, N'Peleliu', 64, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (817, N'Majuro', 75, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (818, N'Brong-Ahafo', 77, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (819, N'Benue', 71, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (820, N'Norte de Santander', 51, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (821, N'Zou', 83, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (822, N'Southern', 84, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (823, N'Apure', 79, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (824, N'Kegalla', 81, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (825, N'Pomeroon-Supenaam', 66, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (826, N'Warab', 70, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (827, N'Ailinlaplap', 75, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (828, N'Amparai', 81, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (829, N'Nimba', 72, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (830, N'Osun', 71, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (831, N'Koror', 64, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (832, N'Ngiwal', 64, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (833, N'Airai', 64, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (834, N'Ngatpang', 64, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (835, N'Bolívar', 51, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (836, N'Oyo', 71, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (837, N'Los Santos', 85, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (838, N'Ekiti', 71, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (839, N'Trang', 80, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (840, N'Eastern', 84, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (841, N'Vallée du Bandama', 73, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (842, N'Ngchesar', 64, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (843, N'Kurunegala', 81, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (844, N'Matale', 81, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (845, N'Northern Mindanao', 76, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (846, N'Melekeok', 64, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (847, N'Darién', 85, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (848, N'Ngerchelong', 64, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (849, N'Ngaraard', 64, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (850, N'Yomou', 86, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (851, N'Puttalama', 81, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (852, N'Aimeliik', 64, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (853, N'Phatthalung', 80, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (854, N'Lac', 87, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (855, N'Ngardmau', 64, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (856, N'Madakalpuwa', 81, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (857, N'Garb Bahr-al-Gazal', 70, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (858, N'Táchira', 79, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (859, N'Ngaremlengui', 64, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (860, N'César', 51, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (861, N'Nzérékoré', 86, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (862, N'Collines', 83, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (863, N'Herrera', 85, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (864, N'Lola', 86, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (865, N'Zanzan', 73, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (866, N'Phuket', 80, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (867, N'Caraga', 76, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (868, N'Worodougou', 73, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (869, N'Veraguas', 85, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (870, N'Nugal', 58, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (871, N'Southern Tagalog', 76, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (872, N'Emberá', 85, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (873, N'Bolívar', 79, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (874, N'Chiriquí', 85, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (875, N'Ngöbe Buglé', 85, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (876, N'Krabi', 80, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (877, N'Kayangel', 64, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (878, N'Tamil Nadu', 88, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (879, N'Córdoba', 51, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (880, N'Adamawa', 71, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (881, N'Kwara', 71, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (882, N'Nassarawa', 71, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (883, N'Nakhon Si Thammarat', 80, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (884, N'Aur', 75, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (885, N'Coclé', 85, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (886, N'Namu', 75, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (887, N'Barima-Waini', 66, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (888, N'Logone Oriental', 87, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (889, N'Gambella', 68, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (890, N'Lakshadweep', 88, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (891, N'Bafing', 73, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (892, N'al-Wahdah', 70, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (893, N'Anuradhapuraya', 81, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (894, N'Lib', 75, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (895, N'Western', 84, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (896, N'Moyen-Chari', 87, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (897, N'Mérida', 79, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (898, N'Kerala', 88, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (899, N'Bamingui-Bangoran', 67, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (900, N'Northern', 84, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (901, N'Phangnga', 80, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (902, N'Panamá', 85, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (903, N'Northern', 77, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (904, N'Sucre', 51, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (905, N'Cagayan Valley', 76, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (906, N'Puntarenas', 89, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (907, N'Šamal Bahr-al-Gazal', 70, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (908, N'Abuja Federal Capital Territory', 71, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (909, N'Macenta', 86, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (910, N'Logone Occidental', 87, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (911, N'Guéckédou', 86, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (912, N'Centre', 82, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (913, N'Tirikunamalaya', 81, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (914, N'Barinas', 79, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (915, N'Niger', 71, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (916, N'Surat Thani', 80, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (917, N'Beyla', 86, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (918, N'Kwajalein', 75, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (919, N'Vavuniyawa', 81, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (920, N'Plateau', 71, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (921, N'Kuna de Wargandí', 85, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (922, N'Maloelap', 75, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (923, N'Anzoátegui', 79, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (924, N'Borgou', 83, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (925, N'Kuna Yala', 85, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (926, N'Bocas del Toro', 85, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (927, N'Guárico', 79, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (928, N'Ujae', 75, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (929, N'Alajuela', 89, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (930, N'Kuna de Madungandí', 85, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (931, N'Mannarama', 81, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (932, N'Afar', 68, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (933, N'Tandjilé', 87, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (934, N'Magdalena', 51, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (935, N'Togder', 58, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (936, N'Zulia', 79, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (937, N'Donga', 83, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (938, N'Addis Abeba', 68, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (939, N'Amhara', 68, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (940, N'Portuguesa', 79, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (941, N'Delta Amacuro', 79, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (942, N'Central Visayas', 76, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (943, N'Colón', 85, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (944, N'Dong Bang Song Cuu Long', 90, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (945, N'Kissidougou', 86, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (946, N'Kara', 82, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (947, N'San José', 89, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (948, N'Kérouane', 86, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (949, N'Sing Buri', 80, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (950, N'Harar', 68, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (951, N'Trujillo', 79, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (952, N'Somali', 68, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (953, N'Mayo-Kébbi', 87, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (954, N'Kilinochchi', 81, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (955, N'Forécariah', 86, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (956, N'Savanes', 73, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (957, N'Kaduna', 71, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (958, N'Western Visayas', 76, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (959, N'Wotje', 75, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (960, N'Bari', 58, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (961, N'Denguélé', 73, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (962, N'Limón', 89, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (963, N'Bauchi', 71, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (964, N'Aali-an-Nil', 70, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (965, N'Conakry', 86, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (966, N'Woqoyi Galbed', 58, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (967, N'Diredawa', 68, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (968, N'Cartago', 89, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (969, N'Cojedes', 79, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (970, N'Yapanaya', 81, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (971, N'Awdal', 58, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (972, N'Coyah', 86, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (973, N'Monagas', 79, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (974, N'Lara', 79, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (975, N'Gombe', 71, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (976, N'Likiep', 75, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (977, N'Noumbiel', 91, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (978, N'Guanacaste', 89, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (979, N'Chumphon', 80, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (980, N'Ranong', 80, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (981, N'Heredia', 89, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (982, N'Aragua', 79, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (983, N'Faranah', 86, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (984, N'Kindia', 86, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (985, N'Upper West', 77, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (986, N'Eastern Visayas', 76, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (987, N'Benishangul', 68, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (988, N'Yaracuy', 79, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (989, N'Carabobo', 79, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (990, N'Siparia', 92, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (991, N'Miranda', 79, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (992, N'Nord Extrème', 63, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (993, N'Point Fortín', 92, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (994, N'Peñal Débé', 92, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (995, N'Boffa', 86, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (996, N'Wotho', 75, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (997, N'Borno', 71, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (998, N'Ailuk', 75, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (999, N'Sangre Grande', 92, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1000, N'Princes Town', 92, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1001, N'San Fernando', 92, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1002, N'Mayaro-Río Claro', 92, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1003, N'Vakaga', 67, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1004, N'Atacora', 83, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1005, N'Atlántico', 51, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1006, N'Poni', 91, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1007, N'Savanes', 82, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1008, N'Dong Nam Bo', 90, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1009, N'Couva-Tabaquite-Talparo', 92, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1010, N'Fria', 86, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1011, N'Mamou', 86, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1012, N'Kankan', 86, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1013, N'Sucre', 79, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1014, N'San Juan-Laventville', 92, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1015, N'Chari-Baguirmi', 87, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1016, N'Krong Kaeb', 93, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1017, N'La Guajira', 51, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1018, N'Chaguanas', 92, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1019, N'Distrito Capital', 79, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1020, N'an-Nil-al-Azraq', 70, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1021, N'Vargas', 79, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1022, N'Krong Preah Sihanouk', 93, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1023, N'Kâmpôt', 93, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1024, N'Mandiana', 86, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1025, N'Comoé', 91, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1026, N'Janub Kurdufan', 70, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1027, N'Sanag', 58, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1028, N'Arima', 92, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1029, N'Tunapuna-Piarco', 92, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1030, N'Port of Spain', 92, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1031, N'Dalaba', 86, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1032, N'Kouroussa', 86, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1033, N'Léraba', 91, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1034, N'Diego Martín', 92, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1035, N'Dabola', 86, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1036, N'Kebbi', 71, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1037, N'Upper East', 77, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1038, N'Télimélé', 86, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1039, N'Río San Juan', 94, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1040, N'Pondicherry', 88, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1041, N'Duyen Hai Mien Trung', 90, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1042, N'Boké', 86, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1043, N'Nueva Esparta', 79, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1044, N'Bougouriba', 91, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1045, N'Kénédougou', 91, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1046, N'Takaev', 93, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1047, N'Garb Kurdufan', 70, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1048, N'Salamat', 87, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1049, N'Guéra', 87, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1050, N'Pita', 86, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1051, N'Sikasso', 95, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1052, N'Svay Rieng', 93, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1053, N'Sissili', 91, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1054, N'Dih_il', 96, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1055, N'Alibori', 83, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1056, N'Ioba', 91, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1057, N'Rongelap', 75, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1058, N'Ali Sabih', 96, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1059, N'Nahouri', 91, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1060, N'Tobago', 92, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1061, N'Houet', 91, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1062, N'Rivas', 94, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1063, N'Prachuap Khiri Khan', 80, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1064, N'Utrik', 75, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1065, N'Kompienga', 91, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1066, N'Kano', 71, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1067, N'Zamfara', 71, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1068, N'Katsina', 71, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1069, N'Jigawa', 71, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1070, N'Bolama', 97, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1071, N'Tombali', 97, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1072, N'Dinguiraye', 86, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1073, N'Labé', 86, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1074, N'Quinara', 97, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1075, N'Enewetak', 75, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1076, N'Falcón', 79, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1077, N'Siguiri', 86, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1078, N'Janub Darfur', 70, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1079, N'Tougué', 86, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1080, N'Kâmpóng Spoeu', 93, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1081, N'Jibuti', 96, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1082, N'Yobe', 71, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1083, N'Kândal', 93, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1084, N'Tuy', 91, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1085, N'Prey Veaeng', 93, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1086, N'Koulpélogo', 91, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1087, N'Ziro', 91, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1088, N'Phnum Pénh', 93, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1089, N'Nueva Segovia', 94, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1090, N'Koubia', 86, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1091, N'Kaôh Kông', 93, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1092, N'Zoundwéogo', 91, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1093, N'Andaman and Nicobar Islands', 88, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1094, N'Atlántico Sur', 94, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1095, N'Carazo', 94, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1096, N'Balé', 91, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1097, N'Granada', 94, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1098, N'Gaoual', 86, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1099, N'Boulgou', 91, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1100, N'Tajurah', 96, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1101, N'Karnataka', 88, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1102, N'Managua', 94, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1103, N'Bissau', 97, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1104, N'Bicol', 76, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1105, N'Biombo', 97, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1106, N'Dosso', 98, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1107, N'Masaya', 94, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1108, N'Koulikoro', 95, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1109, N'Thai Nguyen', 90, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1110, N'Chontales', 94, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1111, N'Awbuk', 96, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1112, N'Kâmpóng Cham', 93, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1113, N'Saint Davids', 99, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1114, N'Curaçao', 100, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1115, N'Saint George', 99, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1116, N'Cacheu', 97, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1117, N'Gourma', 91, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1118, N'Oio', 97, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1119, N'Bazéga', 91, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1120, N'Mali', 86, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1121, N'Tapoa', 91, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1122, N'Bonaire', 100, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1123, N'Saint Andrew', 99, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1124, N'Saint John', 99, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1125, N'Bafatá', 97, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1126, N'Banwa', 91, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1127, N'Kouritenga', 91, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1128, N'Saint Patrick', 99, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1129, N'Boulkiemdé', 91, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1130, N'Saint Mark', 99, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1131, N'Trat', 80, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1132, N'Ganzourgou', 91, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1133, N'León', 94, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1134, N'Kâmpóng Chhnang', 93, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1135, N'Gabú', 97, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1136, N'Tombouctou', 95, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1137, N'Sanguié', 91, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1138, N'an-Nil-al-Abyad', 70, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1139, N'Kadiogo', 91, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1140, N'Boaco', 94, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1141, N'Sinnar', 70, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1142, N'Tanintharyi', 101, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1143, N'Chanthaburi', 80, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1144, N'Môndôl Kiri', 93, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1145, N'Mouhoun', 91, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1146, N'Otdar Mean Chey', 93, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1147, N'Chinandega', 94, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1148, N'Carriacou-Petite Martinique', 99, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1149, N'Koundara', 86, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1150, N'Krâchéh', 93, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1151, N'Ziguinchor', 102, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1152, N'Pousat', 93, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1153, N'Kolda', 102, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1154, N'Matagalpa', 94, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1155, N'Tambacounda', 102, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1156, N'Estelí', 94, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1157, N'San Andrés y Providencia', 51, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1158, N'Oubritenga', 91, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1159, N'Komandjari', 91, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1160, N'Bamako', 95, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1161, N'Nayala', 91, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1162, N'Namentenga', 91, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1163, N'Chon Buri', 80, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1164, N'Rayong', 80, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1165, N'Kâmpóng Thum', 93, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1166, N'Kossi', 91, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1167, N'Šamal Kurdufan', 70, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1168, N'Andhra Pradesh', 88, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1169, N'Aden', 103, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1170, N'Phetchaburi', 80, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1171, N'Ségou', 95, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1172, N'Sokoto', 71, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1173, N'Krong Pailin', 93, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1174, N'Grenadines', 104, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1175, N'Garb Darfur', 70, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1176, N'Passoré', 91, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1177, N'Gnagna', 91, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1178, N'Zinder', 98, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1179, N'Debub-Keih-Bahri', 105, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1180, N'Kayes', 95, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1181, N'Lahij', 103, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1182, N'Christ Church', 106, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1183, N'Sourou', 91, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1184, N'Sanmatenga', 91, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1185, N'Jinotega', 94, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1186, N'Kourwéogo', 91, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1187, N'Saint Michael', 106, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1188, N'Saint Philip', 106, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1189, N'Tillabéry', 98, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1190, N'Bat Dâmbâng', 93, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1191, N'Choluteca', 107, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1192, N'Saint George', 106, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1193, N'Saint George', 104, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1194, N'Brikama', 108, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1195, N'Saint James', 106, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1196, N'Saint John', 106, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1197, N'La Unión', 109, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1198, N'Charlotte', 104, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1199, N'Saint Thomas', 106, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1200, N'Saint Joseph', 106, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1201, N'Zondoma', 91, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1202, N'Diffa', 98, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1203, N'San Miguel', 109, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1204, N'Batha', 87, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1205, N'Abyan', 103, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1206, N'Atlántico Norte', 94, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1207, N'Basse', 108, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1208, N'Usulután', 109, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1209, N'Saint Peter', 106, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1210, N'Saint Andrew', 106, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1211, N'Kerewan', 108, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1212, N'Loroum', 91, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1213, N'Merizo', 110, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1214, N'Valle', 107, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1215, N'Mansakonko', 108, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1216, N'Madriz', 94, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1217, N'Saint David', 104, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1218, N'Inarajan', 110, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1219, N'Janjanbureh', 108, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1220, N'Maradi', 98, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1221, N'Comayagua', 107, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1222, N'Saint Lucy', 106, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1223, N'Bam', 91, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1224, N'Taizz', 103, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1225, N'La Paz', 109, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1226, N'Chachoengsao', 80, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1227, N'Talofofo', 110, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1228, N'Siem Reab', 93, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1229, N'Agat', 110, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1230, N'Santa Rita', 110, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1231, N'Kanifing', 108, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1232, N'Kuntaur', 108, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1233, N'Yona', 110, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1234, N'Samut Songkhran', 80, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1235, N'Yagha', 91, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1236, N'Chalan-Pago-Ordot', 110, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1237, N'Mangilao', 110, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1238, N'al-Qadarif', 70, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1239, N'Banjul', 108, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1240, N'Sinajana', 110, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1241, N'Ouaddaï', 87, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1242, N'Agana Heights', 110, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1243, N'Hagatña', 110, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1244, N'Mongmong-Toto-Maite', 110, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1245, N'Barrigada', 110, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1246, N'La Libertad', 109, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1247, N'Tamuning', 110, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1248, N'Sa Kaeo', 80, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1249, N'Rôtanak Kiri', 93, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1250, N'Niamey', 98, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1251, N'Ratchaburi', 80, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1252, N'Stueng Traeng', 93, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1253, N'Dededo', 110, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1254, N'El Paraíso', 107, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1255, N'Samut Sakhon', 80, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1256, N'Yigo', 110, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1257, N'San Salvador', 109, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1258, N'Yatenga', 91, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1259, N'Samut Prakan', 80, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1260, N'Banteay Mean Chey', 93, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1261, N'Sonsonate', 109, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1262, N'Šamal Darfur', 70, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1263, N'Morazán', 109, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1264, N'Kanem', 87, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1265, N'San Vicente', 109, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1266, N'Cuscatlán', 109, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1267, N'Nakhon Pathom', 80, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1268, N'Vieux Fort', 111, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1269, N'Bangkok', 80, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1270, N'Ahuachapán', 109, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1271, N'Francisco Morazán', 107, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1272, N'Laborie', 111, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1273, N'Kaolack', 102, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1274, N'Colón', 107, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1275, N'Choiseul', 111, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1276, N'Tahoua', 98, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1277, N'Nonthaburi', 80, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1278, N'Micoud', 111, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1279, N'Preah Vihéar', 93, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1280, N'Cabañas', 109, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1281, N'al-Jawf', 103, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1282, N'Ibb', 103, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1283, N'Soufrière', 111, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1284, N'Cortés', 107, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1285, N'Fatick', 102, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1286, N'Intibucá', 107, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1287, N'La Paz', 107, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1288, N'Dennery', 111, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1289, N'Canaries', 111, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1290, N'Kanchanaburi', 80, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1291, N'Santa Ana', 109, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1292, N'Escuintla', 112, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1293, N'Mopti', 95, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1294, N'Copán', 107, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1295, N'Anse-la-Raye', 111, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1296, N'Pathum Thani', 80, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1297, N'Jutiapa', 112, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1298, N'al-Bayda', 103, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1299, N'Prachin Buri', 80, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1300, N'Castries', 111, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1301, N'Chalatenango', 109, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1302, N'Séno', 91, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1303, N'Lempira', 107, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1304, N'Santa Rosa', 112, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1305, N'Gros Inlet', 111, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1306, N'Distrito Central', 107, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1307, N'Soum', 91, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1308, N'al-Jazirah', 70, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1309, N'Suphan Buri', 80, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1310, N'Rota', 113, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1311, N'Thiès', 102, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1312, N'Nakhon Nayok', 80, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1313, N'Phra Nakhon Si Ayutthaya', 80, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1314, N'al-Hudaydah', 103, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1315, N'Retalhuleu', 112, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1316, N'Saraburi', 80, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1317, N'Šabwah', 103, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1318, N'Ocotepeque', 107, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1319, N'Si Sa Ket', 80, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1320, N'Suchitepéquez', 112, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1321, N'Nakhon Ratchasima', 80, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1322, N'Central Luzon', 76, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1323, N'Olancho', 107, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1324, N'Oudalan', 91, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1325, N'Guatemala', 112, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1326, N'Le Marin', 114, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1327, N'Sacatepéquez', 112, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1328, N'Chimaltenango', 112, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1329, N'Jalapa', 112, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1330, N'Ubon Ratchathani', 80, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1331, N'San Marcos', 112, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1332, N'Chiquimula', 112, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1333, N'Biltine', 87, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1334, N'Hadramaut', 103, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1335, N'Chiapas', 115, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1336, N'Ðamar', 103, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1337, N'Ang Thong', 80, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1338, N'Fort-de-France', 114, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1339, N'Quezaltenango', 112, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1340, N'Buri Ram', 80, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1341, N'National Capital Region', 76, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1342, N'Sololá', 112, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1343, N'Debub', 105, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1344, N'Diourbel', 102, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1345, N'La Trinité', 114, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1346, N'Semien-Keih-Bahri', 105, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1347, N'Santa Bárbara', 107, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1348, N'Yoro', 107, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1349, N'Dakar', 102, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1350, N'El Progreso', 112, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1351, N'Saint-Pierre', 114, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1352, N'Zacapa', 112, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1353, N'Lop Buri', 80, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1354, N'Brava', 116, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1355, N'Attopu', 117, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1356, N'Chihuahua', 115, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1357, N'Surin', 80, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1358, N'Totonicapán', 112, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1359, N'Fogo', 116, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1360, N'Champasak', 117, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1361, N'Baja Verapaz', 112, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1362, N'Quiché', 112, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1363, N'Gracias a Dios', 107, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1364, N'São Tiago', 116, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1365, N'Kassala', 70, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1366, N'Tinian', 113, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1367, N'Goa', 88, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1368, N'Atlántida', 107, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1369, N'Gash-Barka', 105, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1370, N'Saipan', 113, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1371, N'Nakhon Sawan', 80, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1372, N'México', 115, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1373, N'Maio', 116, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1374, N'Guidimagha', 118, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1375, N'Sana', 103, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1376, N'Chai Nat', 80, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1377, N'Matam', 102, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1378, N'Huehuetenango', 112, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1379, N'Saint Mark', 119, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1380, N'Saint Patrick', 119, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1381, N'Ayeyarwady', 101, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1382, N'Saint Luke', 119, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1383, N'Izabal', 112, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1384, N'Alta Verapaz', 112, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1385, N'Saint George', 119, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1386, N'Saint Paul', 119, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1387, N'Maekel', 105, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1388, N'Louga', 102, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1389, N'Saint David', 119, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1390, N'Amanah al-Asmah', 103, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1391, N'Uthai Thani', 80, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1392, N'Saint Joseph', 119, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1393, N'Sekong', 117, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1394, N'Marib', 103, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1395, N'Saint Peter', 119, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1396, N'al-Mahwit', 103, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1397, N'Chaiyaphum', 80, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1398, N'Saint Andrew', 119, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1399, N'Gurgul', 118, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1400, N'Maha Sarakham', 80, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1401, N'Saint John', 119, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1402, N'Hud-aš-Šarqi', 118, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1403, N'Khartum', 70, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1404, N'Roi Et', 80, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1405, N'Islas de la Bahía', 107, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1406, N'Phetchabun', 80, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1407, N'Anseba', 105, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1408, N'Hajjah', 103, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1409, N'Saravan', 117, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1410, N'Oaxaca', 115, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1411, N'Ilocos', 76, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1412, N'Hud-al-Garbi', 118, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1413, N'Yasothon', 80, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1414, N'Khon Kaen', 80, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1415, N'Îles des Saintes', 120, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1416, N'Amnat Charoen', 80, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1417, N'Maharashtra', 88, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1418, N'Marie-Galante', 120, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1419, N'Basse-Terre', 120, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1420, N'Saint-Louis', 102, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1421, N'Phichit', 80, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1422, N'Mon', 101, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1423, N'Kamphaeng Phet', 80, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1424, N'Toledo', 121, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1425, N'Sagaing', 101, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1426, N'Boavista', 116, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1427, N'Petén', 112, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1428, N'Grande-Terre', 120, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1429, N'al-Mahrah', 103, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1430, N'Gao', 95, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1431, N'Cordillera', 76, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1432, N'La Désirade', 120, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1433, N'Kalasin', 80, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1434, N'Brakna', 118, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1435, N'Guerrero', 115, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1436, N'Khu Bon Cu', 90, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1437, N'Trarza', 118, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1438, N'Mukdahan', 80, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1439, N'Phitsanulok', 80, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1440, N'Savannakhet', 117, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1441, N'Jizan', 122, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1442, N'Sal', 116, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1443, N'São Nicolau', 116, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1444, N'Assaba', 118, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1445, N'Nahr-an-Nil', 70, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1446, N'Rangun', 101, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1447, N'Tak', 80, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1448, N'Sukhothai', 80, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1449, N'Nong Bua Lam Phu', 80, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1450, N'Loei', 80, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1451, N'São Vicente', 116, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1452, N'Nakhon Phanom', 80, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1453, N'Stann Creek', 121, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1454, N'Zufar', 123, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1455, N'Agadez', 98, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1456, N'Saint Mary', 124, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1457, N'Saint Paul', 124, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1458, N'Santo Antão', 116, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1459, N'Saint Philip', 124, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1460, N'Saint John', 124, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1461, N'Cayo', 121, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1462, N'Saint Peter', 124, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1463, N'Saint George Gingerland', 125, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1464, N'Saint George', 124, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1465, N'Udon Thani', 80, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1466, N'Saint Paul Charlestown', 125, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1467, N'Saint Thomas Lowland', 125, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1468, N'Sakon Nakhon', 80, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1469, N'Saint James Windward', 125, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1470, N'Tabasco', 115, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1471, N'Trinity Palmetto Point', 125, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1472, N'Bago', 101, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1473, N'Saint George Basseterre', 125, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1474, N'Saint Thomas Middle Island', 125, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1475, N'Saint Peter Basseterre', 125, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1476, N'Saint Mary Cayon', 125, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1477, N'Saint Anne Sandy Point', 125, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1478, N'Saint John Figtree', 125, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1479, N'Christ Church Nichola Town', 125, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1480, N'Saint John Capesterre', 125, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1481, N'Saint Paul Capesterre', 125, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1482, N'Khammouane', 117, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1483, N'Veracruz', 115, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1484, N'Sint Eustatius', 100, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1485, N'Najran', 122, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1486, N'Belize', 121, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1487, N'Lampang', 80, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1488, N'Saba', 100, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1489, N'Uttaradit', 80, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1490, N'Barbuda', 124, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1491, N'Asir', 122, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1492, N'Saint Croix', 126, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1493, N'Clarendon', 127, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1494, N'Pedernales', 128, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1495, N'Nong Khai', 80, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1496, N'Manchester', 127, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1497, N'Saint Thomas', 127, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1498, N'Saint Elizabeth', 127, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1499, N'Saint Catherine', 127, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1500, N'Barahona', 128, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1501, N'Saint Barthélemy', 120, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1502, N'Bourkou-Ennedi-Tibesti', 87, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1503, N'Michoacán', 115, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1504, N'Ponce', 129, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1505, N'Guayama', 129, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1506, N'Viangchan Prefecture', 117, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1507, N'Phrae', 80, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1508, N'Saint Andrew', 127, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1509, N'Kingston', 127, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1510, N'Sint Maarten', 100, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1511, N'Puebla', 115, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1512, N'Portland', 127, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1513, N'Sud-Est', 130, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1514, N'Mayagüez-Aguadilla', 129, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1515, N'Humacao', 129, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1516, N'aš-Šamaliyah', 70, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1517, N'Westmoreland', 127, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1518, N'Sud', 130, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1519, N'Orange Walk', 121, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1520, N'Nawakšut', 118, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1521, N'Saint Martin', 120, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1522, N'Orissa', 88, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1523, N'Campeche', 115, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1524, N'Saint Mary', 127, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1525, N'Peravia', 128, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1526, N'Oudomxay', 117, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1527, N'Hainan', 131, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1528, N'Hanover', 127, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1529, N'Saint Ann', 127, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1530, N'San Cristóbal', 128, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1531, N'Trelawney', 127, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1532, N'Nord-Est', 130, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1533, N'Independencia', 128, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1534, N'Azua', 128, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1535, N'Saint James', 127, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1536, N'Arecibo', 129, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1537, N'Carolina', 129, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1538, N'Saint Thomas', 126, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1539, N'Saint John', 126, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1540, N'Bayamón', 129, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1541, N'Baoruco', 128, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1542, N'GrandAnse', 130, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1543, N'La Altagracia', 128, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1544, N'Corozal', 121, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1545, N'Ouest', 130, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1546, N'Bolikhamsay', 117, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1547, N'La Romana', 128, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1548, N'Tortola', 132, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1549, N'al-Bahr-al-Ahmar', 70, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1550, N'Chiang Mai', 80, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1551, N'San Juan', 129, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1552, N'Quintana Roo', 115, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1553, N'Kidal', 95, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1554, N'San Pedro de Macorís', 128, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1555, N'Rakhine', 101, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1556, N'Lamphun', 80, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1557, N'Morelos', 115, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1558, N'Santo Domingo', 128, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1559, N'Viangchan Province', 117, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1560, N'San José de Ocoa', 128, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1561, N'Takant', 118, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1562, N'San Juan', 128, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1563, N'Hato Mayor', 128, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1564, N'Elías Piña', 128, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1565, N'Chhattisgarh', 88, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1566, N'Monte Plata', 128, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1567, N'Monseñor Nouel', 128, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1568, N'El Seibo', 128, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1569, N'Nan', 80, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1570, N'Centre', 130, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1571, N'La Vega', 128, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1572, N'Colima', 115, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1573, N'Makkah', 122, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1574, N'Artibonite', 130, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1575, N'Sánchez Ramírez', 128, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1576, N'Tlaxcala', 115, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1577, N'Duarte', 128, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1578, N'Phayao', 80, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1579, N'Xaignabury', 117, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1580, N'Samaná', 128, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1581, N'Jalisco', 115, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1582, N'Santiago', 128, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1583, N'Mae Hong Son', 80, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1584, N'Grand Cayman', 133, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1585, N'Salcedo', 128, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1586, N'Dajabón', 128, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1587, N'María Trinidad Sánchez', 128, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1588, N'Espaillat', 128, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1589, N'Magway', 101, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1590, N'Nord', 130, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1591, N'Xiang Khuang', 117, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1592, N'Santiago Rodríguez', 128, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1593, N'Distrito Federal', 115, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1594, N'Chiang Rai', 80, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1595, N'Valverde', 128, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1596, N'Tamanrasat', 134, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1597, N'Monte Cristi', 128, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1598, N'Hidalgo', 115, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1599, N'Nord-Ouest', 130, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1600, N'Kayah', 101, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1601, N'Puerto Plata', 128, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1602, N'Mandalay', 101, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1603, N'Inširi', 118, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1604, N'al-Bahah', 122, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1605, N'Luang Prabang', 117, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1606, N'Guanajuato', 115, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1607, N'Santiago de Cuba', 135, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1608, N'Northern Islands', 113, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1609, N'Granma', 135, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1610, N'Yucatán', 115, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1611, N'Guantánamo', 135, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1612, N'Querétaro', 115, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1613, N'Dong Bang Song Hong', 90, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1614, N'Dadra and Nagar Haveli', 88, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1615, N'Guangdong', 131, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1616, N'Gujarat', 88, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1617, N'Daman and Diu', 88, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1618, N'Houaphanh', 117, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1619, N'Riad', 122, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1620, N'Adrar', 118, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1621, N'Holguín', 135, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1622, N'Las Tunas', 135, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1623, N'Camagüey', 135, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1624, N'Nayarit', 115, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1625, N'Shan', 101, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1626, N'Bokeo', 117, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1627, N'Mien Nui Va Trung Du', 90, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1628, N'Cox''s Bazar', 136, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1629, N'Inagua Islands', 137, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1630, N'Ðah_lat Nawadibu', 118, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1631, N'Luang Nam Tha', 117, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1632, N'Madhya Pradesh', 88, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1633, N'San Luis Potosí', 115, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1634, N'Zacatecas', 115, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1635, N'Grand Turk', 138, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1636, N'Guangxi', 131, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1637, N'South Caicos and East Caicos', 138, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1638, N'West Bengal', 88, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1639, N'Isla de la Juventud', 135, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1640, N'Ciego de Ávila', 135, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1641, N'Phongsaly', 117, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1642, N'Sancti Spíritus', 135, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1643, N'Aguascalientes', 115, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1644, N'Yunnan', 131, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1645, N'Chittagong', 136, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1646, N'aš-Šarqiyah', 123, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1647, N'Jharkhand', 88, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1648, N'Cienfuegos', 135, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1649, N'Villa Clara', 135, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1650, N'Barguna', 136, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1651, N'Ragged Island', 137, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1652, N'Bandarban', 136, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1653, N'Pinar del Río', 135, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1654, N'Tamaulipas', 115, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1655, N'Bagerhat', 136, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1656, N'Bhola', 136, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1657, N'Aomen', 131, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1658, N'Hongkong', 131, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1659, N'Matanzas', 135, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1660, N'Perojpur', 136, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1661, N'Patuakhali', 136, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1662, N'ad-Dah_iliyah', 123, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1663, N'Mayaguana', 137, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1664, N'Pingtung', 139, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1665, N'Rangamati', 136, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1666, N'Mizoram', 88, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1667, N'Sinaloa', 115, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1668, N'Acklins Island', 137, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1669, N'Crooked Island', 137, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1670, N'Barisal', 136, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1671, N'Kaohsiung Shih', 139, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1672, N'Kaohsiung Hsien', 139, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1673, N'Jhalokathi', 136, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1674, N'Tiris Zammur', 118, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1675, N'Kushtia', 136, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1676, N'La Habana', 135, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1677, N'Satkhira', 136, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1678, N'Taitung', 139, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1679, N'Noakhali', 136, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1680, N'Khagrachari', 136, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1681, N'Baja California Sur', 115, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1682, N'Gopalganj', 136, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1683, N'Jessore', 136, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1684, N'Chin', 101, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1685, N'Tainan Hsien', 139, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1686, N'Laksmipur', 136, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1687, N'Tripura', 88, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1688, N'Tainan Shih', 139, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1689, N'Feni', 136, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1690, N'Narail', 136, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1691, N'Long Island', 137, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1692, N'Ciudad de la Habana', 135, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1693, N'Rajasthan', 88, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1694, N'Madaripur', 136, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1695, N'Shariatpur', 136, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1696, N'Chandpur', 136, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1697, N'Comilla', 136, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1698, N'az-Zahirah', 123, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1699, N'Maskat', 123, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1700, N'al-Batinah', 123, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1701, N'Faridpur', 136, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1702, N'Hualien', 139, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1703, N'Durango', 115, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1704, N'Chiayi Hsien', 139, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1705, N'Jhenaidah', 136, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1706, N'Chiayi Shih', 139, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1707, N'Munshiganj', 136, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1708, N'al-Madinah', 122, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1709, N'Magura', 136, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1710, N'Exuma and Cays', 137, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1711, N'Penghu', 139, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1712, N'Yunlin', 139, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1713, N'Dhaka', 136, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1714, N'Chuadanga', 136, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1715, N'Narayanganj', 136, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1716, N'Rum Cay', 137, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1717, N'Nuevo León', 115, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1718, N'Wad-ad-Ðahab', 140, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1719, N'Fujian', 131, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1720, N'Nantou', 139, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1721, N'Rajbari', 136, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1722, N'Meherpur', 136, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1723, N'Gazipur', 136, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1724, N'Manikganj', 136, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1725, N'Changhwa', 139, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1726, N'Brahmanbaria', 136, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1727, N'Khulna', 136, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1728, N'Norshingdi', 136, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1729, N'Taichung Hsien', 139, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1730, N'Pabna', 136, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1731, N'San Salvador', 137, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1732, N'Kishoreganj', 136, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1733, N'Assuan', 141, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1734, N'Tangail', 136, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1735, N'Sind', 142, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1736, N'Taichung Shih', 139, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1737, N'Sirajganj', 136, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1738, N'al-Kufrah', 143, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1739, N'Uttar Pradesh', 88, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1740, N'Taoyuan', 139, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1741, N'Abu Dhabi', 144, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1742, N'Kachin', 101, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1743, N'Moulvibazar', 136, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1744, N'Miaoli', 139, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1745, N'Manipur', 88, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1746, N'Okinawa', 145, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1747, N'Rajshahi', 136, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1748, N'Habiganj', 136, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1749, N'Mymensingh', 136, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1750, N'Natore', 136, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1751, N'Kinmen', 139, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1752, N'Jariyan al-Batnah', 146, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1753, N'Assam', 88, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1754, N'Bihar', 88, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1755, N'Chapai Nawabganj', 136, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1756, N'Ilan', 139, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1757, N'Cat Island', 137, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1758, N'Bogra', 136, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1759, N'Andros', 137, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1760, N'Hsinchu Hsien', 139, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1761, N'Jamalpur', 136, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1762, N'Eleuthera', 137, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1763, N'Naogaon', 136, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1764, N'Hsinchu Shih', 139, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1765, N'al-Wakrah', 146, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1766, N'Netrokona', 136, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1767, N'Sylhet', 136, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1768, N'Taipei Hsien', 139, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1769, N'Gat', 143, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1770, N'Qina', 141, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1771, N'Musayid', 146, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1772, N'Tabuk', 122, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1773, N'Sherpur', 136, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1774, N'Sunamganj', 136, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1775, N'New Providence', 137, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1776, N'Baluchistan', 142, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1777, N'Guizhou', 131, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1778, N'Joypurhat', 136, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1779, N'al-Fujayrah', 144, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1780, N'Keelung Shih', 139, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1781, N'ar-Rayyan', 146, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1782, N'Meghalaya', 88, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1783, N'al-Jumayliyah', 146, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1784, N'Dubai', 144, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1785, N'Doha', 146, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1786, N'Sistan-e Baluchestan', 147, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1787, N'aš-Šarqiyah', 122, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1788, N'Gaibandha', 136, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1789, N'Coahuila', 115, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1790, N'al-Qasim', 122, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1791, N'aš-Šariqah', 144, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1792, N'Umm Salal', 146, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1793, N'Ajman', 144, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1794, N'al-Wadi al-Jadid', 141, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1795, N'Dinajpur', 136, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1796, N'Kurigram', 136, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1797, N'Umm al-Qaywayn', 144, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1798, N'Rangpur', 136, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1799, N'Nagaland', 88, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1800, N'al-H_awr', 146, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1801, N'Luxor', 141, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1802, N'Biminis', 137, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1803, N'Hormozgan', 147, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1804, N'Berry Islands', 137, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1805, N'Nilphamari', 136, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1806, N'Ras al-H_aymah', 144, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1807, N'Hunan', 131, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1808, N'Hail', 122, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1809, N'al-Guwayriyah', 146, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1810, N'Thakurgaon', 136, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1811, N'Lalmonirhat', 136, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1812, N'Marzuq', 143, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1813, N'Jiangxi', 131, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1814, N'aš-Šamal', 146, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1815, N'al-Bahr-al-Ahmar', 141, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1816, N'al-Garbiyah', 148, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1817, N'Madinat Hamad', 148, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1818, N'ar-Rifaa', 148, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1819, N'Bu Jaydur', 140, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1820, N'al-Wusta', 148, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1821, N'Sitrah', 148, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1822, N'Isa', 148, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1823, N'Musandam', 123, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1824, N'aš-Šamaliyah', 148, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1825, N'Manama', 148, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1826, N'Jidhafs', 148, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1827, N'Sawhaj', 141, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1828, N'al-Hidd', 148, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1829, N'al-Muharraq', 148, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1830, N'Panchagarh', 136, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1831, N'Morang', 149, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1832, N'Ilizi', 134, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1833, N'Grand Bahama', 137, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1834, N'Saptari', 149, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1835, N'Jhapa', 149, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1836, N'Abaco', 137, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1837, N'Wadi al-Hayat', 143, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1838, N'Sichuan', 131, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1839, N'Sunsari', 149, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1840, N'Mahottari', 149, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1841, N'Siraha', 149, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1842, N'Udayapur', 149, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1843, N'Sonora', 115, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1844, N'Adrar', 134, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1845, N'Dhanusa', 149, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1846, N'as-Samarah', 140, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1847, N'Rautahat', 149, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1848, N'Samdrup Jongkhar', 150, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1849, N'Chukha', 150, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1850, N'Sarpang', 150, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1851, N'Sarlahi', 149, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1852, N'al-Minya', 141, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1853, N'Zhemgang', 150, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1854, N'Ilam', 149, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1855, N'Dhankuta', 149, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1856, N'Assiut', 141, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1857, N'Parsa', 149, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1858, N'Dagana', 150, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1859, N'Pemagatshel', 150, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1860, N'Arunachal Pradesh', 88, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1861, N'Bara', 149, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1862, N'Sabha', 143, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1863, N'Tsirang', 150, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1864, N'Trashigang', 150, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1865, N'Sikkim', 88, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1866, N'al-Ayun', 140, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1867, N'Sindhuli', 149, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1868, N'Mongar', 150, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1869, N'Samtse', 150, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1870, N'Sankhuwasabha', 149, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1871, N'Haa', 150, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1872, N'Makwanpur', 149, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1873, N'Paro', 150, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1874, N'Zhejiang', 131, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1875, N'Thimphu', 150, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1876, N'Lhuntse', 150, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1877, N'Rupandehi', 149, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1878, N'Trongsa', 150, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1879, N'Bumthang', 150, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1880, N'Wadi aš-Šati', 143, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1881, N'Wangdue Phodrang', 150, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1882, N'Trashiyangtse', 150, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1883, N'Kavrepalanchok', 149, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1884, N'Tinduf', 134, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1885, N'Fars', 147, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1886, N'Chitwan', 149, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1887, N'Kathmandu', 149, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1888, N'Bhaktapur', 149, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1889, N'Dolakha', 149, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1890, N'Lalitpur', 149, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1891, N'Dang Deokhuri', 149, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1892, N'Punakha', 150, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1893, N'Haryana', 88, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1894, N'Bushehr', 147, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1895, N'Kerman', 147, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1896, N'Palpa', 149, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1897, N'Las Palmas', 151, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1898, N'Nuwakot', 149, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1899, N'Gasa', 150, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1900, N'Syangja', 149, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1901, N'Santa Cruz de Tenerife', 151, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1902, N'Banke', 149, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1903, N'Kaski', 149, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1904, N'South Sinai', 141, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1905, N'Punjab', 142, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1906, N'Bardiya', 149, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1907, N'Baglung', 149, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1908, N'Kagoshima', 145, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1909, N'Baja California', 115, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1910, N'Guelmim', 152, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1911, N'Delhi', 88, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1912, N'Kailali', 149, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1913, N'Surkhet', 149, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1914, N'al-Ahmadi', 153, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1915, N'Giseh', 141, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1916, N'Bani Suwayf', 141, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1917, N'Dailekh', 149, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1918, N'Uttaranchal', 88, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1919, N'Kanchanpur', 149, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1920, N'al-Wahat', 143, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1921, N'al-Jufrah', 143, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1922, N'Doti', 149, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1923, N'Chongqing', 131, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1924, N'Mubarak al-Kabir', 153, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1925, N'al-Fayyum', 141, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1926, N'al-Farwaniyah', 153, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1927, N'Hawalli', 153, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1928, N'Jumla', 149, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1929, N'al-Jahra', 153, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1930, N'al-Asamah', 153, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1931, N'Dadeldhura', 149, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1932, N'al-Aqabah', 154, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1934, N'Anhui', 131, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1935, N'al-Hudud-aš-Šamaliyah', 122, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1936, N'Xizang', 131, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1937, N'Punjab', 88, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1938, N'Souss Massa-Draâ', 152, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1939, N'Hubei', 131, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1940, N'al-Jawf', 122, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1941, N'Darchula', 149, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1942, N'as-Suways', 141, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1943, N'al-Basrah', 156, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1944, N'Kairo', 141, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1945, N'al-Qalyubiyah', 141, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1946, N'Gadamis', 143, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1947, N'Nimruz', 157, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1948, N'Maan', 154, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1949, N'Khuzestan', 147, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1950, N'aš-Šarqiyah', 141, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1951, N'al-Minufiyah', 141, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1952, N'al-Ismailiyah', 141, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1953, N'North-West Frontier', 142, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1954, N'Kohgiluyeh-e Boyerahmad', 147, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1955, N'Ajdabiya', 143, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1956, N'Hilmand', 157, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1957, N'Himachal Pradesh', 88, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1958, N'Gardayah', 134, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1959, N'al-Garbiyah', 141, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1960, N'ad-Daqahliyah', 141, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1961, N'at-Tafilah', 154, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1962, N'Chandigarh', 88, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1963, N'al-Buhayrah', 141, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1964, N'Ði Qar', 156, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1965, N'Diyala', 156, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1966, N'Ajlun', 154, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1967, N'Matruh', 141, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1968, N'al-Karak', 154, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1969, N'Kafr-aš-Šayh_', 141, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1970, N'Šamal Sina', 141, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1971, N'Jiangsu', 131, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1972, N'Surt', 143, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1973, N'Alexandria', 141, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1974, N'Dumyat', 141, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1975, N'Schanghai', 131, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1976, N'Bur Said', 141, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1977, N'Rafah', 158, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1978, N'H_an Yunis', 158, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1979, N'al-Mut_anna', 156, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1981, N'Hebron', 158, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1982, N'Dayr-al-Balah', 158, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1983, N'Esfahan', 147, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1984, N'Mizdah', 143, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1985, N'Miyazaki', 145, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1986, N'Janin', 158, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1987, N'Madaba', 154, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1988, N'Marrakech-Tensift-Al Haouz', 152, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1989, N'Gazzah', 158, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1990, N'Šamal Gazzah', 158, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1991, N'Maysan', 156, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1992, N'al-Qadisiyah', 156, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1993, N'Yazd', 147, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1994, N'Baššar', 134, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1995, N'Qandahar', 157, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1996, N'Bayt Lahm', 158, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1997, N'al-Hizam al-Ah_dar', 143, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (1998, N'Amman', 154, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2000, N'al-Quds', 158, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2001, N'Bani Walid', 143, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2002, N'al-Butnan', 143, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2003, N'an-Najaf', 156, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2005, N'Ariha', 158, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2006, N'az-Zarqa', 154, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2007, N'al-Balqa', 154, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2008, N'Ram Allah wal-Birah', 158, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2009, N'Nalut', 143, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2010, N'Warqla', 134, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2011, N'Meknes-Tafilalet', 152, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2012, N'Yafran wa Jadu', 143, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2013, N'Chahar Mahal-e Bakhtiari', 147, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2014, N'Tatawin', 159, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2016, N'Nablus', 158, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2017, N'Salfit', 158, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2018, N'Irbid', 154, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2019, N'Zabul', 157, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2020, N'Bangazi', 143, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2021, N'Oriental', 152, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2022, N'Qalqilyah', 158, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2023, N'Henan', 131, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2024, N'Garyan', 143, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2025, N'Wasit', 156, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2026, N'Kumamoto', 145, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2027, N'Jaraš', 154, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2028, N'Tulkarm', 158, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2029, N'al-Mafraq', 154, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2030, N'Doukkala-Abda', 152, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2031, N'Tubas', 158, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2032, N'Hamilton', 160, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2033, N'Babil', 156, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2034, N'Federally administered Tribal Areas', 142, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2035, N'Tadla-Azilal', 152, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2036, N'Jammu and Kashmir', 88, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2037, N'Saint George', 160, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2038, N'Misratah', 143, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2039, N'Farah', 157, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2040, N'Tarhunah wa Masallatah', 143, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2042, N'al-Marqab', 143, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2043, N'al-Marj', 143, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2045, N'Dara', 161, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2046, N'al-Jifarah', 143, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2047, N'Karbala', 156, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2048, N'Uruzgan', 157, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2049, N'Madeira', 162, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2050, N'Shaanxi', 131, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2051, N'Ilam', 147, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2052, N'Nagasaki', 145, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2053, N'as-Suwayda', 161, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2054, N'an-Naamah', 134, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2055, N'az-Zawiyah', 143, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2056, N'al-Jabal al-Ahdar', 143, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2057, N'Sabratah wa Surman', 143, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2058, N'al-Qubbah', 143, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2059, N'Darnah', 143, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2060, N'Chaouia-Ouardigha', 152, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2061, N'Kochi', 145, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2062, N'Paktika', 157, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2063, N'Tarabulus', 143, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2064, N'Khorasan', 147, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2065, N'al-Bayad', 134, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2066, N'an-Nuqat al-Hums', 143, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2067, N'Oita', 145, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2068, N'Fukuoka', 145, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2069, N'al-Anbar', 156, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2070, N'Saga', 145, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2071, N'al-Qunaytirah', 161, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2072, N'Madaniyin', 159, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2073, N'al-Wad', 134, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2074, N'Ehime', 145, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2075, N'al-Janub', 163, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2076, N'Cheju', 164, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2077, N'Herat', 157, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2078, N'Bagdad', 156, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2079, N'an-Nabatiyah', 163, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2080, N'H_awst', 157, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2081, N'Damaskus', 161, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2082, N'Lorestan', 147, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2083, N'Qibili', 159, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2084, N'al-Biqaa', 163, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2085, N'Gawr', 157, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2086, N'Qabis', 159, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2087, N'Gazni', 157, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2088, N'Casablanca', 152, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2089, N'Paktiya', 157, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2090, N'Wakayama', 145, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2091, N'Markazi', 147, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2092, N'Federal Capital Area', 142, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2093, N'al-Agwat', 134, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2094, N'Jabal Lubnan', 163, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2095, N'Rabat-Salé-Zammour-Zaer', 152, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2096, N'Fès-Boulemane', 152, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2097, N'Salah-ad-Din', 156, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2098, N'Tawzar', 159, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2099, N'Tokushima', 145, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2100, N'Mie', 145, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2101, N'Yamaguchi', 145, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2102, N'Lawgar', 157, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2103, N'Taza-Al Hoceima-Taounate', 152, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2104, N'Nangarhar', 157, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2105, N'Kermanshah', 147, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2106, N'Kagawa', 145, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2107, N'al-Jilfah', 134, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2108, N'Hamadan', 147, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2109, N'Hiroshima', 145, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2110, N'Hims', 161, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2111, N'Gharb-Chrarda-Béni Hssen', 152, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2112, N'Hyogo', 145, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2113, N'aš-Šamal', 163, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2114, N'Safaqis', 159, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2115, N'Osaka', 145, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2116, N'al-Qayrawan', 159, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2117, N'Qafsah', 159, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2118, N'Azad Kashmir', 142, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2119, N'Nara', 145, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2120, N'Biskrah', 134, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2121, N'Bamiyan', 157, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2122, N'Dayr-az-Zawr', 161, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2123, N'Wardag', 157, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2124, N'Kabul', 157, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2125, N'Sidi balabbas', 134, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2126, N'Okayama', 145, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2127, N'Gansu', 131, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2128, N'Chollanam', 164, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2129, N'Sidi Bu Zayd', 159, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2130, N'Shandong', 131, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2131, N'Government controlled area', 165, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2132, N'Shizuoka', 145, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2133, N'Aichi', 145, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2134, N'Tilimsan', 134, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2135, N'Qom', 147, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2136, N'Lagman', 157, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2137, N'Shimane', 145, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2138, N'Kyoto', 145, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2139, N'Tibissah', 134, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2140, N'al-Qasrayn', 159, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2141, N'Saidah', 134, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2142, N'Kordestan', 147, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2143, N'Tartus', 161, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2144, N'Kyongsangnam', 164, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2145, N'Tiyarat', 134, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2146, N'al-Masilah', 134, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2147, N'Kapisa', 157, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2148, N'Gifu', 145, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2149, N'Kunar', 157, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2150, N'Shiga', 145, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2151, N'Nuristan', 157, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2152, N'Badgis', 157, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2153, N'Iráklion', 166, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2154, N'Chiba', 145, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2155, N'Lasíthi', 166, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2156, N'Tangier-Tétouan', 152, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2157, N'Hamah', 161, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2158, N'Parwan', 157, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2159, N'Shanxi', 131, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2160, N'Rethímni', 166, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2161, N'Turkish controlled area', 165, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2162, N'Pusan', 164, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2163, N'Kanagawa', 145, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2164, N'Kwangju', 164, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2165, N'al-Mahdiyah', 159, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2166, N'as-Sulaymaniyah', 156, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2167, N'Sar-e Pul', 157, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2168, N'Semnan', 147, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2169, N'Haniá', 166, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2170, N'Batnah', 134, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2171, N'Teheran', 147, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2172, N'Melilla', 151, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2173, N'Ayn Timušanat', 134, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2174, N'Muaskar', 134, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2175, N'al-Ladiqiyah', 161, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2176, N'Chollabuk', 164, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2177, N'Idlib', 161, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2178, N'H_anšalah', 134, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2179, N'Tottori', 145, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2180, N'ar-Raqqah', 161, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2181, N'at-Tamim', 156, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2182, N'Irbil', 156, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2183, N'Dodekánisos', 166, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2184, N'Fukui', 145, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2185, N'Yamanashi', 145, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2186, N'Nagano', 145, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2187, N'al-Munastir', 159, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2188, N'Wahran', 134, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2189, N'Ulsan', 164, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2190, N'Tokio', 145, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2191, N'Tisamsilt', 134, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2192, N'Baglan', 157, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2193, N'Umm-al-Bawagi', 134, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2194, N'Silyanah', 159, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2195, N'Susah', 159, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2196, N'Kyongsangbuk', 164, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2197, N'Galizan', 134, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2198, N'al-Kaf', 159, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2199, N'Ibaraki', 145, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2200, N'Saitama', 145, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2201, N'Taegu', 164, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2202, N'South Eastern', 167, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2203, N'Satif', 134, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2204, N'Western', 167, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2205, N'Inner Harbour', 167, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2206, N'Jawzjan', 157, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2207, N'Outer Harbour', 167, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2208, N'al-Midyah', 134, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2209, N'Burj Bu Arririj', 134, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2210, N'Hatay', 168, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2211, N'Ceuta', 151, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2212, N'Northern', 167, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2213, N'Northern Areas', 142, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2214, N'Faryab', 157, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2215, N'Mustaganam', 134, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2216, N'Cádiz', 151, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2217, N'Gozo and Comino', 167, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2218, N'Qazvin', 147, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2219, N'aš-Šalif', 134, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2220, N'Suq Ahras', 134, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2221, N'Içel', 168, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2222, N'Halab', 161, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2223, N'Chungchongnam', 164, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2224, N'Milah', 134, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2225, N'Mazandaran', 147, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2226, N'al-Buirah', 134, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2227, N'Azarbayejan-e Gharbi', 147, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2228, N'Chungchongbuk', 164, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2229, N'Antalya', 168, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2230, N'Zanjan', 147, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2231, N'Ayn ad-Dafla', 134, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2232, N'Qusantinah', 134, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2233, N'Gumma', 145, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2234, N'Tochigi', 145, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2235, N'Samangan', 157, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2236, N'Ninawa', 156, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2237, N'Ishikawa', 145, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2238, N'Qalmah', 134, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2239, N'Zagwan', 159, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2240, N'Balh_', 157, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2241, N'Taejon', 164, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2242, N'Kikládes', 166, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2243, N'Málaga', 151, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2244, N'Tah_ar', 157, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2245, N'Bijayah', 134, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2246, N'Nabul', 159, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2247, N'Jijili', 134, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2248, N'Hebei', 131, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2249, N'Jundubah', 159, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2250, N'Blidah', 134, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2251, N'Bajah', 159, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2252, N'al-Hasakah', 161, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2253, N'Iwate', 145, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2254, N'Tibazah', 134, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2255, N'Lakonía', 166, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2256, N'Tizi Wazu', 134, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2257, N'Toyama', 145, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2258, N'Adana', 168, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2259, N'Mugla', 168, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2260, N'Qinghai', 131, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2261, N'Bumardas', 134, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2262, N'Karaman', 168, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2263, N'Sakikdah', 134, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2264, N'Algier', 134, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2265, N'Kilis', 168, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2266, N'Bin Arus', 159, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2267, N'Qunduz', 157, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2268, N'at-Tarif', 134, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2269, N'Sizilien', 169, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2270, N'Badah_šan', 157, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2271, N'Granada', 151, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2272, N'Aryanah', 159, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2273, N'Almería', 151, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2274, N'Annabah', 134, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2275, N'Manubah', 159, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2276, N'Messinía', 166, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2277, N'Golestan', 147, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2278, N'Tunis', 159, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2279, N'Gaziantep', 168, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2280, N'Sanliurfa', 168, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2281, N'Dahuk', 156, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2282, N'Gilan', 147, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2283, N'Konya', 168, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2284, N'Sevilla', 151, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2285, N'Eskisehir', 168, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2286, N'Kyonggi', 164, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2287, N'Burdur', 168, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2288, N'Algarve', 162, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2289, N'Niigata', 145, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2290, N'Binzart', 159, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2291, N'Fukushima', 145, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2292, N'Osmaniye', 168, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2293, N'Lisboa e Vale do Tejo', 162, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2294, N'Mardin', 168, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2295, N'Xinjiang', 131, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2296, N'Arkadía', 166, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2297, N'Kangwon', 164, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2298, N'Huelva', 151, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2299, N'Surhondar', 170, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2300, N'Khatlon', 171, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2301, N'Córdoba', 151, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2302, N'Sirnak', 168, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2303, N'Hakkari', 168, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2304, N'Attikí', 166, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2305, N'Mari', 172, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2306, N'Argolis', 166, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2307, N'Azarbayejan-e Sharqi', 147, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2308, N'Ahal', 172, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2309, N'Murcia', 151, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2310, N'Karotegin', 171, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2311, N'Denizli', 168, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2312, N'Ilía', 166, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2313, N'Jaén', 151, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2314, N'Inchon', 164, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2315, N'Isparta', 168, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2316, N'Kahramanmaras', 168, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2317, N'Gorno-Badakhshan', 171, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2318, N'Alentejo', 162, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2319, N'Aydin', 168, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2320, N'Soul', 164, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2321, N'Batman', 168, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2322, N'Adiyaman', 168, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2323, N'Sámos', 166, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2324, N'Ardabil', 147, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2325, N'Açores', 162, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2326, N'Zákinthos', 166, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2327, N'Siirt', 168, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2328, N'Ahaia', 166, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2329, N'Korinthía', 166, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2330, N'Lebap', 172, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2331, N'Diyarbakir', 168, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2332, N'Alacant', 151, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2333, N'Afyon', 168, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2334, N'Nigde', 168, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2335, N'Hwanghaenamdo', 173, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2336, N'Yamagata', 145, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2337, N'Miyagi', 145, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2338, N'Calabria', 169, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2339, N'Asgabat', 172, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2340, N'Izmir', 168, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2341, N'Hwanghaebukto', 173, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2342, N'Évvoia', 166, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2343, N'Van', 168, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2344, N'Badajoz', 151, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2345, N'Malatya', 168, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2346, N'Kayseri', 168, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2347, N'Albacete', 151, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2348, N'Kefallinía', 166, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2349, N'Voiotiá', 166, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2350, N'Bitlis', 168, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2351, N'Híos', 166, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2352, N'Manisa', 168, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2353, N'Aksaray', 168, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2354, N'Usak', 168, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2355, N'Aitolía kai Akarnanía', 166, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2356, N'Fokís', 166, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2357, N'Nevsehir', 168, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2358, N'Kaskadarya', 170, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2359, N'Kangwon', 173, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2360, N'Elazig', 168, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2361, N'Astara', 174, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2362, N'Ciudad Real', 151, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2363, N'Ningxia', 131, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2364, N'Fthiótis', 166, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2365, N'Dushanbe', 171, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2366, N'Levkás', 166, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2367, N'Sivas', 168, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2368, N'Lnkran', 174, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2369, N'Mus', 168, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2370, N'Evritanía', 166, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2371, N'Bingöl', 168, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2372, N'Pyongannamdo', 173, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2373, N'Valencia', 151, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2374, N'Lerik', 174, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2375, N'Liaoning', 131, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2376, N'Tunceli', 168, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2377, N'Pyongyang', 173, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2378, N'Kütahya', 168, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2379, N'Tianjin', 131, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2380, N'Ordubad', 174, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2381, N'Syunik', 175, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2382, N'Balears', 151, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2383, N'Yardimli', 174, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2384, N'Masalli', 174, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2385, N'Ankara', 168, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2386, N'Sardinien', 169, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2387, N'Préveza', 166, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2388, N'Culfa', 174, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2389, N'Lésvos', 166, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2390, N'Balkan', 172, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2391, N'Zngilan', 174, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2392, N'Magnisía', 166, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2393, N'Kardítsa', 166, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2394, N'Kirsehir', 168, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2395, N'Árta', 166, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2396, N'Babk', 174, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2397, N'Clilabad', 174, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2398, N'Cáceres', 151, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2399, N'Akita', 145, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2400, N'Karabük', 168, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2401, N'Yozgat', 168, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2402, N'Naxçivan', 174, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2403, N'Balikesir', 168, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2404, N'Agri', 168, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2405, N'Erzincan', 168, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2406, N'Tavush', 175, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2407, N'Lárisa', 166, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2408, N'Neimenggu', 131, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2409, N'Cuenca', 151, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2410, N'Neftçala', 174, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2411, N'Qubadli', 174, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2412, N'Erzurum', 168, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2413, N'Hamgyongnamdo', 173, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2414, N'Thesprotía', 166, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2415, N'Kérkira', 166, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2416, N'Sughd', 171, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2417, N'Cbrayil', 174, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2418, N'Samarkand', 170, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2419, N'Sahbuz', 174, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2420, N'Toledo', 151, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2421, N'Buxoro', 170, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2422, N'Tríkala', 166, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2423, N'Füzuli', 174, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2424, N'Bilsuvar', 174, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2425, N'Ioánnina', 166, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2426, N'Xocavnd', 174, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2427, N'Centro', 162, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2428, N'Srur', 174, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2429, N'Beylqan', 174, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2430, N'Kirikkale', 168, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2431, N'Salyan', 174, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2432, N'Çanakkale', 168, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2433, N'Laçin', 174, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2434, N'Vayots Dzor', 175, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2435, N'Sarandë', 176, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2436, N'Pyonganbukto', 173, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2437, N'Beijing', 131, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2438, N'Sdrk', 174, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2439, N'Imisli', 174, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2440, N'Castelló', 151, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2441, N'Bursa', 168, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2442, N'Ararat', 175, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2443, N'Susa', 174, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2444, N'Xankndi', 174, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2445, N'Apulien', 169, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2446, N'Batken', 177, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2447, N'Igdir', 168, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2448, N'li Bayramli', 174, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2449, N'Saatli', 174, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2450, N'Xocali', 174, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2451, N'Teruel', 151, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2452, N'Grevená', 166, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2453, N'Bilecik', 168, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2454, N'Baki', 174, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2455, N'Os', 177, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2456, N'Basilicata', 169, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2457, N'Delvinë', 176, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2458, N'Jizzax', 170, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2459, N'Klbcr', 174, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2460, N'Halkidikí', 166, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2461, N'Piería', 166, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2462, N'Agdam', 174, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2463, N'Tokat', 168, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2464, N'Sabirabad', 174, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2465, N'Madrid', 151, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2466, N'Kozáni', 166, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2467, N'Armavir', 175, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2468, N'Gjirokastër', 176, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2469, N'Haciqabul', 174, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2470, N'Navoiy', 170, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2471, N'Agcabdi', 174, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2472, N'Shirak', 175, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2473, N'Gegharkunik', 175, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2474, N'Kotayk', 175, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2475, N'Vlorë', 176, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2476, N'Gümüshane', 168, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2477, N'Ávila', 151, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2478, N'Kolonjë', 176, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2479, N'Bayburt', 168, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2480, N'Kars', 168, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2481, N'Yerevan', 175, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2482, N'Chagangdo', 173, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2483, N'Guadalajara', 151, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2484, N'Çorum', 168, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2485, N'Taschkent', 170, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2486, N'Aragatsotn', 175, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2487, N'Trtr', 174, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2488, N'Zrdab', 174, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2489, N'Sirdaryo', 170, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2490, N'Përmet', 176, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2491, N'Áyion Óros', 166, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2492, N'Salamanca', 151, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2493, N'Giresun', 168, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2494, N'Tepelenë', 176, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2495, N'Fargona', 170, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2496, N'Imathía', 166, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2497, N'Çankiri', 168, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2498, N'Kürdmir', 174, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2499, N'Campania', 169, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2500, N'Thessaloníki', 166, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2501, N'Abseron', 174, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2502, N'Brd', 174, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2503, N'Sakarya', 168, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2504, N'Bolu', 168, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2505, N'Amasya', 168, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2506, N'Kastoría', 166, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2507, N'Goranboy', 174, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2508, N'Dasksn', 174, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2509, N'Ordu', 168, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2510, N'Évros', 166, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2511, N'Skrapar', 176, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2512, N'Andijon', 170, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2513, N'Gnc', 174, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2514, N'Naftalan', 174, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2515, N'Ucar', 174, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2516, N'Aomori', 145, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2517, N'Qobustan', 174, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2518, N'Tarragona', 151, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2519, N'Agdas', 174, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2520, N'Gdby', 174, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2521, N'Agsu', 174, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2522, N'Sumqayit', 174, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2523, N'Namangan', 170, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2524, N'Flórina', 166, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2525, N'Xanlar', 174, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2526, N'Mallakastër', 176, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2527, N'Berat', 176, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2528, N'Samaxi', 174, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2529, N'Devoll', 176, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2530, N'Yevlax', 174, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2531, N'Korçë', 176, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2532, N'Kavála', 166, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2533, N'Fier', 176, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2534, N'Yalova', 168, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2535, N'Göyçay', 174, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2536, N'Ontüstik Kazakstan', 178, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2537, N'Hamgyongbukto', 173, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2538, N'Pélla', 166, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2539, N'Kocaeli', 168, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2540, N'Edirne', 168, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2541, N'Lori', 175, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2542, N'Samux', 174, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2543, N'Norte', 162, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2544, N'Trabzon', 168, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2545, N'Ismayilli', 174, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2546, N'Segovia', 151, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2547, N'Mingcevir', 174, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2548, N'Ardahan', 168, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2549, N'Kuçovë', 176, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2550, N'Kilkís', 166, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2551, N'Yanggang', 173, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2552, N'Artvin', 168, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2553, N'Xizi', 174, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2554, N'Smkir', 174, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2555, N'Düzce', 168, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2556, N'Gramsh', 176, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2557, N'Pogradec', 176, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2558, N'Sérrai', 166, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2559, N'Tekirdag', 168, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2560, N'Samsun', 168, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2561, N'Istanbul', 168, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2562, N'Xánthi', 166, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2563, N'Rize', 168, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2564, N'Tovuz', 174, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2565, N'Celalabad', 177, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2566, N'Lushnjë', 176, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2567, N'Bitola', 179, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2568, N'Zaragoza', 151, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2569, N'Rodópi', 166, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2570, N'Qbl', 174, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2571, N'Elbasan', 176, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2572, N'Kastamonu', 168, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2573, N'Dráma', 166, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2574, N'Peqin', 176, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2575, N'Librazhd', 176, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2576, N'Quba', 174, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2577, N'Siyzn', 174, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2578, N'Resen', 179, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2579, N'Qazax', 174, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2580, N'Agstafa', 174, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2581, N'Valladolid', 151, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2582, N'Ohrid', 179, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2583, N'Zamora', 151, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2584, N'Kruševo', 179, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2585, N'Gevgelija', 179, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2586, N'Soria', 151, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2587, N'Narin', 177, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2588, N'Struga', 179, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2589, N'Zonguldak', 168, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2590, N'Prilep', 179, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2591, N'Horazm', 170, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2592, N'Kavajë', 176, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2593, N'Demir Hisar', 179, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2594, N'Ski', 174, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2595, N'Dvçi', 174, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2596, N'Barcelona', 151, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2597, N'Lazio', 169, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2598, N'Kavadarci', 179, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2599, N'Berovo', 179, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2600, N'Samtskhe-Javakheti', 180, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2601, N'Dagestan', 181, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2602, N'Durrës', 176, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2603, N'Tirana', 176, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2604, N'Lleida', 151, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2605, N'Valandovo', 179, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2606, N'Kirklareli', 168, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2607, N'Kvemo Kartli', 180, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2608, N'Corse', 182, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2609, N'Smoljan', 183, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2610, N'Molise', 169, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2611, N'Strumica', 179, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2612, N'Blagoevgrad', 183, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2613, N'Sinop', 168, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2614, N'Qax', 174, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2615, N'Qusar', 174, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2616, N'Negotino', 179, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2617, N'Mat', 176, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2618, N'Kicevo', 179, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2619, N'Kardžali', 183, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2620, N'Huesca', 151, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2621, N'Brod', 179, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2622, N'Xaçmaz', 174, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2623, N'Krujë', 176, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2624, N'Debar', 179, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2625, N'Bulqizë', 176, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2626, N'Radoviš', 179, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2627, N'Zaqatala', 174, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2628, N'Burgos', 151, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2629, N'Haskovo', 183, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2630, N'Veles', 179, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2631, N'Korakalpogiston', 170, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2632, N'Ajaria', 180, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2633, N'Gostivar', 179, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2634, N'Kakheti', 180, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2635, N'Talas', 177, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2636, N'Kurbin', 176, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2637, N'Bartin', 168, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2638, N'Dasoguz', 172, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2639, N'Girona', 151, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2640, N'Dibrë', 176, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2641, N'Tiflis', 180, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2642, N'Balakn', 174, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2643, N'Abruzzen', 169, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2644, N'Jilin', 131, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2645, N'Štip', 179, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2646, N'Oguz', 174, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2647, N'Mirditë', 176, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2648, N'Vinica', 179, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2649, N'Lezhë', 176, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2650, N'Palencia', 151, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2651, N'Sveti Nikole', 179, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2652, N'Hokkaido', 145, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2653, N'Mtskheta-Mtianeti', 180, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2654, N'Imereti', 180, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2655, N'Plovdiv', 183, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2656, N'Ourense', 151, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2657, N'Kocani', 179, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2658, N'Skopje', 179, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2659, N'Guria', 180, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2660, N'Pontevedra', 151, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2661, N'Montenegro', 184, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2662, N'Shida Kartli', 180, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2663, N'La Rioja', 151, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2664, N'Tetovo', 179, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2665, N'Pazardžik', 183, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2666, N'Navarra', 151, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2667, N'Delcevo', 179, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2668, N'Burgas', 183, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2669, N'Probištip', 179, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2670, N'Pukë', 176, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2671, N'Kumanovo', 179, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2672, N'Shkodër', 176, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2673, N'León', 151, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2674, N'Kratovo', 179, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2675, N'Kukës', 176, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2676, N'Kjustendil', 183, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2677, N'Stara Zagora', 183, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2678, N'Jambol', 183, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2679, N'Samagrelo and Zemo Svaneti', 180, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2680, N'Kriva Palanka', 179, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2681, N'Malsi e Madhe', 176, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2682, N'Has', 176, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2683, N'Kosovo and Metohija', 184, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2684, N'Rason', 173, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2685, N'Central Serbia', 184, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2686, N'Sofijska oblast', 183, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2687, N'Toscana', 169, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2688, N'Tropojë', 176, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2689, N'Languedoc-Roussillon', 182, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2690, N'Umbria', 169, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2691, N'Raga-Lechkumi and Kverno Svaneti', 180, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2692, N'Lugo', 151, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2693, N'Primorje', 181, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2694, N'Issik-Göl', 177, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2695, N'Sant Julià de Lòria', 185, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2696, N'Pernik', 183, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2697, N'Álava', 151, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2698, N'Escaldes-Engordany', 185, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2699, N'Sliven', 183, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2700, N'Andorra la Vella', 185, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2701, N'Encamp', 185, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2702, N'La Massana', 185, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2703, N'Dubrovnik-Neretva', 186, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2704, N'Canillo', 185, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2705, N'Midi-Pyrénées', 182, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2706, N'Zadar', 186, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2707, N'Ordino', 185, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2708, N'A Coruña', 151, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2709, N'Abkhasia', 180, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2710, N'Cecenija', 181, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2711, N'Split-Dalmacija', 186, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2712, N'Sofija grad', 183, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2713, N'Marken', 169, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2714, N'Republika Srpska', 187, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2715, N'Taraz', 178, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2716, N'Alanija', 181, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2717, N'Çuy', 177, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2718, N'Ingušetija', 181, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2719, N'Cantabria', 151, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2720, N'Gabrovo', 183, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2721, N'Lovec', 183, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2722, N'Biskek', 177, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2723, N'Ruse', 183, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2724, N'Veliko Tarnovo', 183, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2725, N'Aquitaine', 182, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2726, N'Vizcaya', 151, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2727, N'Guipúzcoa', 151, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2728, N'Šumen', 183, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2729, N'Almaty', 178, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2730, N'Asturias', 151, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2731, N'Varna', 183, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2732, N'Provence-Alpes-Côte-dAzur', 182, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2733, N'Federacija Bosna i Hercegovina', 187, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2734, N'Atyrau', 178, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2735, N'Targovište', 183, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2736, N'Kabardino-Balkarija', 181, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2737, N'Vraca', 183, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2738, N'Mankistau', 178, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2739, N'Montana', 183, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2740, N'Pleven', 183, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2741, N'Karacaj-Cerkessija', 181, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2742, N'Vojvodina', 184, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2743, N'Razgrad', 183, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2744, N'Dobric', 183, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2745, N'Krasnodar', 181, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2746, N'Šibenik-Knin', 186, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2747, N'Ömnögovi', 188, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2748, N'Sisak-Moslavina', 186, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2749, N'Zagreb', 186, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2750, N'Vidin', 183, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2751, N'Teleorman', 189, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2752, N'Stavropol', 181, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2753, N'Fontvieille', 190, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2754, N'Giurgiu', 189, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2755, N'La Condamine', 190, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2756, N'Monaco-Ville', 190, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2757, N'Monte Carlo', 190, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2758, N'Olt', 189, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2759, N'Dolj', 189, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2760, N'Ligurien', 169, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2761, N'Constanta', 189, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2762, N'Emilia-Romagna', 169, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2763, N'Silistra', 183, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2764, N'Fiorentino', 191, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2765, N'Akmechet', 178, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2766, N'Chiesanuova', 191, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2767, N'Montegiardino', 191, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2768, N'Borgo Maggiore', 191, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2769, N'San Marino', 191, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2770, N'Faetano', 191, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2771, N'Acquaviva', 191, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2772, N'Domagnano', 191, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2773, N'Serravalle', 191, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2774, N'Sahalin', 181, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2775, N'Heilongjiang', 131, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2776, N'Voronež', 181, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2777, N'Calarasi', 189, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2778, N'Rhône-Alpes', 182, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2779, N'Mehedinti', 189, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2780, N'Ilfov', 189, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2781, N'Adygeja', 181, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2782, N'Piemonte', 169, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2783, N'Ialomita', 189, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2784, N'Krym', 192, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2785, N'Arges', 189, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2786, N'Bukarest', 189, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2787, N'Dâmbovita', 189, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2788, N'Lika-Senj', 186, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2789, N'Vâlcea', 189, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2790, N'Gorj', 189, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2791, N'Sevastopol', 192, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2792, N'Auvergne', 182, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2793, N'Caras-Severin', 189, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2794, N'Hovd', 188, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2795, N'Prahova', 189, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2796, N'Tulcea', 189, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2797, N'Primorje-Gorski Kotar', 186, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2798, N'Varaždin', 186, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2799, N'Istra', 186, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2800, N'Braila', 189, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2801, N'Buzau', 189, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2802, N'Vukovar-Srijem', 186, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2803, N'Lombardei', 169, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2804, N'Dornogovi', 188, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2805, N'Veneto', 169, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2806, N'Limousin', 182, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2807, N'Karlovac', 186, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2808, N'Slavonski Brod-Posavina', 186, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2809, N'Poitou-Charentes', 182, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2810, N'Osijek-Baranja', 186, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2811, N'Timis', 189, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2812, N'Virovitica-Podravina', 186, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2813, N'Hanty-Mansija', 181, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2814, N'Požega-Slavonija', 186, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2815, N'Odeska', 192, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2816, N'Hunedoara', 189, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2817, N'Kalmykija', 181, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2818, N'Galati', 189, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2819, N'Vrancea', 189, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2820, N'Brasov', 189, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2821, N'Obalno-kraška', 193, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2822, N'Bjelovar-Bilogora', 186, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2823, N'Valle dAosta', 169, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2824, N'Notranjsko-kraška', 193, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2825, N'Jugovžodna Slovenija', 193, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2826, N'Friuli-Venezia Giulia', 169, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2827, N'Alba', 189, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2828, N'Sibiu', 189, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2829, N'Soltüstik Kazakstan', 178, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2830, N'Covasna', 189, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2831, N'Gagauzia', 194, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2832, N'Grad Zagreb', 186, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2833, N'Trentino-Alto Adige', 169, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2834, N'Astrahan', 181, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2835, N'Dundgovi', 188, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2836, N'Baranya', 195, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2837, N'Tessin', 196, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2838, N'Goriška', 193, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2839, N'Spodnjeposavska', 193, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2840, N'Taraclia', 194, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2841, N'Cahul', 194, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2842, N'Osrednjeslovenska', 193, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2843, N'Wallis', 196, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2844, N'Vaslui', 189, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2845, N'Bács-Kiskun', 195, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2846, N'Somogy', 195, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2847, N'Koroška', 193, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2848, N'Koprivnica-Križevci', 186, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2849, N'Arad', 189, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2850, N'Krapina-Zagorje', 186, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2851, N'Rostov', 181, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2852, N'Medimurje', 186, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2853, N'Gorenjska', 193, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2854, N'Savinjska', 193, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2855, N'Khersonska', 192, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2856, N'Mures', 189, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2857, N'Qaragandy', 178, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2858, N'Genf', 196, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2859, N'Tolna', 195, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2860, N'Bacau', 189, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2861, N'Zasavska', 193, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2862, N'Harghita', 189, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2863, N'Bourgogne', 182, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2864, N'Waadt', 196, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2865, N'Csongrád', 195, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2866, N'Graubünden', 196, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2867, N'Franche-Comté', 182, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2868, N'Övörhangaj', 188, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2869, N'Cantemir', 194, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2870, N'Békés', 195, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2871, N'Podravska', 193, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2872, N'Pays-de-la-Loire', 182, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2873, N'Basarabeasca', 194, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2874, N'Govisumber', 188, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2875, N'Centre', 182, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2876, N'Zala', 195, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2877, N'Zaporizka', 192, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2878, N'Govi-Altaj', 188, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2879, N'Bihor', 189, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2880, N'Bern', 196, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2881, N'Freiburg', 196, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2882, N'Cluj', 189, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2883, N'Leova', 194, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2884, N'Stefan Voda', 194, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2885, N'Pomurska', 193, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2886, N'Kärnten', 197, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2887, N'Cimislia', 194, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2888, N'Uri', 196, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2889, N'Mykolayivska', 192, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2890, N'Darhan-Uul', 188, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2891, N'Tirol', 197, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2892, N'Causeni', 194, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2893, N'Slobozia', 194, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2894, N'Sühbaatar', 188, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2895, N'Bajanhongor', 188, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2896, N'Neamt', 189, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2897, N'Fejér', 195, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2898, N'Bistrita-Nasaud', 189, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2899, N'Steiermark', 197, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2900, N'Saint-Pierre', 198, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2901, N'Obwalden', 196, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2902, N'Veszprém', 195, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2903, N'Habarovsk', 181, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2904, N'Tighina', 194, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2905, N'Jász-Nagykun-Szolnok', 195, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2906, N'Tiraspol', 194, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2907, N'Neuenburg', 196, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2908, N'Iasi', 189, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2909, N'Luzern', 196, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2910, N'Anenii Noi', 194, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2911, N'Nidwalden', 196, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2912, N'Glarus', 196, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2913, N'Salaj', 189, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2914, N'Ialoveni', 194, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2915, N'Burgenland', 197, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2916, N'Schwyz', 196, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2917, N'Vas', 195, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2918, N'Sigis Kazakstan', 178, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2919, N'Donetska', 192, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2920, N'Sankt Gallen', 196, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2921, N'Pest', 195, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2922, N'Hajdú-Bihar', 195, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2923, N'Chisinau', 194, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2924, N'Solothurn', 196, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2925, N'Balzers', 199, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2926, N'Vorarlberg', 197, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2927, N'Nisporeni', 194, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2928, N'Miquelon-Langlade', 198, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2929, N'Zug', 196, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2930, N'Triesen', 199, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2931, N'Triesenberg', 199, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2932, N'Salzburg', 197, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2933, N'Vaduz', 199, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2934, N'Aargau', 196, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2935, N'Straseni', 194, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2936, N'Grigoriopol', 194, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2937, N'Jura', 196, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2938, N'Schaan', 199, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2939, N'Planken', 199, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2940, N'Zürich', 196, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2941, N'Eschen', 199, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2942, N'Ungheni', 194, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2943, N'Gamprin', 199, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2944, N'Mauren', 199, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2945, N'Criuleni', 194, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2946, N'Schellenberg', 199, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2947, N'Suceava', 189, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2948, N'Ruggell', 199, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2949, N'Calarasi', 194, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2950, N'Dubasari municipiu', 194, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2951, N'Bretagne', 182, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2952, N'Appenzell-Ausser Rhoden', 196, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2953, N'Appenzell Inner-Rhoden', 196, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2954, N'Hèntij', 188, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2955, N'Basel-Landschaft', 196, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2956, N'Maramures', 189, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2957, N'Satu Mare', 189, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2958, N'Orhei', 194, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2959, N'Bayern', 200, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2960, N'Gyor-Moson-Sopron', 195, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2961, N'Thurgau', 196, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2962, N'Alsace', 182, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2963, N'Arhangaj', 188, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2964, N'Komárom-Esztergom', 195, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2965, N'Telenesti', 194, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2966, N'Budapest', 195, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2967, N'Heves', 195, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2968, N'Botosani', 189, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2969, N'Schaffhausen', 196, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2970, N'Dnipropetrovska', 192, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2971, N'Baden-Württemberg', 200, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2972, N'Basel-Stadt', 196, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2973, N'Falesti', 194, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2974, N'Champagne-Ardenne', 182, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2975, N'Volgograd', 181, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2976, N'Oberösterreich', 197, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2977, N'Sîngerei', 194, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2978, N'Niederösterreich', 197, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2979, N'Szabolcs-Szatmár-Bereg', 195, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2980, N'Glodeni', 194, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2981, N'Hîncesti', 194, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2982, N'Jevrej', 181, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2983, N'Töv', 188, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2984, N'Zavhan', 188, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2985, N'Rezina', 194, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2986, N'Nitrianský', 201, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2987, N'Balti', 194, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2988, N'Borsod-Abaúj-Zemplén', 195, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2989, N'Rîbnita', 194, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2990, N'Soldanesti', 194, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2991, N'Aqtöbe', 178, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2992, N'Nógrád', 195, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2993, N'Trnavský', 201, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2994, N'Lorraine', 182, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2995, N'Floresti', 194, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2996, N'Ulaanbaatar', 188, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2997, N'Zakarpatska', 192, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2998, N'Kirovohradska', 192, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (2999, N'Rîscani', 194, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3000, N'Luhanska', 192, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3001, N'Camenca', 194, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3002, N'Chernivetska', 192, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3003, N'Drochia', 194, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3004, N'Dornod', 188, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3005, N'Île-de-France', 182, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3006, N'Vinnytska', 192, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3007, N'Bratislavský', 201, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3008, N'Ivano-Frankivska', 192, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3009, N'Soroca', 194, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3010, N'Edinet', 194, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3011, N'Banskobystrický', 201, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3012, N'Basse-Normandie', 182, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3013, N'Wien', 197, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3014, N'Donduseni', 194, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3015, N'Briceni', 194, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3016, N'Košický', 201, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3017, N'Ocnita', 194, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3018, N'Ternopilska', 192, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3019, N'Trencianský', 201, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3020, N'Jihoceský', 202, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3021, N'Khmelnytska', 192, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3022, N'Haute-Normandie', 182, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3023, N'Cherkaska', 192, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3024, N'Jihomoravský', 202, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3025, N'Bulgan', 188, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3026, N'Lvivska', 192, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3027, N'Sèlèngè', 188, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3028, N'Batis Kazakstan', 178, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3029, N'Picardie', 182, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3030, N'Žilinský', 201, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3031, N'Kharkivska', 192, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3032, N'Zlínský', 202, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3033, N'Prešovský', 201, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3034, N'Vysocina', 202, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3035, N'Bajan-Ölgij', 188, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3036, N'Rheinland-Pfalz', 200, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3037, N'Poltavska', 192, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3038, N'Orhon', 188, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3039, N'Plzenský', 202, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3040, N'Saarland', 200, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3041, N'Saint Brelade', 203, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3042, N'Saint Clement', 203, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3043, N'Grouville', 203, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3044, N'Saint Helier', 203, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3045, N'Saint Saviour', 203, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3046, N'Saint Peter', 203, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3047, N'Saint Lawrence', 203, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3048, N'Saint Martin', 203, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3049, N'Saint Ouen', 203, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3050, N'Trinity', 203, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3051, N'Saint Mary', 203, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3052, N'Saint John', 203, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3053, N'Pavlodar', 178, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3054, N'Malopolskie', 204, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3055, N'Olomoucký', 202, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3056, N'Kyyivska', 192, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3057, N'Hessen', 200, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3058, N'Amur', 181, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3059, N'Torteval', 205, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3060, N'Podkarpackie', 204, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3061, N'Sark', 205, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3062, N'Saint Peter Port', 205, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3063, N'Esch-sur-Alzette', 206, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3064, N'Remich', 206, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3065, N'Stredoceský', 202, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3066, N'Moravskoslezský', 202, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3067, N'Luxemburg', 207, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3068, N'Luxemburg', 206, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3069, N'Capellen', 206, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3070, N'Cita', 181, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3071, N'Grevenmacher', 206, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3072, N'Pardubický', 202, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3073, N'Qostanay', 178, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3074, N'Hövsgöl', 188, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3075, N'Slaskie', 204, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3076, N'Mersch', 206, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3077, N'Redange', 206, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3078, N'Zhytomyrska', 192, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3079, N'Echternach', 206, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3080, N'Diekirch', 206, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3081, N'Namur', 207, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3082, N'Wiltz', 206, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3083, N'Vianden', 206, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3084, N'Karlovarský', 202, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3085, N'Belgorod', 181, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3086, N'Clervaux', 206, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3087, N'Nord-Pas-de-Calais', 182, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3088, N'Uvs', 188, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3089, N'Gorno-Altaj', 181, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3090, N'Hennegau', 207, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3091, N'Královéhradecký', 202, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3092, N'Prag', 202, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3093, N'Brandenburg', 200, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3094, N'Ústecký', 202, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3095, N'Rivnenska', 192, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3096, N'Saratov', 181, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3097, N'Opolskie', 204, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3098, N'Lüttich', 207, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3099, N'Thüringen', 200, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3100, N'Sachsen', 200, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3101, N'Tyva', 181, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3102, N'Burjatija', 181, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3103, N'Dolnoslaskie', 204, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3104, N'Sumska', 192, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3105, N'Volynska', 192, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3106, N'Nordrhein-Westfalen', 200, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3107, N'Jaroslavl', 181, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3108, N'Swietokrzyskie', 204, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3109, N'Kyyiv', 192, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3110, N'Lubelskie', 204, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3111, N'Chernihivska', 192, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3112, N'Liberecký', 202, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3113, N'Brabant Wallon', 207, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3114, N'Aga', 181, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3115, N'West-Flandern', 207, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3116, N'Flämisch Brabant', 207, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3117, N'Limburg', 207, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3118, N'Ost-Flandern', 207, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3119, N'Orenburg', 181, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3120, N'Limburg', 208, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3121, N'Brüssel', 207, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3122, N'Zuid-Holland', 208, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3123, N'Sachsen-Anhalt', 200, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3124, N'Altaj', 181, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3125, N'Antwerpen', 207, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3126, N'Moskovskaja Oblast', 181, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3127, N'Kursk', 181, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3128, N'Aqmola', 178, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3129, N'Lódzkie', 204, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3130, N'Mazowieckie', 204, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3131, N'Wielkopolskie', 204, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3132, N'Noord-Brabant', 208, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3133, N'Zeeland', 208, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3134, N'Niedersachsen', 200, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3135, N'Kamcatka', 181, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3136, N'Irkutsk', 181, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3137, N'Cork', 209, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3138, N'Lubuskie', 204, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3139, N'Overijssel', 208, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3140, N'Gelderland', 208, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3141, N'Brèst', 210, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3142, N'Homjel', 210, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3143, N'Tambov', 181, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3144, N'Baškortostan', 181, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3145, N'Kerry', 209, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3146, N'Utrecht', 208, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3147, N'Lipeck', 181, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3148, N'Orjol', 181, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3149, N'Waterford', 209, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3150, N'Samara', 181, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3151, N'Brjansk', 181, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3152, N'Noord-Holland', 208, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3153, N'Wexford', 209, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3154, N'Tipperary South Riding', 209, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3155, N'Flevoland', 208, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3156, N'Limerick', 209, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3157, N'Podlaskie', 204, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3158, N'Celjabinsk', 181, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3159, N'Kujawsko-Pomorskie', 204, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3160, N'Penza', 181, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3161, N'Kilkenny', 209, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3162, N'Berlin', 200, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3163, N'Clare', 209, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3164, N'Hakasija', 181, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3165, N'Drenthe', 208, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3166, N'Tipperary North Riding', 209, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3167, N'Carlow', 209, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3168, N'Uljanovsk', 181, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3169, N'Zachodnio-Pomorskie', 204, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3170, N'Kemerovo', 181, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3171, N'Wicklow', 209, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3172, N'Minskaja Voblasts', 210, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3173, N'Ust-Orda', 181, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3174, N'Laois', 209, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3175, N'Friesland', 208, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3176, N'Kildare', 209, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3177, N'Groningen', 208, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3178, N'Galway', 209, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3179, N'Bremen', 200, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3180, N'Offaly', 209, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3181, N'Hrodna', 210, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3182, N'Mecklenburg-Vorpommern', 200, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3183, N'Mahiljow', 210, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3184, N'Tula', 181, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3185, N'Warminsko-Mazurskie', 204, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3186, N'Dublin', 209, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3187, N'Krasnojarsk', 181, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3188, N'Schleswig-Holstein', 200, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3189, N'Meath', 209, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3190, N'Westmeath', 209, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3191, N'Kaluga', 181, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3192, N'Rjazan', 181, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3193, N'Hamburg', 200, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3194, N'Longford', 209, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3195, N'Mayo', 209, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3196, N'Roscommon', 209, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3197, N'Pomorskie', 204, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3198, N'Smolensk', 181, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3199, N'Louth', 209, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3200, N'Novosibirsk', 181, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3201, N'Omsk', 181, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3202, N'Mordovija', 181, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3203, N'Minsk', 210, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3204, N'Cavan', 209, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3205, N'Leitrim', 209, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3206, N'Monaghan', 209, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3207, N'Alytaus', 211, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3208, N'Port Saint Mary', 212, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3209, N'Port Erin', 212, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3210, N'Castletown', 212, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3211, N'Douglas', 212, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3212, N'Vilniaus', 211, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3213, N'Onchan', 212, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3214, N'Peel', 212, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3215, N'Laxey', 212, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3216, N'Sligo', 209, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3217, N'Ramsey', 212, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3218, N'Kaliningrad', 181, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3219, N'Tatarstan', 181, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3220, N'Vicebsk', 210, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3221, N'Marijampoles', 211, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3222, N'Kurgan', 181, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3223, N'Donegal', 209, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3224, N'Kauno', 211, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3225, N'Storstrøm', 213, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3226, N'Nižnij Novgorod', 181, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3227, N'Sønderjylland', 213, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3228, N'Fyn', 213, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3229, N'Cuvašija', 181, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3230, N'Bornholm', 213, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3231, N'Taurages', 211, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3232, N'Klaipedos', 211, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3233, N'Utenos', 211, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3234, N'Vestsjælland', 213, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3235, N'Vladimir', 181, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3236, N'Ribe', 213, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3237, N'Roskilde', 213, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3238, N'Skåne', 214, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3239, N'Vejle', 213, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3240, N'Panevežio', 211, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3241, N'Tjumen', 181, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3242, N'København', 213, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3243, N'Moskau', 181, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3244, N'Šiauliu', 211, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3245, N'Telšiu', 211, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3246, N'Frederiksborg', 213, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3247, N'Pskov', 181, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3248, N'Tver', 181, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3249, N'Marij El', 181, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3250, N'Daugavpils pilseta', 215, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3251, N'Kraslavas', 215, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3252, N'Ringkøbing', 213, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3253, N'Århus', 213, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3254, N'Saha', 181, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3255, N'Daugavpils', 215, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3256, N'Udmurtija', 181, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3257, N'Blekinge', 214, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3258, N'Jekabspils', 215, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3259, N'Kirov', 181, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3260, N'Tomsk', 181, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3261, N'Viborg', 213, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3262, N'Preilu', 215, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3263, N'Sverdlovsk', 181, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3264, N'Ludzas', 215, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3265, N'Bauskas', 215, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3266, N'Perm', 181, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3267, N'Liepajas', 215, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3268, N'Dobeles', 215, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3269, N'Liepaja', 215, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3270, N'Rezekne', 215, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3271, N'Ivanovo', 181, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3272, N'Rezeknes', 215, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3273, N'Aizkraukles', 215, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3274, N'Madonas', 215, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3275, N'Nordjylland', 213, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3276, N'Jelgava', 215, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3277, N'Halland', 214, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3278, N'Kalmar', 214, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3279, N'Kuldigas', 215, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3280, N'Saldus', 215, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3281, N'Ogres', 215, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3282, N'Rigas', 215, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3283, N'Kronoberg', 214, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3284, N'Jelgavas', 215, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3285, N'Tukuma', 215, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3286, N'Riga', 215, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3287, N'Jurmala pilseta', 215, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3288, N'Talsu', 215, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3289, N'Balvu', 215, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3290, N'Jönköping', 214, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3291, N'Gulbenes', 215, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3292, N'Cesu', 215, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3293, N'Ventspils', 215, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3294, N'Novgorod', 181, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3295, N'Ventspils pilseta', 215, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3296, N'Valkas', 215, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3297, N'Aluksnes', 215, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3298, N'Kostroma', 181, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3299, N'Västra Götaland', 214, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3300, N'Limbažu', 215, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3301, N'Valmieras', 215, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3302, N'Voru', 216, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3303, N'Valga', 216, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3304, N'Gotland', 214, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3305, N'Korjakija', 181, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3306, N'Pärnu', 216, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3307, N'Polva', 216, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3308, N'Viljandi', 216, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3309, N'Vest-Agder', 217, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3310, N'Tartu', 216, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3311, N'Saare', 216, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3312, N'Aust-Agder', 217, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3313, N'Östergötland', 214, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3314, N'Rogaland', 217, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3315, N'Jogeva', 216, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3316, N'Lääne', 216, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3317, N'Järva', 216, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3318, N'Södermanland', 214, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3319, N'Rapla', 216, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3320, N'Hiiu', 216, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3321, N'Leningrad', 181, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3322, N'Buskerud', 217, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3323, N'Vologda', 181, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3324, N'Telemark', 217, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3325, N'Stockholm', 214, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3326, N'Ida-Viru', 216, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3327, N'Lääne-Viru', 216, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3328, N'Komi-Permjak', 181, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3329, N'Vestfold', 217, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3330, N'Østfold', 217, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3331, N'Harju', 216, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3332, N'Örebro', 214, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3333, N'Värmland', 214, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3334, N'Akershus', 217, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3335, N'Västmanland', 214, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3336, N'Hordaland', 217, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3337, N'Magadan', 181, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3338, N'Uppsala', 214, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3339, N'Comilla', 181, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3340, N'Sankt Petersburg', 181, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3341, N'Uusimaa', 218, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3342, N'Narsaq', 219, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3343, N'Ahvenanmaa', 218, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3344, N'Hedmark', 217, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3345, N'Nanortalik', 219, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3346, N'Varsinais-Suomi', 218, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3347, N'Oppland', 217, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3348, N'Dalarna', 214, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3349, N'Sogn og Fjordane', 217, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3350, N'Evenkija', 181, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3351, N'Itä-Uusimaa', 218, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3352, N'Kymenlaakso', 218, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3353, N'Qaqortoq', 219, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3354, N'Gävleborg', 214, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3355, N'Päijät-Häme', 218, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3356, N'Kanta-Häme', 218, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3357, N'Etelä-Karjala', 218, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3358, N'Arhangelsk', 181, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3359, N'Karelija', 181, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3360, N'Satakunta', 218, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3361, N'Pirkanmaa', 218, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3362, N'Paamiut', 219, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3363, N'Ivittuut', 219, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3364, N'Suðuroy', 220, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3365, N'Etelä-Savo', 218, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3366, N'Keski-Suomi', 218, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3367, N'Syðra Eysturoy', 220, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3368, N'Sandoy', 220, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3369, N'Vága', 220, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3370, N'Pohjois-Karjala', 218, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3371, N'Streymoy', 220, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3372, N'Tórshavn', 220, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3373, N'Møre og Romsdal', 217, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3374, N'Qeqertarsuaq', 219, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3375, N'Etelä-Pohjanmaa', 218, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3376, N'Norðara Eysturoy', 220, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3377, N'Klaksvík', 220, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3378, N'Norðoy', 220, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3379, N'Pohjanmaa', 218, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3380, N'Pohjois-Savo', 218, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3381, N'Nordland', 217, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3382, N'Västernorrland', 214, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3383, N'Sør-Trøndelag', 217, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3384, N'Cukotka', 181, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3385, N'Nuuk', 219, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3386, N'Jamalo-Nenets', 181, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3387, N'Jämtland', 214, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3388, N'Keski-Pohjanmaa', 218, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3389, N'Nord-Trøndelag', 217, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3390, N'Suðurland', 221, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3391, N'Pohjois-Pohjanmaa', 218, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3392, N'Västerbotten', 214, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3393, N'Suðurnes', 221, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3394, N'Norðurland vestra', 221, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3395, N'Höfuðborgarsvæði', 221, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3396, N'Kainuu', 218, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3397, N'Austurland', 221, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3398, N'Vesturland', 221, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3399, N'Vestfirðir', 221, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3400, N'Maniitsoq', 219, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3401, N'Norrbotten', 214, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3402, N'Ammassalik', 219, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3403, N'Norðurland eystra', 221, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3404, N'Lappland', 218, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3405, N'Sisimiut', 219, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3406, N'Murmansk', 181, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3407, N'Nenets', 181, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3408, N'Kangaatsiaq', 219, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3409, N'Troms', 217, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3410, N'Qasigiannguit', 219, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3411, N'Aasiaat', 219, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3412, N'Finnmark', 217, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3413, N'Ilulissat', 219, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3414, N'Tajmyr', 181, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3415, N'Illoqqortoormiut', 219, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3416, N'Uummannaq', 219, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3417, N'Upernavik', 219, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3418, N'Qaanaaq', 219, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3419, N'Udenfor kommunal inddeling', 219, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3420, N'Svalbard', 222, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3421, N'New York', 223, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3422, N'Massachusetts', 223, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3423, N'Pennsylvania', 223, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3424, N'Delaware', 223, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3425, N'District of Columbia', 223, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3426, N'Virginia', 223, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3427, N'Maryland', 223, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3428, N'West Virginia', 223, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3429, N'North Carolina', 223, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3430, N'Rhode Island', 223, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3431, N'South Carolina', 223, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3432, N'Georgia', 223, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3433, N'New Hampshire', 223, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3434, N'Florida', 223, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3435, N'Alabama', 223, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3436, N'Tennessee', 223, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3437, N'Mississippi', 223, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3438, N'Maine', 223, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3439, N'Kentucky', 223, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3440, N'Ohio', 223, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3441, N'Indiana', 223, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3442, N'Michigan', 223, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3443, N'Iowa', 223, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3444, N'Vermont', 223, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3445, N'Wisconsin', 223, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3446, N'Minnesota', 223, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3447, N'South Dakota', 223, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3448, N'North Dakota', 223, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3449, N'Montana', 223, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3450, N'Illinois', 223, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3451, N'Connecticut', 223, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3452, N'Puerto Rico', 223, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3453, N'Missouri', 223, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3454, N'Kansas', 223, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3455, N'Nebraska', 223, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3456, N'Louisiana', 223, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3457, N'New Jersey', 223, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3458, N'Arkansas', 223, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3459, N'Oklahoma', 223, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3460, N'Texas', 223, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3461, N'Colorado', 223, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3462, N'Virgin Islands', 223, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3463, N'Wyoming', 223, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3464, N'Idaho', 223, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3465, N'Utah', 223, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3466, N'Arizona', 223, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3467, N'New Mexico', 223, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3468, N'Nevada', 223, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3469, N'California', 223, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3470, N'Hawaii', 223, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3471, N'American Samoa', 223, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3472, N'Guam', 223, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3473, N'Palau', 223, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3474, N'Federated States of Micronesia', 223, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3475, N'Northern Mariana Islands', 223, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3476, N'Marshall Islands', 223, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3477, N'Oregon', 223, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3478, N'Washington', 223, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3479, N'Alaska', 223, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3480, N'Newfoundland', 224, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3481, N'Nova Scotia', 224, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3482, N'Prince Edward Island', 224, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3483, N'New Brunswick', 224, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3484, N'Quebec', 224, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3485, N'Ontario', 224, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3486, N'Manitoba', 224, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3487, N'Saskatchewan', 224, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3488, N'Alberta', 224, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3489, N'British Columbia', 224, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3490, N'Nunavut', 224, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3491, N'Northwest Territories', 224, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3492, N'Yukon Territory', 224, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3493, N'Grampian', 225, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3494, N'Hertfordshire', 225, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3495, N'West Midlands', 225, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3496, N'Warwickshire', 225, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3497, N'Hereford & Worcester', 225, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3498, N'Staffordshire', 225, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3499, N'Avon', 225, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3500, N'Somerset', 225, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3501, N'Wiltshire', 225, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3502, N'Lancashire', 225, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3503, N'West Yorkshire', 225, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3504, N'North Yorkshire', 225, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3505, N'Dorset', 225, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3506, N'Hampshire', 225, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3507, N'East Sussex', 225, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3508, N'West Sussex', 225, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3509, N'Sussex', 225, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3510, N'Kent', 225, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3511, N'Antrim', 225, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3512, N'Down', 225, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3513, N'Londonderry', 225, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3514, N'Armagh', 225, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3515, N'Tyrone', 225, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3516, N'Fermanagh', 225, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3517, N'Cumbria', 225, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3518, N'Cambridgeshire', 225, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3519, N'Essex', 225, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3520, N'Suffolk', 225, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3521, N'South Glamorgan', 225, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3522, N'Mid Glamorgan', 225, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3523, N'Cheshire', 225, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3524, N'Merseyside', 225, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3525, N'Clwyd', 225, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3526, N'Surrey', 225, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3527, N'Tayside', 225, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3528, N'Derbyshire', 225, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3529, N'Dumfries & Galloway', 225, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3530, N'Durham', 225, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3531, N'South Yorkshire', 225, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3532, N'Humberside', 225, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3533, N'Lincolnshire', 225, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3534, N'Nottinghamshire', 225, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3535, N'Middlesex', 225, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3536, N'Lothian', 225, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3537, N'Borders', 225, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3538, N'West Lothian', 225, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3539, N'Devon', 225, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3540, N'Central', 225, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3541, N'Strathclyde', 225, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3542, N'Gloucestershire', 225, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3543, N'Hapshire', 225, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3544, N'Berkshire', 225, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3545, N'Buckinghamshire', 225, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3546, N'Western Isles', 225, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3547, N'Norfolk', 225, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3548, N'Highland', 225, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3549, N'Fife', 225, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3550, N'Powys', 225, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3551, N'Leicestershire', 225, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3552, N'Gwynedd', 225, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3553, N'Bedfordshire', 225, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3554, N'Greater Manchester', 225, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3555, N'London', 225, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3556, N'Tyne & Wear', 225, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3557, N'Northumberland', 225, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3558, N'Northamptonshire', 225, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3559, N'Gwent', 225, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3560, N'Oxfordshire', 225, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3561, N'Isle Of Bute', 225, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3562, N'Cornwall', 225, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3563, N'Isle Of White', 225, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3564, N'West Glamorgan', 225, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3565, N'Dyfed', 225, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3566, N'Shropshire', 225, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3567, N'Cleveland', 225, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3568, N'Shetlands', 225, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3569, N'Australian Capital Territory', 226, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3570, N'Northern Territory', 226, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3571, N'South Australia', 226, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3572, N'New South Wales', 226, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3573, N'Victoria', 226, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3574, N'Queensland', 226, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3575, N'Western Australia', 226, 1);
    
INSERT districts (district_id, district_name,  country_id, enabled) VALUES (3576, N'Tasmania', 226, 1);
    
