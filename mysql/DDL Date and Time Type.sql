-- Date and Time Type Overview

-- date
CREATE TABLE adsi.t1 (
    campopk INT PRIMARY KEY,
    campo1 DATE
);

INSERT INTO adsi.t1
(campopk,
campo1)
VALUES
(1,
'2017-08-04');

-- datetime
CREATE TABLE adsi.t1 (
    campopk INT PRIMARY KEY,
    campo1 datetime(6)
);

INSERT INTO adsi.t1
(campopk,
campo1)
VALUES
(2,
'2017-08-04 14:00:05.999999');

-- timestamp
CREATE TABLE adsi.t1 (
    campopk INT PRIMARY KEY,
    campo1 timestamp
);

INSERT INTO adsi.t1
(campopk,
campo1)
VALUES
(2,
'2017-08-04 14:00:05');

-- tiemstamp
CREATE TABLE adsi.t1 (
    campopk INT PRIMARY KEY,
    campo1 timestamp
);

INSERT INTO adsi.t1
(campopk,
campo1)
VALUES
(2,
'2017-08-04 14:00:05');

-- time
CREATE TABLE adsi.t1 (
    campopk INT PRIMARY KEY,
    campo1 time,
    campo2 time(2)
);

INSERT INTO adsi.t1
(campopk,
campo1,
campo2)
VALUES
(2,
'114:00:05',
'116:40:05.34');

-- year
CREATE TABLE adsi.t1 (
    campopk INT PRIMARY KEY,
    campo1 year
);

INSERT INTO adsi.t1
(campopk,
campo1)
VALUES
(2,
'2017');


drop table adsi.t1;




