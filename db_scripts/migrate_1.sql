-- Create table band
CREATE TABLE IF NOT EXISTS band(
    bandName varchar(50) PRIMARY KEY,
    creation year,
    genre varchar(50)
);

-- insert values into table band
INSERT INTO band(bandName, creation, genre) VALUES ('Crazy Duo', 2015, 'rock'),
                                                   ('Luna', 2009, 'classical'),
                                                   ('Mysterio', 2019, 'pop');

-- modifications on table singer
ALTER TABLE singer RENAME TO musician;
ALTER TABLE musician CHANGE singerName musicianName varchar(50);
ALTER TABLE musician ADD COLUMN role varchar(50);

UPDATE musician SET role='vocals' WHERE age=32;
UPDATE musician SET role='guitar' WHERE age=23;
UPDATE musician SET role='percussion' WHERE age=47;
UPDATE musician SET role='piano' WHERE age=31;

ALTER TABLE musician ADD COLUMN bandName varchar(50);
UPDATE musician SET bandName='Crazy Duo' WHERE age=32 OR age=47;
UPDATE musician SET bandName='Mysterio' WHERE age=23;
UPDATE musician SET bandName='Luna' WHERE age=31;
