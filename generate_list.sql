CREATE DEFINER=`root`@`localhost` PROCEDURE `generate_list`()
BEGIN
    DECLARE max_val INT DEFAULT 0;
    DECLARE cont INT DEFAULT 0;
    DECLARE string_total TEXT DEFAULT '';
    DECLARE string_current TEXT;

    DROP TEMPORARY TABLE IF EXISTS mytable;

    CREATE TEMPORARY TABLE mytable (
        id INT,
        mystring VARCHAR(10000)
    );

    INSERT INTO mytable
    SELECT 
        ROW_NUMBER() OVER (ORDER BY year DESC, Authors_Form1) AS id,
        CONCAT(CAST(Cite AS CHAR(1000)), ', ') AS mystring
    FROM sota
    WHERE Paper = 'I' AND measurementlevel = 'ratio';

    SELECT COUNT(*) INTO max_val FROM mytable;

    WHILE cont < max_val DO
        SET cont = cont + 1;
        SELECT mystring INTO string_current FROM mytable WHERE id = cont;
        SET string_total = CONCAT(string_total, string_current);
    END WHILE;

    SELECT string_total AS result;
END