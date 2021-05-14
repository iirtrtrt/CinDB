create table Customer
(
    CustomerID int identity (1001, 1) primary key not null,
    FName      varchar(50)                        not null,
    LName      varchar(50)                        not null,
    Phone      nvarchar(8)                        not null unique,
    Email      varchar(100)                       not null unique
)

create table Payment
(
    PaymentID  int identity (1,1) primary key not null,
    ByCard     bit                            not null,
    Online     bit                            not null,
    CustomerID int                            not null foreign key references Customer (CustomerID)
)

create table "Order"
(
    OrderID    int identity (1, 1) primary key not null,
    Date       date default getdate()          not null,
    Amount     int                             not null,
    TotalPrice int                             not null,
    PaymentID  int                             not null foreign key references Payment (PaymentID)
)

create table Auditorium
(
    AuditoriumID int identity (1, 1) primary key not null,
    Size         int                             not null
)

create table Seat
(
    SeatID       int identity (1, 1) primary key not null,
    RowNum       int                             not null,
    ColNum       int                             not null,
    AuditoriumID int                             not null foreign key references Auditorium (AuditoriumID)
)

create table Category
(
    CategoryID int identity (1, 1) primary key not null,
    Name       varchar(50)                     not null unique
)

create table Movie
(
    MovieID    int identity (1, 1) primary key not null,
    Name       varchar(50)                     not null,
    year       nvarchar(4)                     not null,
    Director   varchar(50)                     not null,
    Country    varchar(50)                     not null,
    Duration   int                             not null,
    PremDate   date                            not null,
    RemDate    date                            not null,
    CategoryID int                             not null foreign key references Category (CategoryID)
)

create table Actor
(
    MovieID int          not null foreign key references Movie (MovieID),
    Name    varchar(100) not null
)

create table Time
(
    TimeID int identity (1,1) primary key not null,
    Time   time                           not null
)

create table Screening
(
    ScreeningID int identity (1, 1) primary key not null,
    IsAvailable bit                             not null,
    TimeID      int                             not null foreign key references Time (TimeID),
    MovieID     int                             not null foreign key references Movie (MovieID)
)

create table Schedule
(
    AuditoriumID int  not null foreign key references Auditorium (AuditoriumID),
    ScreeningID  int  not null foreign key references Screening (ScreeningID),
    Date         date not null
)

create table Ticket
(
    TicketID    int identity (1, 1) primary key not null,
    Price       int default 5                   not null,
    IsAvailable bit default 1                   not null,
    OrderID     int                             null foreign key references "Order" (OrderID),
    ScreeningID int                             not null foreign key references Screening (ScreeningID),
    SeatID      int                             not null foreign key references Seat (SeatID)
)
