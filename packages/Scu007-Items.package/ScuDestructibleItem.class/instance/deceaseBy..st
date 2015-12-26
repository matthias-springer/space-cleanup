actions
deceaseBy: aDamageDealer
	"Notice: deletion must occur BEFORE sending the deceased event (or at least, if deletion HAS to be moved behind sending, make sure you unregister with the event dispatcher before!)."
	self delete.
	self send: #deceased to: nil with: aDamageDealer.