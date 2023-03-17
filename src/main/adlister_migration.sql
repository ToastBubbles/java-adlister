use adlister_db;

CREATE TABLE users (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT primary key,
    username VARCHAR(20) NOT NULL,
    email  VARCHAR(20) NOT NULL,
    password  VARCHAR(20) NOT NULL
);
drop table ads;
drop table users;


CREATE TABLE ads (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT primary key,
    user_id INT unsigned NOT NULL,
    title VARCHAR(50) NOT NULL,
    description  VARCHAR(200),
    FOREIGN KEY (user_id) references users (id)
);

INSERT INTO users (username, email, password)
VALUES ('tom','tom@web.com','123');

select * from users;
select * from ads;