use world;

-- Basic Functions
-- Functions--> 
-- case conversion
-- upper and lower -> charactor upper or lower case me krta hai
select name, upper(name), lower(name) from country;

-- concat -> two columns ko combine krta hai or unke bich me 
-- kuch bhi character add kr skte hai
select name, code, concat(name,'#',code) from country;
select name, code, concat(name,code,'harish') from country;

-- concat_ws-> ek SQL function hai jo separator ke saath 
-- multiple strings ko join karta hai.
select name, code, concat_ws('$',name,code,'harish') from country;

select name, code, concat(name,' ',code) from country where
concat(name,' ',code)='Afghanistan AFG';

-- get name,continent,region where in the region the continent name should be prasent.
select name, continent, region from country where
				region like concat('%',continent);

select name, region from country where name like region;

-- get name, continent, population where the first character of continent
-- should be same of country.
select name, continent, population from country where
			left(continent,1)=left(name,1);