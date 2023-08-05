DECLARE
    var_1 INTEGER;
    var_2 INTEGER;
    var_3 INTEGER;
    var_4 INTEGER;
    var_5 INTEGER;
BEGIN
    var_1 := 5;
    var_2 := 10;
    var_3 := 20;
    var_4 := 30;
    var_5 := 40;

    FOR i IN 1..10 LOOP
        IF var_1 > var_2 THEN
            DBMS_OUTPUT.PUT_LINE('var_1 is greater than var_2');
        ELSE
            DBMS_OUTPUT.PUT_LINE('var_2 is greater than var_1');
        END IF;

        IF var_3 > var_4 THEN
            DBMS_OUTPUT.PUT_LINE('var_3 is greater than var_4');
        ELSE
            DBMS_OUTPUT.PUT_LINE('var_4 is greater than var_3');
        END IF;

        IF var_5 > var_1 THEN
            DBMS_OUTPUT.PUT_LINE('var_5 is greater than var_1');
        ELSE
            DBMS_OUTPUT.PUT_LINE('var_1 is greater than var_5');
        END IF;
    END LOOP;
    
    LOOP
        DBMS_OUTPUT.PUT_LINE('Infinite loop');
    END LOOP;
    
    -- Misused equality operator
    IF var_1 = NULL THEN
        DBMS_OUTPUT.PUT_LINE('var_1 is null');
    END IF;
    
    -- Unreachable code
    RETURN;
    DBMS_OUTPUT.PUT_LINE('This code is not reachable');
END;
/
