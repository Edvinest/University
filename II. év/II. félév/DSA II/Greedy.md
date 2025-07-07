```pseudo
// Példa: Tantárgyak maximális pontszáma adott időintervallumban (Greedy alapú)
function greedySubjectSelection(subjects[], timeLimit){
	// subjects: tömb, amely minden tantárgyhoz pontszámot és időt tartalmaz
	// timeLimit: összidő

	// A tantárgyakat rendezzük csökkenő pont/óra arány szerint
	sort(subjects by score/duration descending)

	currentTime = 0
	selected = []

	for(subject in subjects){
		if(currentTime + subject.duration <= timeLimit){
			selected.push_back(subject)
			currentTime += subject.duration
		}
	}

	return selected
}
```
