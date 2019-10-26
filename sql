SELECT
  DISTINCT(stscore) AS "Score",
  COUNT(stscore) AS "Amount"
FROM tibame
GROUP BY stscore;

SELECT
  stnumber AS "Student ID",
  stclass AS "Class",
  stscore AS "Score"
FROM tibame
ORDER BY 1;
