/*1*/ SELECT DISTINCT coursename FROM westerncs;
/*2*/ SELECT DISTINCT coursecode FROM otherunics;
/*3*/ SELECT * FROM westerncs ORDER BY coursename;
/*4*/ SELECT coursenum FROM westerncs WHERE weight = 0.5;
/*5*/ SELECT coursecode, coursename FROM otherunics WHERE unicode = 2;
/*6*/ SELECT coursename, nickname FROM otherunics INNER JOIN universities ON unicode=uniquenum WHERE coursename LIKE "Introduction%";
/*7*/ SELECT westerncs.coursename, otherunics.coursename, officialname, datedecided 
FROM (((otherunics INNER JOIN equivalent ON coursecode = OTHERcoursecode AND unicode = otherunicode)
INNER JOIN universities ON uniquenum = unicode) 
INNER JOIN westerncs ON UWOcoursenum  = coursenum) 
WHERE datedecided 
IN (SELECT datedecided FROM equivalent WHERE DATEDIFF(CURDATE(), datedecided) >= 1826);
/*8*/ SELECT coursename, nickname FROM ((equivalent INNER JOIN otherunics ON coursecode = OTHERcoursecode) INNER JOIN universities ON unicode = uniquenum) WHERE otherUniNick = nickname AND UWOcoursenum="CS1026";
/*9*/ SELECT COUNT(UWOcoursenum) FROM equivalent WHERE UWOcoursenum = "cs1026";
/*10*/ SELECT westerncs.coursename, otherunics.coursename, otherUniNick FROM ((equivalent INNER JOIN otherunics ON coursecode = OTHERcoursecode) INNER JOIN westerncs ON coursenum = UWOcoursenum)WHERE otherunicode = 4 ;
/*11*/ SELECT officialname FROM universities WHERE uniquenum NOT IN(SELECT DISTINCT otherunicode FROM equivalent);
/*12*/ SELECT UWOcoursenum, coursename FROM equivalent INNER JOIN westerncs ON coursenum = UWOcoursenum  WHERE Othercoursecode IN (SELECT coursecode FROM otherunics WHERE yearstudents = 3 OR yearstudents = 4);
/*13*/ SELECT DISTINCT coursename FROM westerncs INNER JOIN equivalent ON UWOcoursenum =coursenum WHERE coursenum IN (SELECT UWOcoursenum FROM equivalent GROUP BY (UWOcoursenum) HAVING COUNT(UWOcoursenum) > 1);
/*14*//*SELECT coursenum, coursecode  FROM ((equivalent INNER JOIN otherunics ON otherunicode = unicode) INNER JOIN westerncs ON UWOcoursenum = coursenum)  WHERE NOT otherunics.weight = westerncs.weight;*/
