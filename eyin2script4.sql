/*Create view*/
CREATE VIEW view1 AS SELECT otherunics.coursename AS "OtherUNIcoursename", officialname, nickname, city, westerncs.coursename AS "UWOcoursename"
FROM(((otherunics INNER JOIN equivalent ON coursecode = OTHERcoursecode AND unicode = otherunicode)
INNER JOIN universities ON uniquenum = unicode) 
INNER JOIN westerncs ON UWOcoursenum  = coursenum)
WHERE yearstudents = 1; 

/*Select from view from UofT*/
SELECT * FROM view1 WHERE nickname = "UofT" ORDER BY (UWOcoursename);

/*Show university table*/
SELECT * FROM universities;
DELETE FROM universities WHERE nickname LIKE "%cord%";
SELECT * FROM universities;

/*delete uni in ontario*/
/*DELETE FROM universities WHERE provincecode = "ON";*/
SELECT * FROM universities;
/*mine was able to delete because I had DELETE CASCADE on for any foreign keys*/

/*show from other universities*/
SELECT * FROM otherunics INNER JOIN universities ON unicode = uniquenum;
DELETE otherunics FROM otherunics INNER JOIN universities ON unicode  = uniquenum WHERE city = "Waterloo"