-- 1. CREATE USERS TABLE
CREATE TABLE Users (
    user_id      INT            NOT NULL,
    full_name    VARCHAR(100)   NOT NULL,
    email        VARCHAR(150)   NOT NULL,
    role         VARCHAR(20)    NOT NULL,
    phone_number VARCHAR(20),                    -- nullable (Jannat Ara has NULL)

    CONSTRAINT pk_users       PRIMARY KEY (user_id),
    CONSTRAINT uq_users_email UNIQUE (email),
    CONSTRAINT chk_users_role CHECK (role IN ('Ticket Manager', 'Football Fan'))
);