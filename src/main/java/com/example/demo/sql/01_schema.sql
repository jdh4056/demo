SET NAMES utf8mb4;

CREATE TABLE IF NOT EXISTS category (
    category_id BIGINT       NOT NULL AUTO_INCREMENT,
    name        VARCHAR(50)  NOT NULL,
    PRIMARY KEY (category_id),
    UNIQUE KEY uk_category_name (name)
);

CREATE TABLE IF NOT EXISTS book (
    book_id      BIGINT       NOT NULL AUTO_INCREMENT,
    category_id  BIGINT       NOT NULL,
    title        VARCHAR(100) NOT NULL,
    description  TEXT         NULL,
    is_available BOOLEAN      NOT NULL DEFAULT TRUE,
    PRIMARY KEY (book_id),
    CONSTRAINT fk_book_category FOREIGN KEY (category_id) REFERENCES category (category_id)
);
