insert into blogger (username, password, name, created_at, email)
values ('ga_santillo', '123', 'Gabriel', '2022-09-14', 'gabriel@gmail.com'),
('dan_santillo', '123', 'Daniel', '2022-09-14', 'daniel@gmail.com'),
('naty_santillo', '123', 'Natalia', '2022-09-14', 'natalia@gmail.com');

insert into blog_post (blogger_id, title, content, created_at)
values (1, 'Title one', 'Content one', '2022-09-14'),
(1, 'Title two', 'Content two', '2022-09-14'),
(2, 'Title three', 'Content three', '2022-09-14'),
(2, 'Title four', 'Content four', '2022-09-14'),
(3, 'Title five', 'Content five', '2022-09-14'),
(3, 'Title six', 'Content six', '2022-09-14');

insert into blog_post_comment (blogger_id, blog_post_id, content, created_at)
values (3, 1, 'I am blogger 3 commenting post one', '2022-09-14'),
(2, 3, 'I am blogger 2 commenting post three', '2022-09-14'),
(1, 5, 'I am blogger 1 commenting post five', '2022-09-14');

insert into blog_post_comment (blogger_id, blog_post_id, content, created_at)
values (3, 1, 'I am blogger 3 commenting post one', '2022-09-14'),
(3, 1, 'I am blogger 3 commenting post one', '2022-09-14');

select blogger.name from blogger where created_at >= '2020-01-01';

update blogger set password = 'bad_password' where password = 'pass';

select bp.content, bp.title, b.username from blogger b inner join blog_post bp on b.id = bp.blogger_id;

select b.username, bp.title, bpc.content from blog_post_comment bpc
inner join blogger b on b.id = bpc.blogger_id
inner join blog_post bp on bpc.blog_post_id = bp.id; 

delete from blog_post_comment where content = 'delete me';

select count(bpc.blog_post_id),  b.username, bp.content, bp.title from blog_post bp 
inner join blog_post_comment bpc on bpc.blog_post_id = bp.id 
inner join blogger b on bp.blogger_id = b.id
group by bpc.blog_post_id having count(bpc.blog_post_id) >= 3;



