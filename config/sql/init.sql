CREATE
DATABASE IF NOT EXISTS main;

USE main;

CREATE
DATABASE IF NOT EXISTS library;

USE
library;

CREATE TABLE author
(
    id         INT AUTO_INCREMENT NOT NULL,
    name       VARCHAR(255) NOT NULL,
    country    VARCHAR(255) NOT NULL,
    created_at DATETIME     NOT NULL DEFAULT CURRENT_TIMESTAMP,
    updated_at DATETIME     NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    PRIMARY KEY (id)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci ENGINE = InnoDB;

CREATE TABLE book
(
    id           INT AUTO_INCREMENT NOT NULL,
    author_id    INT DEFAULT NULL,
    title        VARCHAR(255) NOT NULL,
    publisher    VARCHAR(255) NOT NULL,
    pages        INT          NOT NULL,
    is_published TINYINT(1) NOT NULL,
    created_at   DATETIME     NOT NULL DEFAULT CURRENT_TIMESTAMP,
    updated_at   DATETIME     NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    INDEX        IDX_CBE5A331F675F31B (author_id),
    PRIMARY KEY (id),
    FOREIGN KEY (author_id) REFERENCES author (id) ON DELETE SET NULL
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci ENGINE = InnoDB;


CREATE TABLE book_author
(
    book_id   INT NOT NULL,
    author_id INT NOT NULL,
    INDEX     IDX_9478D34516A2B381 (book_id),
    INDEX     IDX_9478D345F675F31B (author_id),
    PRIMARY KEY (book_id, author_id),
    FOREIGN KEY (book_id) REFERENCES book (id) ON DELETE CASCADE,
    FOREIGN KEY (author_id) REFERENCES author (id) ON DELETE CASCADE
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci ENGINE = InnoDB;
