DO
$$
DECLARE
    age INT := 18;
BEGIN
    IF age >= 18 THEN
        RAISE NOTICE 'Your age is % and you are eligible to vote.', age;
    ELSE
        RAISE NOTICE 'Your age is % and you are not eligible to vote.', age;
    END IF;
END;
$$;


DO
$$
DECLARE
    val INT := 15;
BEGIN
    IF val BETWEEN 1 AND 10 THEN
        RAISE NOTICE 'Your value is % and the range is between 1 and 10.', val;

    ELSIF val BETWEEN 11 AND 20 THEN
        RAISE NOTICE 'Your value is % and the range is between 11 and 20.', val;

    ELSIF val BETWEEN 21 AND 30 THEN
        RAISE NOTICE 'Your value is % and the range is between 21 and 30.', val;

    ELSE
        RAISE NOTICE 'Your value is % and is greater than 30.', val;
    END IF;
END;
$$;
