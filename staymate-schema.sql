CREATE TABLE public.users ( 
id INTEGER PRIMARY KEY, 
first_name TEXT, 
last_name TEXT, 
email TEXT 
);

CREATE TABLE public.boarding_houses (
id INTEGER PRIMARY KEY,
name TEXT,
contact_num VARCHAR(15),
purok TEXT,
latitude FLOAT8,
longitude FLOAT8
);

CREATE TABLE public.favorites (
id INTEGER PRIMARY KEY,
user_id INTEGER REFERENCES public.users(id),
boarding_house_id INTEGER REFERENCES public.boarding_houses(id)
);

CREATE TABLE public.accomodation_types (
id INTEGER PRIMARY KEY,
boarding_house_id INTEGER REFERENCES public.boarding_houses(id),
type TEXT,
capacity INTEGER
);

CREATE TABLE public.room_types (
id INTEGER PRIMARY KEY,
room_capacity INTEGER,
gender_pref TEXT,
room_vacancy INTEGER,
room_rate INTEGER,
accomodation_type_id INTEGER REFERENCES public.accomodation_types(id)
);

CREATE TABLE public.amenities (
id INTEGER,
name TEXT
);

ALTER TABLE public.amenities
ADD CONSTRAINT id PRIMARY KEY(id);

CREATE TABLE public.boarding_house_amenities (
id INTEGER PRIMARY KEY,
boarding_house_id INTEGER REFERENCES public.boarding_houses(id),
amenity_id INTEGER REFERENCES public.amenities(id),
amenity_detail TEXT
);