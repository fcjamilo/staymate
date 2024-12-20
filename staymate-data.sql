INSERT INTO public.boarding_houses VALUES 
(211,'Obico Boarding House',9234567890,'purok 3-c'),
	(212,'Monter Boarding House',9518126390,'purok 3-c'),
	(213,'Lasco Boarding House',946528448,'purok 3'),
	(214,'Jemimah Boarding House',9071602718,'purok 6'),
	(215,'Blue Heavens Boarding House',9123456789,'purok 3-c'),
	(216,'Berdin Boarding House',9105272424,'purok 3'),
	(217,'4 Angels Boarding House',9145678901,'purok 3'),
	(218,'TGBG Boarding House',9060316074,'villaparaiso'),
	(219,'Cabardo Boarding House',9484347592,'purok 6'),
	(220,'Angels Boarding House',9975000713,'purok 3-c');

UPDATE public.boarding_houses SET latitude = 0 WHERE latitude IS NULL;
UPDATE public.boarding_houses SET longitude = 0 WHERE longitude IS NULL;

ALTER TABLE public.boarding_houses
ALTER COLUMN latitude SET NOT NULL;

ALTER TABLE public.boarding_houses
ALTER COLUMN longitude SET NOT NULL;

INSERT INTO public.users VALUES 
(111,'Megan','Thomas','mthomas@gmail.com'),
(112,'Olivia','Perez','operez@gmail.com'),
	(113,'William','King','wking@gmail.com'),
	(114,'Sophia','Scott','sscott@gmail.com'),
	(115,'Benjamin','Young','byoung@gmail.com'),
	(116,'Emma','Harris','eharris@gmail.com'),
	(117,'Lucas','Clark','lclark@gmail.com'),
	(118,'Grace','Walker','gwalker@gmail.com'),
	(119,'Alexander','Allen','aallen@gmail.com'),
	(120,'Mia','Smith','msmith@gmail.com');

INSERT INTO public.favorites VALUES 
(11,117,214),
	(12,112,218),
	(13,120,211),
	(14,114,217),
	(15,111,213),
	(16,118,219),
	(17,116,212),
	(18,115,216),
	(19,113,215),
	(20,119,220);

INSERT INTO public.accomodation_types VALUES 
(311,211,'Dormitory',8),
	(312,212,'Large Dormitory',18),
	(313,213,'Dormitory',8),
	(314,214,'Medium Dormitory',12),
	(315,215,'Shared',6),
	(316,216,'Dormitory',8),
	(317,217,'Medium Dormitory',12),
	(318,218,'Shared',6),
	(319,219,'Dormitory',8),
	(320,220,'Dormitory',8);

INSERT INTO public.room_types VALUES 
(501,4,'Female',3,1300,311),
	(502,4,'Any',0,1400,312),
	(503,6,'Any',1,1400,312),
	(504,8,'Male',2,1400,312),
	(505,4,'Male',5,1500,313),
	(506,6,'Any',4,1500,314),
	(507,6,'Male',2,900,315),
	(508,4,'Any',1,1100,316),
	(509,2,'Female',1,1500,317),
	(510,4,'Female',0,1500,317),
	(511,6,'Any',1,2300,317),
	(512,6,'Female',0,2300,318),
	(513,4,'Any',1,1100,319),
	(514,8,'Female',4,1500,320);

INSERT INTO public.amenities VALUES (601,'Water'), (602,'Electricity'), (603,'Wi-Fi');

INSERT INTO public.boarding_house_amenities VALUES (411,211,603,'High-Speed Connection'),
	(412,212,601,'Have On-Site Well'),
	(413,212,602,'Eco-Friendly Energy'),
	(414,213,601,'Unlimited Water Usage'),
	(415,213,602,'Have Solar Panels'),
	(416,214,601,'High-pressure Water'),
	(417,214,602,'Have Backup Generators'),
	(418,215,601,'Have On-Site Well'),
	(419,215,602,'With Solar Panels'),
	(420,215,603,'Fiber Optic Connection'),
	(421,216,602,'Have Backup Generators'),
	(422,216,601,'Unlimited Water Usage'),
	(423,217,601,'Unlimited Water Usage'),
	(424,218,601,'Have On-Site Well'),
	(425,218,602,'With Solar Panels'),
	(426,219,601,'Have Backup Generators'),
	(427,219,602,'Eco-Friendly Energy'),
	(428,220,603,'High-Speed Connection');



