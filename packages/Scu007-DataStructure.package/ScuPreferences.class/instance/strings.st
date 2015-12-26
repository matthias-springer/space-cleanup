accessing
strings
	strings ifNil: [
		self strings: (IdentityDictionary newFromPairs: {
			#wonTitle. 'Yaaay, you made it'.
			#wonText. 'You successfully managed to clean up the spaceship.', 
				Character cr, ' Congratulations on achieving a score of {1} points.'.
			#lostTitle. 'Game Over'.
			#lostText. 'You did not manage to clean the spaceship.'.
			#closeBtnText. 'Close game'.
			#levelAgainBtnText. 'Let me play the level again'.
			#anotherGameBtnText. 'Let me play another game'
		})]. 
	^ strings