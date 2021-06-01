-- Table Category
insert into Category (Name)
values ('action')
     , ('comedies')
     , ('romantic')
     , ('rom-coms')
     , ('black-coms')
     , ('adventure')
     , ('musicals')
     , ('dramas')
     , ('historical')
     , ('real_life')
     , ('war')
     , ('horror')
     , ('science_fiction')


-- Table Auditorium
insert into Auditorium (Size)
values (10),
       (15)


-- Table Seat
declare @i int
declare @j int

set @i = 1
set @j = 1
while @i < 3
    begin
        while @j < 6
            begin
                insert into Seat (RowNum, ColNum, AuditoriumID)
                values (@i, @j, 1)
                set @j = @j + 1
            end
        set @i = @i + 1
        set @j = 1
    end

set @i = 1
set @j = 1
while @i < 4
    begin
        while @j < 6
            begin
                insert into Seat (RowNum, ColNum, AuditoriumID)
                values (@i, @j, 2)
                set @j = @j + 1
            end
        set @i = @i + 1
        set @j = 1
    end


-- Table Movie
insert into Movie (Name, year, Director, Country, Duration, PremDate, RemDate, CategoryID)
values ('Scary Movie', 2000, 'Keenen Ivory Wayans', 'US', 88, '2021/01/01', '2021/01/01', 12),
       ('Scary Movie 2', 2001, 'Keenen Ivory Wayans', 'US', 82, '2021/01/01', '2021/01/01', 12),
       ('Scary Movie 3', 2003, 'David Zucker', 'US', 84, '2021/01/01', '2021/01/01', 12),
       ('Scary Movie 4', 2006, 'David Zucker', 'US', 83, '2021/01/01', '2021/01/01', 12),
       ('Scary Movie 5', 2013, 'David Zucker', 'US', 86, '2021/01/01', '2021/01/01', 12),
       ('Holidate', 2020, 'John Whitesell', 'US', 104, '2021/01/01', '2021/01/01', 4),
       ('Parasite', 2019, 'Bong Joon-ho', 'KR', 132, '2021/01/01', '2021/01/01', 5),
       ('Avengers: Endgame', 2019, 'Anthony Russo, Joe Russo', 'US', 181, '2021/01/01', '2021/01/01', 13),
       ('Les Misérables', 2012, 'Tom Hooper', 'UK', 158, '2021/01/01', '2021/01/01', 7)


-- Table Actor
insert into Actor (Name)
values ('Anna Faris'),
       ('Jon Abrahams'),
       ('Carmen Electra'),
       ('Shannon Elizabeth'),
       ('Kurt Fuller'),
       ('Regina Hall'),
       ('Lochlyn Munro'),
       ('Cheri Oteri'),
       ('Dave Sheridan'),
       ('Marlon Wayans'),
       ('Shawn Wayans'),  -- Scary Movie, 11
--        ('Shawn Wayans'),
--        ('Marlon Wayans'),
       ('Tori Spelling'),
       ('Andy Richter'),
       ('Natasha Lyonne'),
       ('Chris Elliott'),
       ('Tim Curry'),     -- Scary Movie 2, 16
--        ('Anna Faris'),
       ('Anthony Anderson'),
       ('Kevin Hart'),
       ('Leslie Nielsen'),
       ('Camryn Manheim'),
       ('Simon Rex'),
       ('George Carlin'),
       ('Queen Latifah'),
       ('Eddie Griffin'),
       ('Denise Richards'),
--        ('Regina Hall'),
       ('Charlie Sheen'), -- Scary Movie 3, 26
--        ('Anna Faris'),
--        ('Regina Hall'),
       ('Craig Bierko'),
       ('Bill Pullman'),
--        ('Anthony Anderson'),
--        ('Carmen Electra'),
--        ('Chris Elliott'),
--        ('Kevin Hart'),
       ('Cloris Leachman'),
       ('Michael Madsen'),
       ('Phil McGraw'),
--        ('Leslie Nielsen'),
       ('Shaquille O''Neal'),
       ('Molly Shannon'), -- Scary Movie 4, 33
       ('Ashley Tisdale'),
--        ('Simon Rex'),
       ('Erica Ash'),
       ('Katrina Bowden'),
       ('Terry Crews'),
       ('Heather Locklear'),
       ('J. P. Manoux'),
       ('Mac Miller'),
       ('Jerry O''Connell'),
--        ('Molly Shannon'),
       ('Snoop Dogg'),
       ('Kate Walsh'),
       ('Katt Williams'), -- Scary Movie 5, 44
       ('Emma Roberts'),
       ('Luke Bracey'),   -- Holidate, 46
       ('Song Kang-ho'),
       ('Lee Sun-kyun'),
       ('Cho Yeo-jeong'),
       ('Choi Woo-shik'),
       ('Park So-dam'),
       ('Lee Jung-eun'),
       ('Jang Hye-jin'),  -- Parasite, 53
       ('Robert Downey Jr.'),
       ('Chris Evans'),
       ('Mark Ruffalo'),
       ('Chris Hemsworth'),
       ('Scarlett Johansson'),
       ('Jeremy Renner'),
       ('Don Cheadle'),
       ('Paul Rudd'),
       ('Brie Larson'),
       ('Karen Gillan'),
       ('Danai Gurira'),
       ('Benedict Wong'),
       ('Jon Favreau'),
       ('Bradley Cooper'),
       ('Gwyneth Paltrow'),
       ('Josh Brolin'),   -- Avengers: Endgame, 69
       ('Hugh Jackman'),
       ('Russell Crowe'),
       ('Anne Hathaway'),
       ('Amanda Seyfried'),
       ('Eddie Redmayne'),
       ('Helena Bonham Carter'),
       ('Sacha Baron Cohen') -- Les Misérables, 76


-- Table Actor
declare @AID int = 1;

-- Scary Movie
while @AID < 12
    begin
        insert into MovieIn (MovieID, ActorID)
        values (1, @AID)
        set @AID = @AID + 1
    end


-- Scary Movie 2
while @AID < 17
    begin
        insert into MovieIn (MovieID, ActorID)
        values (2, @AID)
        set @AID = @AID + 1
    end
insert into MovieIn (MovieID, ActorID)
values (2, 10),
       (2, 11)

-- Scary Movie 3
while @AID < 27
    begin
        insert into MovieIn (MovieID, ActorID)
        values (3, @AID)
        set @AID = @AID + 1
    end
insert into MovieIn (MovieID, ActorID)
values (3, 1),
       (3, 6)

-- Scary Movie 4
while @AID < 34
    begin
        insert into MovieIn (MovieID, ActorID)
        values (4, @AID)
        set @AID = @AID + 1
    end
insert into MovieIn (MovieID, ActorID)
values (4, 1),
       (4, 6),
       (4, 3),
       (4, 15),
       (4, 17),
       (4, 18),
       (4, 19)

-- Scary Movie 5
while @AID < 45
    begin
        insert into MovieIn (MovieID, ActorID)
        values (5, @AID)
        set @AID = @AID + 1
    end
insert into MovieIn (MovieID, ActorID)
        values (5, 21),
               (5, 33)

-- Holidate
while @AID < 47
    begin
        insert into MovieIn (MovieID, ActorID)
        values (6, @AID)
        set @AID = @AID + 1
    end

-- Parasite
while @AID < 54
    begin
        insert into MovieIn (MovieID, ActorID)
        values (7, @AID)
        set @AID = @AID + 1
    end

-- Avengers: Endgame
while @AID < 70
    begin
        insert into MovieIn (MovieID, ActorID)
        values (8, @AID)
        set @AID = @AID + 1
    end

-- Les Misérables
while @AID < 77
    begin
        insert into MovieIn (MovieID, ActorID)
        values (9, @AID)
        set @AID = @AID + 1
    end


-- Table Time
insert into Time (Time)
values ('09:00'),
       ('12:00'),
       ('15:00'),
       ('18:00'),
       ('21:00')


-- Table Screening
declare @day int
declare @TID int

-- Scary Movie 2
set @day = 1
set @TID = 1
while @day < 4
    begin
        while @TID < 5
            begin
                insert into Screening (IsAvailable, TimeID, MovieID)
                values (1, @TID, 2)
                set @TID = @TID + 1
            end
        set @day = @day + 1
        set @TID = 1
    end

-- Parasite
set @day = 1
set @TID = 1
while @day < 4
    begin
        while @TID < 5
            begin
                insert into Screening (IsAvailable, TimeID, MovieID)
                values (1, @TID, 7)
                set @TID = @TID + 1
            end
        set @day = @day + 1
        set @TID = 1
    end

-- Avengers: Endgame
set @day = 1
set @TID = 1
while @day < 4
    begin
        while @TID < 6
            begin
                insert into Screening (IsAvailable, TimeID, MovieID)
                values (1, @TID, 8)
                set @TID = @TID + 1
            end
        set @day = @day + 1
        set @TID = 1
    end


-- Table Schedule
declare @date date
declare @SID  int = 1
declare @lo   int

-- Scary Movie 2 Schedule
set @date = '2021/05/21'
set @lo = 1
while @date < '2021/05/24'
    begin
        while @lo < 5
            begin
                insert into Schedule (AuditoriumID, ScreeningID, Date)
                values (1, @SID, @date)
                set @SID = @SID + 1
                set @lo = @lo + 1
            end
        set @date = dateadd(day, 1, @date)
        set @lo = 1
    end

-- Parasite Schedule
set @date = '2021/05/24'
set @lo = 1
while @date < '2021/05/27'
    begin
        while @lo < 5
            begin
                insert into Schedule (AuditoriumID, ScreeningID, Date)
                values (2, @SID, @date)
                set @SID = @SID + 1
                set @lo = @lo + 1
            end
        set @date = dateadd(day, 1, @date)
        set @lo = 1
    end

-- Avengers: Endgame Schedule
set @date = '2021/05/27'
set @lo = 1
while @date < '2021/05/30'
    begin
        while @lo < 6
            begin
                insert into Schedule (AuditoriumID, ScreeningID, Date)
                values (1, @SID, @date)
                set @SID = @SID + 1
                set @lo = @lo + 1
            end
        set @date = dateadd(day, 1, @date)
        set @lo = 1
    end


-- Table Ticket
declare @tSID int
declare @S    int

-- Scary Movie 2 Ticket
set @tSID = 1
set @S = 1
while @tSID < 13
    begin
        while @S < 11
            begin
                insert into Ticket (ScreeningID, SeatID)
                values (@tSID, @S)
                set @S = @S + 1
            end
        set @S = 1
        set @tSID = @tSID + 1
    end

-- Parasite Ticket
set @S = 1
while @tSID < 25
    begin
        while @S < 16
            begin
                insert into Ticket (ScreeningID, SeatID)
                values (@tSID, @S)
                set @S = @S + 1
            end
        set @S = 1
        set @tSID = @tSID + 1
    end

-- Avengers: Endgame Ticket
set @S = 1
while @tSID < 40
    begin
        while @S < 11
            begin
                insert into Ticket (ScreeningID, SeatID)
                values (@tSID, @S)
                set @S = @S + 1
            end
        set @S = 1
        set @tSID = @tSID + 1
    end


-- Table Customer
set identity_insert Customer on
insert into Customer(CustomerID, FName, LName, phone, Email)
values (0, 'On', 'Site', '00000000', 'onsite@lu.lv'),
       (1, 'Taekyung', 'Kim', '12345678', 'taekyung@lu.lv'),
       (2, 'Rinards', 'Koršaks', '13131313', 'rinards@lu.lv'),
       (3, 'Manager', 'Kim', '12121212', 'managert@lu.lv'),
       (4, 'Manager', 'Koršaks', '01201201', 'managerr@lu.lv'),
       (5, 'Ģirts', 'Karnītis', '12341234', 'girts.karnitis@lu.lv')
set identity_insert Customer off

insert into Customer (FName, LName, Phone, Email)
values ('Ray', 'Kim', '11111111', 'raykims@lu.lv'),
       ('Hector', 'Bellerin', '22222222', 'nicearsenal@lu.lv'),
       ('Taekyung', 'Kim', '33333333', 'korea@lu.lv'),
       ('Rinards', 'Koršaks', '01010101', 'latvia@lu.lv'),
       ('Ģirts', 'Karnītis', '12345123', 'data@lu.lv'),
       ('Davion', 'Elste', '09876543', 'davionelste@lu.lv'),
       ('Rhianna', 'Ivane', '98765432', 'movielover@lu.lv'),
       ('Shyla', 'Jansone', '87654321', 'shysone@lu.lv'),
       ('Ryan', 'Smith', '76543210', 'rsmith@lu.lv'),
       ('Eddie', 'Borchard', '65432109', 'borchard12@lu.lv')

-- Table Payment
insert into Payment (ByCard, Online, CustomerID)
values (1, 1, 1002),
       (0, 0, 0),
       (0, 0, 0),
       (1, 1, 1005),
       (1, 1, 1009),
       (0, 0, 0),
       (1, 1, 1002),
       (1, 0, 0),
       (1, 1, 1001),
       (1, 1, 1002),
       (1, 1, 1003),
       (1, 1, 1004),
       (1, 1, 1005),
       (1, 1, 1006),
       (1, 1, 1007),
       (1, 0, 0),
       (1, 1, 1009),
       (1, 1, 1003),
       (1, 1, 1003),
       (0, 0, 0),
       (1, 1, 1003),
       (0, 0, 0),
       (1, 0, 0),
       (0, 0, 0),
       (0, 0, 0)


-- Table Order
insert into [Order] (Date, Amount, TotalPrice, PaymentID)
values (default, 3, 15, 1),
       (default, 1, 5, 2),
       (default, 3, 15, 3),
       (default, 4, 20, 4),
       (default, 1, 5, 5),
       (default, 2, 10, 6),
       (default, 5, 25, 7),
       (default, 5, 25, 8),
       (default, 10, 50, 9),
       ('2021/05/22', 4, 20, 10),
       (default, 2, 10, 11),
       (default, 3, 15, 12),
       (default, 1, 5, 13),
       (default, 2, 10, 14),
       (default, 2, 10, 15),
       (default, 2, 10, 16),
       (default, 5, 25, 17),
       (default, 6, 30, 18),
       (default, 3, 15, 19),
       ('2021/05/23', 2, 10, 20),
       (default, 10, 50, 21),
       (default, 3, 15, 22),
       (default, 1, 5, 23),
       (default, 4, 20, 24),
       (default, 3, 15, 25)


-- Ordering Ticket
update Ticket
set IsAvailable = 0,
    OrderID     = 1
where ScreeningID = 1
  and (SeatID = 1 or SeatID = 2 or SeatID = 3)

update Ticket
set IsAvailable = 0,
    OrderID     = 2
where ScreeningID = 3
  and (SeatID = 8)

update Ticket
set IsAvailable = 0,
    OrderID     = 3
where ScreeningID = 3
  and (SeatID = 2 or SeatID = 3 or SeatID = 4)

update Ticket
set IsAvailable = 0,
    OrderID     = 4
where ScreeningID = 7
  and (SeatID = 4 or SeatID = 5 or SeatID = 7 or SeatID = 8)

update Ticket
set IsAvailable = 0,
    OrderID     = 5
where ScreeningID = 8
  and (SeatID = 7)

update Ticket
set IsAvailable = 0,
    OrderID     = 6
where ScreeningID = 11
  and (SeatID = 3 or SeatID = 4)

update Ticket
set IsAvailable = 0,
    OrderID     = 7
where ScreeningID = 13
  and (SeatID = 6 or SeatID = 7 or SeatID = 8 or SeatID = 9 or SeatID = 10)

update Ticket
set IsAvailable = 0,
    OrderID     = 8
where ScreeningID = 14
  and (SeatID = 2 or SeatID = 3 or SeatID = 4 or SeatID = 7 or SeatID = 8)

update Ticket
set IsAvailable = 0,
    OrderID     = 9
where ScreeningID = 16
  and SeatID > 0
  and SeatID < 11

update Ticket
set IsAvailable = 0,
    OrderID     = 10
where ScreeningID = 16
  and (SeatID = 12 or SeatID = 13 or SeatID = 14 or SeatID = 15)

update Ticket
set IsAvailable = 0,
    OrderID     = 11
where ScreeningID = 19
  and (SeatID = 7 or SeatID = 8)

update Ticket
set IsAvailable = 0,
    OrderID     = 12
where ScreeningID = 20
  and (SeatID = 7 or SeatID = 8 or SeatID = 9)

update Ticket
set IsAvailable = 0,
    OrderID     = 13
where ScreeningID = 21
  and (SeatID = 15)

update Ticket
set IsAvailable = 0,
    OrderID     = 14
where ScreeningID = 22
  and (SeatID = 12 or SeatID = 13)

update Ticket
set IsAvailable = 0,
    OrderID     = 15
where ScreeningID = 25
  and (SeatID = 3 or SeatID = 8)

update Ticket
set IsAvailable = 0,
    OrderID     = 15
where ScreeningID = 26
  and (SeatID = 12 or SeatID = 13)

update Ticket
set IsAvailable = 0,
    OrderID     = 16
where ScreeningID = 27
  and (SeatID = 2 or SeatID = 3)

update Ticket
set IsAvailable = 0,
    OrderID     = 17
where ScreeningID = 30
  and SeatID > 5
  and SeatID < 11

update Ticket
set IsAvailable = 0,
    OrderID     = 18
where ScreeningID = 31
  and (SeatID > 1
    and SeatID < 5)
  and (SeatID > 6
    and SeatID < 10)

update Ticket
set IsAvailable = 0,
    OrderID     = 19
where ScreeningID = 35
  and (SeatID = 2 or SeatID = 3 or SeatID = 8)

update Ticket
set IsAvailable = 0,
    OrderID     = 20
where ScreeningID = 37
  and (SeatID = 4 or SeatID = 5)

update Ticket
set IsAvailable = 0,
    OrderID     = 21
where ScreeningID = 32
  and SeatID > 0
  and SeatID < 11

update Ticket
set IsAvailable = 0,
    OrderID     = 22
where ScreeningID = 24
  and (SeatID = 3 or SeatID = 4 or SeatID = 5)

update Ticket
set IsAvailable = 0,
    OrderID     = 23
where ScreeningID = 24
  and SeatID = 7

update Ticket
set IsAvailable = 0,
    OrderID     = 24
where ScreeningID = 10
  and (SeatID = 2 or SeatID = 3 or SeatID = 4 or SeatID = 5)

update Ticket
set IsAvailable = 0,
    OrderID     = 25
where ScreeningID = 14
  and (SeatID = 2 or SeatID = 3 or SeatID = 4)


-- Passed Screening
update Screening
set IsAvailable = 0
from Screening
         join Schedule S on Screening.ScreeningID = S.ScreeningID
where S.Date < getdate()

-- Passed Ticket
update Ticket
set IsAvailable = 0
from Ticket
         join Screening S on S.ScreeningID = Ticket.ScreeningID
         join Schedule S2 on S.ScreeningID = S2.ScreeningID
where S2.Date < getdate()