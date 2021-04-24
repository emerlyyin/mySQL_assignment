/*moving to the correct db*/
USE eyin2assign2db;

/*empty table*/
SELECT * FROM universities;
/*Loading data from txt file to universities table*/
LOAD DATA LOCAL INFILE "uni_insertfile.txt" INTO TABLE universities FIELDS TERMINATED BY ',';
SELECT * FROM universities;

/*Inserting into the western courses table*/
/*Empty table*/
SELECT * FROM westerncs;

INSERT INTO westerncs VALUES ("cs1026", "Computer Science Fundamentals I", 0.5, "A/B");
INSERT INTO westerncs VALUES ("cs1027", "Computer Science Fundamentals II", 0.5, "A/B");
INSERT INTO westerncs VALUES ("cs2210", "Algorithms and Data Structures", 1.0, "A/B");
INSERT INTO westerncs VALUES ("cs3319", "Databases I", 0.5, "A/B");
INSERT INTO westerncs VALUES ("cs2120", "Modern Survival Skills I: Coding Essentials", 0.5, "A/B");
INSERT INTO westerncs VALUES ("cs4490", "Thesis", 0.5, "Z");
INSERT INTO westerncs VALUES ("cs0020", "Intro to Coding using Pascal and Fortran", 1.0, NULL);
INSERT INTO westerncs VALUES ("cs3333", "Computer Programming in Movie Production", 0.5, "A/B");

SELECT * FROM westerncs;

/*Inserting another row into university table*/
SELECT * FROM universities;
INSERT INTO universities VALUES (8, "Film School of Whitehorse", "Whitehorse", "YT", "FSW");
SELECT * FROM universities;

/*Inserting outside university courses*/
/*Empty Table*/
SELECT * FROM otherunics;

/*Toronto*/
INSERT INTO otherunics VALUES ("CompSci022", "Introduction to Programming",0.5,1, 2);
INSERT INTO otherunics VALUES ("CompSci033", "Intro to Programming for Med Students",0.5,3, 2);
INSERT INTO otherunics VALUES ("CompSci021", "Packages",0.5,1, 2);
INSERT INTO otherunics VALUES ("CompSci222", "Introduction to Databases",1.0,2, 2);
INSERT INTO otherunics VALUES ("CompSci023", "Advanced Programming",0.5,1, 2);

/*Waterloo*/
INSERT INTO otherunics VALUES ("CompSci011", "Intro to Computer Science",1.0,2, 4);
INSERT INTO otherunics VALUES ("CompSci123", "Using UNIX",0.5,2, 4);

/*UBC*/
INSERT INTO otherunics VALUES ("CompSci021", "Intro Programming",1.0,1, 66);
INSERT INTO otherunics VALUES ("CompSci022", "Advanced Programming",0.5,1, 66);
INSERT INTO otherunics VALUES ("CompSci319", "Using Databases",0.5,3, 66);

/*MAC*/
INSERT INTO otherunics VALUES ("CompSci333", "Graphics",0.5,3, 55);
INSERT INTO otherunics VALUES ("CompSci444", "Networks",0.5,4, 55);

/*Laurier*/
INSERT INTO otherunics VALUES ("CompSci022", "Using Packages",0.5,1, 77);
INSERT INTO otherunics VALUES ("CompSci101", "Introduction to Data Structures",0.5,2, 77);

/*My University*/
INSERT INTO otherunics VALUES ("CompSci321", "Special Effects",0.5,2, 8);
INSERT INTO otherunics VALUES ("CompSci310", "Computer Generated Image",1.0,3, 8);

SELECT * FROM otherunics;

/*Inserting into equivalency table*/
/*Empty table*/
SELECT * FROM equivalent;

INSERT INTO equivalent VALUES ("cs1026", "CompSci022", "UofT", 2,'2015-05-12');
INSERT INTO equivalent VALUES ("cs1026", "CompSci033", "UofT", 2,'2013-01-02');
INSERT INTO equivalent VALUES ("cs1026", "CompSci011", "Waterloo", 4,'1997-02-8');
INSERT INTO equivalent VALUES ("cs1026", "CompSci021", "UofT",2,'2010-01-12');
INSERT INTO equivalent VALUES ("cs1027", "CompSci022", "UBC",66,'2017-06-22');
INSERT INTO equivalent VALUES ("cs1027", "CompSci022", "UofT",2,'2019-09-01');
INSERT INTO equivalent VALUES ("cs2210", "CompSci101", "Laurier",77,'1998-06-12');
INSERT INTO equivalent VALUES ("cs3319", "CompSci222", "UofT", 2,'1990-09-13');
INSERT INTO equivalent VALUES ("cs3319", "CompSci319", "UBC",66,'1987-09-21');
INSERT INTO equivalent VALUES ("cs2120", "CompSci022", "UofT",2,'2018-12-10');
INSERT INTO equivalent VALUES ("cs0020", "CompSci022", "UofT",2,'1999-09-17');

SELECT * FROM equivalent;

/*Updates*/
UPDATE equivalent SET datedecided = '2018-09-19' WHERE UWOcoursenum = "cs0020" AND OTHERcoursecode = "CompSci022";
SELECT * FROM equivalent;

