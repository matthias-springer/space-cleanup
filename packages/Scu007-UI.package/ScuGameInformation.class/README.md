ScuGameInformation displays information about the main player.

This are the current values for health, bucket distance, bucket damage, bucket timeout ...
Additional the current score is displayed.

The score is calculated:
	score = deceased monsters * 10 + cleaned slimes - (time/3)
The current level time is counted by ScuLevel.

The morphs updates and redisplay the values every time a event is handled.