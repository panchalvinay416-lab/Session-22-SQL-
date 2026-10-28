create database ipl  ; 
use ipl ; 

CREATE TABLE matches (
    id INT PRIMARY KEY AUTO_INCREMENT,
    season INT,
    match_date DATE,
    city VARCHAR(100),
    team1 VARCHAR(100),
    team2 VARCHAR(100),
    winner VARCHAR(100)
);

INSERT INTO matches
(season, match_date, city, team1, team2, winner)
VALUES
(2024, '2024-03-22', 'Chennai', 'Chennai Super Kings', 'Royal Challengers Bengaluru', 'Chennai Super Kings'),
(2024, '2024-03-23', 'Chandigarh', 'Punjab Kings', 'Delhi Capitals', 'Punjab Kings'),
(2024, '2024-03-23', 'Kolkata', 'Kolkata Knight Riders', 'Sunrisers Hyderabad', 'Kolkata Knight Riders'),
(2024, '2024-03-24', 'Jaipur', 'Rajasthan Royals', 'Lucknow Super Giants', 'Rajasthan Royals'),
(2024, '2024-03-24', 'Ahmedabad', 'Gujarat Titans', 'Mumbai Indians', 'Gujarat Titans'),
(2024, '2024-03-25', 'Bengaluru', 'Royal Challengers Bengaluru', 'Punjab Kings', 'Royal Challengers Bengaluru'),
(2024, '2024-03-26', 'Chennai', 'Chennai Super Kings', 'Gujarat Titans', 'Chennai Super Kings'),
(2024, '2024-03-27', 'Hyderabad', 'Sunrisers Hyderabad', 'Mumbai Indians', 'Sunrisers Hyderabad'),
(2024, '2024-03-28', 'Jaipur', 'Rajasthan Royals', 'Delhi Capitals', 'Rajasthan Royals'),
(2024, '2024-03-29', 'Bengaluru', 'Royal Challengers Bengaluru', 'Kolkata Knight Riders', 'Kolkata Knight Riders');

select * from matches ; 

