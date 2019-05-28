
/*  
statewide totals FOR CHLORIDE (REFERENCING PAGE 43)
note: this query uses the extension-functions.dll, which contains the following functions:
Math: acos, asin, atan, atn2, atan2, acosh, asinh, atanh, difference, degrees, radians, cos, sin, tan, cot,
    cosh, sinh, tanh, coth, exp, log, log10, power, sign, sqrt, square, ceil, floor, pi.
String: replicate, charindex, leftstr, rightstr, ltrim, rtrim, trim, replace, reverse, proper, padl, padr,
    padc, strfilter.
Aggregate: stdev, variance, mode, median, lower_quartile, upper_quartile.
*/
DROP TABLE IF EXISTS TEMP_TABLE_CHLORIDE;

CREATE TABLE TEMP_TABLE_CHLORIDE (
    'M. BASIN #' INTEGER UNIQUE
                        PRIMARY KEY
                        NOT NULL,
    'COUNT' INTEGER,
    'MIN' REAL,
    'Q1' REAL,
    'MEAN' REAL,
    'MEDIAN' REAL,
    'SE MEAN' REAL,
    'STDEV' REAL,
    'Q3' REAL,
    'MAX' REAL
);

/* STATEWIDE TOTAL */
INSERT INTO TEMP_TABLE_CHLORIDE
SELECT
    0,
    COUNT(*) as 'COUNT',
    MIN(VALUE) AS 'MIN',
    LOWER_QUARTILE(VALUE) AS 'Q1',
    AVG(VALUE) AS 'MEAN',
    MEDIAN(VALUE) AS 'MEDIAN',
    STDEV(VALUE) / SQRT(COUNT(*)) AS 'SE MEAN',
    STDEV(VALUE) AS 'STDEV',
    UPPER_QUARTILE(VALUE) AS 'Q3',
    MAX(VALUE + 0) AS 'MAX'
FROM CHEMDATA
WHERE CHEMPARAMETER = 'Chloride'
;

/* MAJOR BASIN 1 */
INSERT INTO TEMP_TABLE_CHLORIDE
SELECT
    1,
    COUNT(*) as 'COUNT',
    MIN(VALUE) AS 'MIN',
    LOWER_QUARTILE(VALUE) AS 'Q1',
    AVG(VALUE) AS 'MEAN',
    MEDIAN(VALUE) AS 'MEDIAN',
    STDEV(VALUE) / SQRT(COUNT(*)) AS 'SE MEAN',
    STDEV(VALUE) AS 'STDEV',
    UPPER_QUARTILE(VALUE) AS 'Q3',
    MAX(VALUE + 0) AS 'MAX'
FROM CHEMDATA
INNER JOIN SITES ON SITES.STA_SEQ = CHEMDATA.STA_SEQ
INNER JOIN BASIN ON BASIN.SBASN = SITES.SBASN
WHERE MBASN = 1 AND CHEMPARAMETER = 'Chloride'
;
/* MAJOR BASIN 2 */
INSERT INTO TEMP_TABLE_CHLORIDE
SELECT
    2,
    COUNT(*) as 'COUNT',
    MIN(VALUE) AS 'MIN',
    LOWER_QUARTILE(VALUE) AS 'Q1',
    AVG(VALUE) AS 'MEAN',
    MEDIAN(VALUE) AS 'MEDIAN',
    STDEV(VALUE) / SQRT(COUNT(*)) AS 'SE MEAN',
    STDEV(VALUE) AS 'STDEV',
    UPPER_QUARTILE(VALUE) AS 'Q3',
    MAX(VALUE + 0) AS 'MAX'
FROM CHEMDATA
INNER JOIN SITES ON SITES.STA_SEQ = CHEMDATA.STA_SEQ
INNER JOIN BASIN ON BASIN.SBASN = SITES.SBASN
WHERE MBASN = 2 AND CHEMPARAMETER = 'Chloride'
;
/* MAJOR BASIN 3 */
INSERT INTO TEMP_TABLE_CHLORIDE
SELECT
    3,
    COUNT(*) as 'COUNT',
    MIN(VALUE) AS 'MIN',
    LOWER_QUARTILE(VALUE) AS 'Q1',
    AVG(VALUE) AS 'MEAN',
    MEDIAN(VALUE) AS 'MEDIAN',
    STDEV(VALUE) / SQRT(COUNT(*)) AS 'SE MEAN',
    STDEV(VALUE) AS 'STDEV',
    UPPER_QUARTILE(VALUE) AS 'Q3',
    MAX(VALUE + 0) AS 'MAX'
FROM CHEMDATA
INNER JOIN SITES ON SITES.STA_SEQ = CHEMDATA.STA_SEQ
INNER JOIN BASIN ON BASIN.SBASN = SITES.SBASN
WHERE MBASN = 3 AND CHEMPARAMETER = 'Chloride'
;
/* MAJOR BASIN 4 */
INSERT INTO TEMP_TABLE_CHLORIDE
SELECT
    4,
    COUNT(*) as 'COUNT',
    MIN(VALUE) AS 'MIN',
    LOWER_QUARTILE(VALUE) AS 'Q1',
    AVG(VALUE) AS 'MEAN',
    MEDIAN(VALUE) AS 'MEDIAN',
    STDEV(VALUE) / SQRT(COUNT(*)) AS 'SE MEAN',
    STDEV(VALUE) AS 'STDEV',
    UPPER_QUARTILE(VALUE) AS 'Q3',
    MAX(VALUE + 0) AS 'MAX'
FROM CHEMDATA
INNER JOIN SITES ON SITES.STA_SEQ = CHEMDATA.STA_SEQ
INNER JOIN BASIN ON BASIN.SBASN = SITES.SBASN
WHERE MBASN = 4 AND CHEMPARAMETER = 'Chloride'
;
/* MAJOR BASIN 5 */
INSERT INTO TEMP_TABLE_CHLORIDE
SELECT
    5,
    COUNT(*) as 'COUNT',
    MIN(VALUE) AS 'MIN',
    LOWER_QUARTILE(VALUE) AS 'Q1',
    AVG(VALUE) AS 'MEAN',
    MEDIAN(VALUE) AS 'MEDIAN',
    STDEV(VALUE) / SQRT(COUNT(*)) AS 'SE MEAN',
    STDEV(VALUE) AS 'STDEV',
    UPPER_QUARTILE(VALUE) AS 'Q3',
    MAX(VALUE + 0) AS 'MAX'
FROM CHEMDATA
INNER JOIN SITES ON SITES.STA_SEQ = CHEMDATA.STA_SEQ
INNER JOIN BASIN ON BASIN.SBASN = SITES.SBASN
WHERE MBASN = 5 AND CHEMPARAMETER = 'Chloride'
;
/* MAJOR BASIN 6 */
INSERT INTO TEMP_TABLE_CHLORIDE
SELECT
    6,
    COUNT(*) as 'COUNT',
    MIN(VALUE) AS 'MIN',
    LOWER_QUARTILE(VALUE) AS 'Q1',
    AVG(VALUE) AS 'MEAN',
    MEDIAN(VALUE) AS 'MEDIAN',
    STDEV(VALUE) / SQRT(COUNT(*)) AS 'SE MEAN',
    STDEV(VALUE) AS 'STDEV',
    UPPER_QUARTILE(VALUE) AS 'Q3',
    MAX(VALUE + 0) AS 'MAX'
FROM CHEMDATA
INNER JOIN SITES ON SITES.STA_SEQ = CHEMDATA.STA_SEQ
INNER JOIN BASIN ON BASIN.SBASN = SITES.SBASN
WHERE MBASN = 6 AND CHEMPARAMETER = 'Chloride'
;
/* MAJOR BASIN 7 */
INSERT INTO TEMP_TABLE_CHLORIDE
SELECT
    7,
    COUNT(*) as 'COUNT',
    MIN(VALUE) AS 'MIN',
    LOWER_QUARTILE(VALUE) AS 'Q1',
    AVG(VALUE) AS 'MEAN',
    MEDIAN(VALUE) AS 'MEDIAN',
    STDEV(VALUE) / SQRT(COUNT(*)) AS 'SE MEAN',
    STDEV(VALUE) AS 'STDEV',
    UPPER_QUARTILE(VALUE) AS 'Q3',
    MAX(VALUE + 0) AS 'MAX'
FROM CHEMDATA
INNER JOIN SITES ON SITES.STA_SEQ = CHEMDATA.STA_SEQ
INNER JOIN BASIN ON BASIN.SBASN = SITES.SBASN
WHERE MBASN = 7 AND CHEMPARAMETER = 'Chloride'
;
/* MAJOR BASIN 8 */
INSERT INTO TEMP_TABLE_CHLORIDE
SELECT
    8,
    COUNT(*) as 'COUNT',
    MIN(VALUE) AS 'MIN',
    LOWER_QUARTILE(VALUE) AS 'Q1',
    AVG(VALUE) AS 'MEAN',
    MEDIAN(VALUE) AS 'MEDIAN',
    STDEV(VALUE) / SQRT(COUNT(*)) AS 'SE MEAN',
    STDEV(VALUE) AS 'STDEV',
    UPPER_QUARTILE(VALUE) AS 'Q3',
    MAX(VALUE + 0) AS 'MAX'
FROM CHEMDATA
INNER JOIN SITES ON SITES.STA_SEQ = CHEMDATA.STA_SEQ
INNER JOIN BASIN ON BASIN.SBASN = SITES.SBASN
WHERE MBASN = 8 AND CHEMPARAMETER = 'Chloride'
;

/* DISPLAY FINAL TABLE */
SELECT *
FROM TEMP_TABLE_CHLORIDE;

/* The following is code heavily referencing stack-overflow answers without using the extension-functions.dll
    (SELECT VALUE
        FROM CHEMDATA
        WHERE CHEMPARAMETER='Chloride'
        ORDER BY VALUE ASC
        LIMIT 1
        OFFSET (SELECT
            COUNT(*)
            FROM CHEMDATA
            WHERE CHEMPARAMETER='Chloride') * 25 / 100 - 1)
        AS 'Q1 (25th percentile)',
    (SELECT AVG(value)
        FROM (SELECT value
             FROM CHEMDATA
             WHERE CHEMPARAMETER='Chloride'
             ORDER BY value
             LIMIT 2 - (SELECT COUNT(*)
                     FROM CHEMDATA
                     WHERE CHEMPARAMETER='Chloride') % 2 -- ODD IS 1, EVEN IS 2
             OFFSET (SELECT (COUNT(*) - 1) / 2
                     FROM CHEMDATA
                     WHERE CHEMPARAMETER='Chloride')))
         AS MEDIAN, -- MEDIAN CALCULATION,
    (SELECT VALUE
        FROM CHEMDATA
        WHERE CHEMPARAMETER='Chloride'
        ORDER BY VALUE ASC
        LIMIT 1
        OFFSET (SELECT
            COUNT(*)
            FROM CHEMDATA
            WHERE CHEMPARAMETER='Chloride') * 75 / 100 - 1)
        AS 'Q3 (75th percentile)',

THe following is the reference query before going crazy with basin categorization
SELECT
    0 AS 'MAJOR BASIN #',
    (SELECT chemparameter FROM CHEMDATA WHERE CHEMPARAMETER='Chloride') as 'CHEM',
    COUNT(case when chemparameter='Chloride' then 1 end) as Count, --NUMBER OF ALL CHLORIDE SAMPLES
    (SELECT MIN(value) FROM CHEMDATA WHERE chemparameter='Chloride') as MIN,
    (SELECT LOWER_QUARTILE(value) FROM CHEMDATA WHERE chemparameter='Chloride') as Q1,
    (SELECT AVG(value + 0) FROM CHEMDATA WHERE chemparameter='Chloride') as MEAN,
    (SELECT MEDIAN(VALUE) FROM CHEMDATA WHERE CHEMPARAMETER = 'Chloride')
        AS 'MEDIAN',
    (SELECT (SELECT STDEV(VALUE) FROM CHEMDATA WHERE CHEMPARAMETER = 'Chloride')
        / (SELECT SQRT(COUNT(*)) FROM CHEMDATA WHERE CHEMPARAMETER = 'Chloride'))
        AS 'SE Mean',
    (SELECT STDEV(VALUE) FROM CHEMDATA WHERE CHEMPARAMETER = 'Chloride')
        AS 'STDEV',
    (SELECT UPPER_QUARTILE(value) FROM CHEMDATA WHERE chemparameter='Chloride') as Q3,
    (SELECT MAX(value + 0) FROM CHEMDATA WHERE chemparameter='Chloride') as MAX
FROM CHEMDATA
;
SELECT
    1 AS 'MAJOR BASIN NUMBER',
    (SELECT chemparameter FROM CHEMDATA WHERE CHEMPARAMETER='Chloride') as 'CHEM',
    COUNT(case when chemparameter='Chloride' then 1 end) as Count,
    (SELECT MIN(value) FROM CHEMDATA WHERE chemparameter='Chloride' AND MBASN = 1) as MIN,
    (SELECT LOWER_QUARTILE(value) FROM CHEMDATA WHERE chemparameter='Chloride') as Q1,
    (SELECT AVG(value + 0) FROM CHEMDATA WHERE chemparameter='Chloride') as MEAN,
    (SELECT MEDIAN(VALUE) FROM CHEMDATA WHERE CHEMPARAMETER = 'Chloride')
        AS 'MEDIAN',
    (SELECT (SELECT STDEV(VALUE) FROM CHEMDATA WHERE CHEMPARAMETER = 'Chloride')
        / (SELECT SQRT(COUNT(*)) FROM CHEMDATA WHERE CHEMPARAMETER = 'Chloride'))
        AS 'SE Mean',
    (SELECT STDEV(VALUE) FROM CHEMDATA WHERE CHEMPARAMETER = 'Chloride')
        AS 'STDEV',
    (SELECT UPPER_QUARTILE(value) FROM CHEMDATA WHERE chemparameter='Chloride') as Q3,
    (SELECT MAX(value + 0) FROM CHEMDATA WHERE chemparameter='Chloride' AND MBASN = 1) as MAX
FROM CHEMDATA
INNER JOIN SITES ON SITES.STA_SEQ = CHEMDATA.STA_SEQ
INNER JOIN BASIN ON BASIN.SBASN = SITES.SBASN
WHERE MBASN = 1
;
*/