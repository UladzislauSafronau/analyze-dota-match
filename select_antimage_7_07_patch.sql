SELECT * FROM
    (SELECT match_id,purchase_log 
    FROM player_matches
    WHERE hero_id=1) 
AS antimag_matches
JOIN
    (SELECT * FROM match_patch WHERE match_patch.patch='7.07') 
AS patches 
on antimag_matches.match_id = patches.match_id


