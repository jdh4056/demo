SET NAMES utf8mb4;

INSERT INTO category (name) VALUES
    ('개발'),
    ('소설'),
    ('에세이');

INSERT INTO book (category_id, title, description, is_available) VALUES
    (1, '스프링 부트 핵심 가이드', '스프링 부트를 활용한 애플리케이션 개발 실무', TRUE),
    (1, '자바 ORM 표준 JPA 프로그래밍', 'JPA 기초부터 실무 활용까지', FALSE),
    (2, '어린 왕자', '생텍쥐페리의 대표작', TRUE),
    (3, '달러구트 꿈 백화점', NULL, TRUE);
