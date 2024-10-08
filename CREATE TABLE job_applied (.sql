CREATE TABLE job_applied (
    job_id INT,
    application_sent_date Date,
    custom_resume BOOLEAN,
    resume_file_name VARCHAR(255),
    cover_letter_sent BOOLEAN,
    cover_letter_file_name VARCHAR(255),
    status VARCHAR(50)
);

SELECT * FROM job_applied

/* ADD TO TABLE */
INSERT INTO job_applied
            (job_id,
             application_sent_date,
             custom_resume,
             resume_file_name,
             cover_letter_sent,
             cover_letter_file_name,
             status
            )
VALUES      (
             1,
             '2024-02-01',
             true,
             'resume_01.pdf',
             true,
             'cover_letter_01.pdf',
             'submitted'
            ),  
            (
             2,
             '2024-02-02',
             false,
             'resume_02.pdf',
             false,
             'cover_letter_02.pdf',
             'submitted'
            ), 
            (
             3,
             '2024-02-03',
             true,
             'resume_03.pdf',
             true,
             'cover_letter_03.pdf',
             'submitted'
            ),
            (
             4,
             '2024-02-04',
             true,
             'resume_04.pdf',
             true,
             'cover_letter_04.pdf',
             'submitted'
            ),  
            (
             5,
             '2024-02-05',
             false,
             'resume_05.pdf',
             false,
             'cover_letter_05.pdf',
             'submitted'
            )                              

    /* ALTER TABLE  */

    ALTER TABLE job_applied
    ADD contact VARCHAR(50)
    /* --------------------------------- */

    /* UPDATE COLUMN IN TABLE  */
    UPDATE  job_applied
    SET contact = 'Mohammad Omar'
    WHERE job_id = 1;

    UPDATE  job_applied
    SET contact = 'Khaled Ahmad'
    WHERE job_id = 2;

    UPDATE  job_applied
    SET contact = 'Amal Yousef'
    WHERE job_id = 3;
    
    UPDATE  job_applied
    SET contact = 'Noha Hamad'
    WHERE job_id = 4;

    UPDATE  job_applied
    SET contact = 'Sara Ali'
    WHERE job_id = 5;
    /* --------------------------------- */

    /* Rename Column */

    ALTER TABLE job_applied
    RENAME COLUMN  contact TO contact_name 

    /* ---------------------------- */

    /* ALTER COLUMN TYPE  */
    ALTER TABLE job_applied
    ALTER COLUMN contact_name TYPE TEXT 
    /* ------------------------------ */

    /* DROP COLUMN */
    ALTER TABLE job_applied
    DROP COLUMN contact_name
    /* ------------------------------ */

    
    /* DROP TABLE */
    DROP TABLE job_applied 
    /* ------------------------------ */


    