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

-- Upper Lower case
select upper('hello world') as Upper_case;
select lower('HELLO WORLD') as Lower_case;

-- Exercise
-- Reverse and Upper case the following sentence
--    "Why does my cat look at me with such hatred?"

select
	 "Why does my cat look at me with such hatred?" as sentence,
     reverse(
		upper("Why does my cat look at me with such hatred?")
     ) as reverse_upper;
     
-- what does this print
select
	replace(
		concat('I',' ','LIKE',' ','CATS'),
        ' ',
        '_'
    )as cat_lover;

-- Replace space in title with '->'
select title,
replace(title,' ','->') as new_title
from books;

-- print autor_lname forward and backword
select author_lname as forward,
reverse(author_lname) as backward
from books;

-- convert author_fname and author_lname into upper case and concat them both 
select author_fname,author_lname,
concat(
	upper(author_fname),
    ' ',
    upper(author_lname)
    ) as 'full name as caps'
from books;

-- concate title and year in a readable manner
select 
concat(
		title,
        ' was released in ',
        released_year
	) as blurb
from books;

-- print book title and their length
select title,
char_length(title) as 'character count'
from books;

-- last practice
select 
concat(
	substr(title,1,10),
    '...'
	)as short_title,
concat(
	author_lname,
    ',',
    author_fname
	)as author,
concat(
	stock_quantity,
    ' in stock'
	)as quantity
from books;