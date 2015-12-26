event handling
notifyAbout: aMessage from: aSender to: aRecipient with: aPayload
	"Handles no events, but provides a dummy function to prevent errors when performing events on an item not supporting events."
	^ nil