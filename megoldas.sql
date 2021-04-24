/* 1. feladat:  */
CREATE DATABASE monthypython
CHARACTER SET utf8mb4 COLLATE utf8mb4_hungarian_ci;

/* 3. feladat:  */
SELECT nev 
FROM `epizodok` 
WHERE sorozat='1/5';

/* 4. feladat:  */
SELECT COUNT(*) AS 'epizódok száma' FROM `epizodok` WHERE 1;

/* 5. feladat:  */
SELECT DISTINCT(szinesz) 
FROM `forgatokonyv` 
WHERE szinesz IS NOT NULL
GROUP BY szinesz
ORDER BY szinesz ASC;

/* 6. feladat:  */
SELECT reszletek 
FROM `forgatokonyv` 
WHERE szinesz="John Cleese" AND resz="Italian lesson";

/* 7. feladat:  */
SELECT szinesz AS 'színész',COUNT(reszletek) AS 'bejegyzések száma'
FROM `forgatokonyv` 
WHERE szinesz IS NOT NULL
GROUP BY szinesz
ORDER BY COUNT(reszletek) DESC
LIMIT 1;