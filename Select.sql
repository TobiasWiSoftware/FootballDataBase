-- How many goals did Lewandowski, Sane, Müller and Alaba achive in sum and how many Fc Bayern

Select 'Goals selected players' as Title, Count(*) as Count 
From TGoal
Inner Join TPlayer on TPlayer.PlayerId = TGoal.PlayerId
where TPlayer.Lastname = 'Lewandowski' or Lastname = 'Müller' or Lastname = 'Sane' or Lastname = 'Alaba'

Union

Select 'Goals Club' as Title, Count(*) as 'Goals FC Bayern'
From TGoal
Inner Join TPlayer on TPlayer.PlayerId = TGoal.PlayerId
Inner Join TClub on TClub.ClubId = TPlayer.ClubId
Where Clubname like '%FC Bayern%';

-- 60 and 99

-- Select the goaldifference of a club at the end of the season

SET @ClubId = 2;

SELECT
((SELECT ClubName FROM tclub WHERE ClubId = @ClubId)) AS ClubName,

((SELECT SUM(GoalHome) FROM tgame WHERE HomeId = @ClubId) + 
(SELECT SUM(GoalGuest) FROM tgame WHERE GuestId = @ClubId)) AS GoalsShot,

((SELECT SUM(GoalHome) FROM tgame WHERE GuestId = @ClubId) +
(SELECT SUM(GoalGuest) FROM tgame WHERE HomeId = @ClubId)) AS GoalsGet;


-- RB leipzig 60 : 32
