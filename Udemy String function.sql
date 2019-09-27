-- Concate
use shirt_db;
select 
concat(author_fname,' ',author_lname) as Author
from books;

select 
concat(author_fname,'_',author_lname) as Author_name
from books;

select 
concat_ws('_',author_fname,author_lname) as Author_name
from books;

select 
concat_ws('-',title,author_fname,author_lname) as detail
from books;

-- Substring

select substring('Hello World',1,4) as welcome;-- substring('string',from,upto)
select substring('hello world',7) as welcome;
select substring('hello world',-3) as welcome;

select 
substring(title,1,10) as short_title
from books;

select 
substr(title,1,10) 
as short_title
from books;

select 
	concat(									-- concate(short_title,'...')
			substr(title,1,10),
            '...'
		)as short_title
from books;

-- Replace
select replace('Hello world','Hell','@$#%') as welcome;-- here string are case sensitive

select 
	concat(									-- 1st concat 2nd substring 3rd replace works with no problem
		substring(							-- 1st replce 2nd concate 3rd substring will not works
			replace(title,'e','3'),
            1,10),
        '...'
    )as 'short title replace e with 3'
from books;

-- Reverse
select reverse('Hello World') as welcome;

-- char length
select 'Hello World'as welcome,char_length('Hello World') as length;

select 
	author_lname,
    char_length(author_lname) as length
from books;

select 
	concat(
		author_lname,
        ' is ',
        char_length(author_lname),
        ' character long'
    )as 'author_lname length'
from books;