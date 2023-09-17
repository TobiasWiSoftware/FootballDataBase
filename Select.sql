-- How many goals did Lewandowski, Sane, Müller and Alaba achive in sum

Select 'Goals selected players' as Title, Count(*) as Goals 
From TGoal
Inner Join TPlayer on TPlayer.PlayerId = TGoal.PlayerId
where TPlayer.Lastname = 'Lewandowski' or Lastname = 'Müller' or Lastname = 'Sane' or Lastname = 'Alaba';

-- How many goals did FC Bayern achive


SELECT
(
Select Count(*)
From TGoal
Inner Join TPlayer on TPlayer.PlayerId = TGoal.PlayerId
Inner Join TClub on TClub.ClubId = TPlayer.ClubId
Where Clubname like '%FC Bayern%')

+ 

-- need to combine with owngoals

(SELECT COUNT(*)
FROM tgoal
INNER JOIN tplayer ON tgoal.PlayerId = tplayer.PlayerId
INNER JOIN tgame ON tgame.GameId = tgoal.GameId
WHERE tgoal.OwnGoal = TRUE AND (tgame.GuestId = 1 OR tgame.HomeId = 1)
AND tplayer.ClubId <> 1
) AS GoalsBayern;



-- 60 and 98

-- Select the goaldifference of a club at the end of the season

-- NOTE: Some results are not correct, f.e. game 58 are the wrong clubs, check data from webcrawler??

SET @ClubId = 0;

SELECT ClubId INTO @ClubId FROM tclub WHERE ClubName LIKE '%Leipzig%';


SET @GoalsAchieved = 0;
SET @GetOwnGoals = 0;
SET @GoalsReceived = 0;
SET @ConcededOwnGoals = 0;

SELECT COUNT(*)
INTO @GoalsAchieved
FROM tgoal
INNER JOIN tplayer ON tgoal.PlayerId = tplayer.PlayerId
WHERE tplayer.ClubId = @ClubId AND tgoal.OwnGoal = FALSE;

SELECT COUNT(*)
INTO @GetOwnGoals
FROM tgoal
INNER JOIN tgame ON tgoal.GameId = tgame.GameId
INNER JOIN tplayer ON tplayer.PlayerId = tgoal.PlayerId
WHERE (tgame.HomeId = @ClubId OR tgame.GuestId = @ClubId)
AND tplayer.ClubId <> @ClubId AND tgoal.OwnGoal = TRUE;

SELECT COUNT(*)
INTO @GoalsReceived
FROM tgoal
INNER JOIN tplayer ON tgoal.PlayerId = tplayer.PlayerId
INNER JOIN tgame ON tgame.GameId = tgoal.GameId
WHERE (tgame.HomeId = @ClubId OR tgame.GuestId = @ClubId)
AND tplayer.ClubId <> @ClubId AND tgoal.OwnGoal = FALSE;

SELECT COUNT(*)
INTO @ConcededOwnGoals
FROM tgoal
INNER JOIN tgame ON tgoal.GameId = tgame.GameId
INNER JOIN tplayer ON tplayer.PlayerId = tgoal.PlayerId
WHERE (tgame.HomeId = @ClubId OR tgame.GuestId = @ClubId)
AND tplayer.ClubId = @ClubId AND tgoal.OwnGoal = TRUE;



SELECT @GoalsAchieved + @GetOwnGoals AS GoalAchieved, @GoalsReceived + @ConcededOwnGoals AS GoalsReceived;


-- RB leipzig 60 : 32
