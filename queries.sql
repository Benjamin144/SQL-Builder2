  
/* Use the Chinook database */
use Chinook;

/*
Select the name column for each of the records in
the `Artist` table
*/
select Name from Artist;

/*
Select the `FirstName` and `LastName` for each of the
records in the `Customer` table
*/
select FirstName, LastName from Customer;

/*
Select all of the columns for every record in the `Track`
table
*/
select * from Track;
/*
Select all `Track` records where the `Composer` is `U2`
*/
select * from Track
where Composer = 'U2';

/*
Select all `Album` records where the `AlbumId` is 232;
*/
select * from Album
where AlbumId = 232;
/*
Select all of the data for every `Track` record across 
both the `Track` and `Album` tables
*/
select * from Track
INNER JOIN Album on Track.AlbumId = Album.AlbumId;

/*
Select the Track's Name, the Album's Title and the Artist's ArtistId for every
`Track` record across both the `Track` and `Album` tables
*/
select Name, Title, ArtistId from Track
INNER JOIN Album on Track.AlbumId = Album.AlbumId;

/*
Use MySQL's aliases to display friendlier column names
*/
select Name as Track, Title as Album, ArtistId from Track
INNER JOIN Album on Track.AlbumId = Album.AlbumId;

/*
Instead of just getting the Artist's ID, we'll do an additional join
to get the Artist's name from the `Artist` table
*/
SELECT Track.Name as Track, Title as Album, Album.ArtistId, Artist.Name as Artist from Track
INNER JOIN Album on Track.AlbumId = Album.AlbumId
INNER JOIN Artist on Album.ArtistId = Artist.ArtistId;

/*
Show all of the Track names, album titles and artist name where the artist's name
is "U2"
*/
SELECT Track.Name as Track, Title as Album, Artist.Name as Artist FROM Track
INNER JOIN Album on Track.AlbumId = Album.AlbumId
INNER JOIN Artist on Album.ArtistId = Artist.ArtistId
WHERE Artist.Name = "U2";

/*
Show all of the Track names, album titles and artist name where the artist's name
is "U2" and the name of the track is "Pride (In The Name Of Love)"
*/
SELECT Track.Name as Track, Title as Album, Artist.Name as Artist FROM Track
INNER JOIN Album on Track.AlbumId = Album.AlbumId
INNER JOIN Artist on Album.ArtistId = Artist.ArtistId
WHERE Artist.Name = "U2" AND Track.Name = "Pride (In The Name Of Love)";

/*
Show all of the track names, album titles, and artist names where the track name
is "Believe"
*/
SELECT Track.Name as Track, Title as Album, Artist.Name as Artist FROM Track
INNER JOIN Album on Track.AlbumId = Album.AlbumId
INNER JOIN Artist on Album.ArtistId = Artist.ArtistId
WHERE Track.Name = "Believe";
/*
Order all of the `Album` records by the `Title` field in 
ascending order
*/
SELECT * FROM Album ORDER BY Title;

/*
Order all of the `Album` records by the `Title` field in
descending order
*/
SELECT * FROM Album ORDER BY Title DESC;

/*
Order all of the `Album` records by the `ArtistId` field in 
ascending order, and within that, order by `Title`
*/
SELECT * FROM Album ORDER BY ArtistId, Title;

/*
Select the Track name and the Album title and order them
by the Album title, and then by the track name
*/
SELECT Track.Name, Album.Title FROM Track
INNER JOIN Album on Track.AlbumId = Album.AlbumId
ORDER BY Album.Title, Track.Name;

/*
Select the `InvoiceDate`, `BillingCity` and `Total` from the
`Invoice` table. Order them descendingly and limit the results
to 5
*/
SELECT InvoiceDate, BillingCity, Total FROM Invoice
ORDER BY Total DESC
LIMIT 5;  
/*
Get a count of all of the records in the `Customer` table
*/
SELECT COUNT(*) FROM Customer;

/*
Get a count of all of the records in the `Customer` table
*/
SELECT COUNT(FirstName) FROM Customer;

/*
Get a count of all of the records in the `Customer` table
where the customer's `FirstName` is "Frank"
*/
SELECT COUNT(*) FROM Customer WHERE FirstName = 'Frank';

/* The MIN Function - The min function looks at all of the values in a specified column and returns the minimum.
*/
SELECT MIN(LastName) FROM Customer;

/* The MAX Function - Search the LastName column for the name that would be last if they were sorted alphabetically.
*/
SELECT MAX(LastName) FROM Customer;
/* The AVG Function - Take the values in the Total column of the invoice table and average them.
*/
SELECT AVG(Total) FROM Invoice;
/*The ROUND Function - Get the average of the total column in the invoice table.
And round the result to two decimal places.
*/
SELECT ROUND(AVG(Total), 2) FROM Invoice;
/*
/*Use the sum function to get the total
*/
SELECT TOTAL FROM Invoice
WHERE InvoiceId = 2;
/*
SELECT SUM(UnitPrice * Quantity) FROM InvoiceLine
WHERE InvoiceId = 2;
*/
SELECT COUNT(*) FROM  Track
GROUP BY AlbumId;

SELECT AlbumId, COUNT(*) FROM Track
GROUP BY AlbumId;

SELECT Album.Title, COUNT(*) FROM Track
INNER JOIN Album ON Track.AlbumId = Album.AlbumId
GROUP BY Track.AlbumId;

SELECT AlbumId, MIN(UnitPrice) FROM Track
GROUP BY AlbumId;

SELECT AlbumId, MAX(UnitPrice) FROM Track
GROUP BY AlbumId;

SELECT AlbumId, ROUND(SUM(UnitPrice), 2) FROM Track
GROUP BY AlbumId;

SELECT Album.Title, ROUND(SUM(UnitPrice), 2) FROM Track
INNER JOIN Album ON Track.AlbumId = Album.AlbumId
GROUP BY Track.AlbumId;
/*
/*
Create a dummy `MediaType`
*/
INSERT INTO MediaType (Name)
VALUES ("Test Media 1");

/*
Create a new `Album` record with a name of "Boy" and an
ArtistId of 150. This ArtistId is for U2
*/
INSERT INTO Album (Title, ArtistId)
VALUES ("Boy", 150);

/*
Get all of the relevant information that we need to enter all of
tracks for U2's "Boy" album
*/
SELECT AlbumId FROM Album WHERE Title = "Boy";

SELECT MediaTypeId FROM MediaType WHERE Name = "Protected AAC audio file";

SELECT GenreId FROM Genre WHERE Name = "Rock";

/*
Use the above information to create the new tracks
*/
INSERT INTO Track (Name, AlbumId, MediaTypeId, GenreId, Composer, Milliseconds, Bytes, UnitPrice)
VALUES ("I Will Follow", 348, 2, 1, "U2", 220000, 1234, 0.99);

