

--What grades are stored in the database?

--SELECT * FROM Grade;

--What emotions may be associated with a poem?

--SELECT * FROM Emotion;

--How many poems are in the database?

--SELECT COUNT(Id)
--FROM Poem;

--Sort authors alphabetically by name. What are the names of the top 76 authors?

--SELECT name
--FROM Author
--WHERE id < 77
--ORDER BY Name 

--Starting with the above query, add the grade of each of the authors.

--SELECT a.Name,
--	   g.name AS Grade
--FROM Author a
--LEFT JOIN Grade g on a.GradeId = g.Id
--WHERE a.Id < 77
--ORDER BY a.Name; 



--Starting with the above query, add the recorded gender of each of the authors.

--SELECT a.Name,
--	   g.name AS Grade,
--	   r.Name AS Gender
--FROM Author a
--LEFT JOIN Grade g on a.GradeId = g.Id
--LEFT JOIN Gender r on a.GenderId = r.Id
--WHERE a.Id < 77
--ORDER BY a.Name; 

--What is the total number of words in all poems in the database?

--SELECT SUM(WordCount) AS TotalWords FROM Poem;

--Which poem has the fewest characters?
--SELECT MIN(CharCount) FROM Poem;

----just for fun
--SELECT CharCount, TEXT
--FROM Poem
--CHERE CharCount = (SELECT MIN(CharCount) FROM Poem)

--SELECT CharCount, TEXT
--FROM Poem
--CHERE CharCount = (SELECT MAX(CharCount) FROM Poem)
----

--How many authors are in the third grade?


--SELECT COUNT(id) 
--FROM Author
--WHERE GradeId = 3




















