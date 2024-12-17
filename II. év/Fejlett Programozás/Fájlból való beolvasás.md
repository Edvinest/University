```cpp
std::ifstream stream(filename);
std::string line;

if(!stream.is_open()){
	std::cerr << "File couldn't be opeend!" << std::endl;
	return;
}

while(getline(stream, line)){
//stringstream segítségével könnyen ki lehet szedni az adatokat

std::stringstream ss(line);
std::string myString;
int myInt;

getline(ss, myString, ' ') // az utolsó rész az elválasztás

//ha integerre van szükségünk
ss >> myInt;
}
```
Ha nem space/tab választja el az elemeket, akkor szükséges használni a `getline`-t. Máskülönben lehet egyből olvasva (A lenti kódban látható)
### Ha tudjuk, hogy egy üres sor választja el a különböző fajta adatokat
1. megoldás
```cpp
bool readingContacts = true;

while(getline(stream,line)){  
    if (line.empty()){  
        readingContacts = true;  
        continue;  
    }  
  
    if(readingContacts){  
        std::stringstream contactStream(line);  
        std::string firstName, lastName, phoneNumber, county, city, str;  
        int nr;  
  
        getline(contactStream, firstName, ' ');  
        getline(contactStream, lastName, ' ');  
        getline(contactStream, phoneNumber, ' ');  
        getline(contactStream, county, ' ');  
        getline(contactStream, city, ' ');  
        getline(contactStream, str, ' ');  
        contactStream >> nr;  
  
        contacts.push_back(Contact(id++, firstName, lastName, phoneNumber, county, city, str, nr));  
    }  
  
    else{  
        std::stringstream historyStream(line);  
        int callerID, calleeID, datetime, duration;  
        historyStream >> callerID >> calleeID >> datetime >> duration;  
  
        callHistory.push_back(CallInfo(callerID, calleeID, datetime, duration));  
    }  
}
```

2. megoldás
```cpp
// Read contacts first 
while (getline(stream, line)) { 
	if (line.empty()) { 
		// Stop processing contacts and move to call history 
		break; 
	} 
	
	std::stringstream contactStream(line); 
	std::string firstName, lastName, phoneNumber, county, city, str; 
	int nr; 
	
	contactStream >> firstName >> lastName >> phoneNumber >> county >> city >> str >> nr; 
	contacts.push_back(Contact(id++, firstName, lastName, phoneNumber, county, city, str, nr)); 
} 
	
// Read call history 
while (getline(stream, line)) { 
	if (line.empty()) { 
	// Skip additional empty lines, if any 
	continue; 
	} 
	
	std::stringstream historyStream(line); 
	int callerID, calleeID, datetime, duration; 
	
	historyStream >> callerID >> calleeID >> datetime >> duration;
	callHistory.push_back(CallInfo(callerID, calleeID, datetime, duration)); 
}
```
