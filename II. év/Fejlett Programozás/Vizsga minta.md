1. Miért nem végrehajtható az object code? Mi teszi végrehajthatóvá?
   Az object kód nyers gépi kód. A linker teszi futtathatóvá, mert összeköti a szükséges könyvtárakkal/osztályokkal.
2. Írj egy függvényt ami ellenőrzi, hogy egy string "boldog":
   - A hossza legalább 3
   - Minden egymást követő karaktere páronként különböző
```cpp
bool isHappy(std::string myString){
if (myString.length() < 3) return false;
for(int i = 0; i < myString.length(); ++i){
		if(myString[i] == myString[i-1]) return false;
	}
return true;
}
```
3. Int vector második legnagyobb eleme
   ```cpp
int findSecondLargest(const std::vector<int>& nums) {
    // Handle edge cases
    if (nums.size() < 2) {
        throw std::invalid_argument("Vector must contain at least two elements.");
    }

    int largest = nums[0];
    int secondLargest = nums[0];

    for (int num : nums) {
        if (num > largest) {
            secondLargest = largest; // Update second largest
            largest = num;           // Update largest
        } else if (num > secondLargest && num != largest) {
            secondLargest = num;     // Update second largest if not equal to largest
        }
    }

    if (secondLargest == std::numeric_limits<int>::min()) {
        throw std::runtime_error("No second distinct largest number found.");
    }

    return secondLargest;
}
```
4. Vehicle osztály
   ```cpp
class Vehicle { 
   protected: 
	   std::string model; 
	   std::string brand; 
	   int year; 
	public: 
	// Constructor 
	Vehicle(const std::string& model, const std::string& brand, int year) : model(model), brand(brand), year(year) {} 
	
	// Virtual destructor for safe polymorphism 
	virtual ~Vehicle() = default; 
	
	// Virtual print function 
	virtual void print(std::ostream& os) const {
		 os << "Model: " << model << ", Brand: " << brand << ", Year: " << year; } 
		 
		 // Friend function for the inserter operator 
	friend std::ostream& operator<<(std::ostream& os, const Vehicle& vehicle) { vehicle.print(os); // Use the print function return os; } };
```
5. Car és Truck osztályok
   ```cpp
class Car : public Vehicle { 
	private: 
		int numSeats; 
		
	public: 
	
	// Constructor 
	Car(const std::string& model, const std::string& brand, int year, int numSeats) : Vehicle(model, brand, year), numSeats(numSeats) {} 
	
	// Override print function 
	void print(std::ostream& os) const override { 
		Vehicle::print(os); 
		// Call base class print os << ", Seats: " << numSeats; } };
```