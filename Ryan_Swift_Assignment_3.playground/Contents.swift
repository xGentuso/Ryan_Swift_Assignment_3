class Ship {
    
    let name: String
    var year: Int
    let countryOfOrigin: String
    
    init(name: String, year: Int, countryOfOrigin: String) {
        self.name = name
        self.year = year
        self.countryOfOrigin = countryOfOrigin
    }
}

class CruiseShip : Ship {
    
    var maxCapacity: Int
    var oceanOfOperation: String
    var currentPassengerCount: Int
    
    init(name: String, year: Int, countryOfOrigin: String, maxCapacity: Int, oceanOfOperation: String, currentPassengerCount: Int) {
        
        self.maxCapacity = maxCapacity
        self.oceanOfOperation = oceanOfOperation
        self.currentPassengerCount = currentPassengerCount

        super.init(name: name, year: year, countryOfOrigin: countryOfOrigin)
    }
    
    func newPassenger() -> Void {
        if currentPassengerCount < maxCapacity {
            currentPassengerCount += 1
            print("New Passenger onboard. Current Passenger Count: \(currentPassengerCount)")
        } else {
            print("Cruise Ship is full!")
        }
    }
    
    func newPassengerCount() -> Void {
        print("New Passenger Count: \(currentPassengerCount)")
    }
}

class CargoShip : Ship {
    var maxCargoCapacity: Int
    var currentCargoCount: Int
    let isInternational: Bool
    
    init(name: String, year: Int, countryOfOrigin: String, maxCargoCapacity: Int, currentCargoCount: Int, isInternational: Bool) {
        
        self.maxCargoCapacity = maxCargoCapacity
        self.currentCargoCount = currentCargoCount
        self.isInternational = isInternational
        
        super.init(name: name, year: year, countryOfOrigin: countryOfOrigin)
    }
    
    func newCargo() -> Void {
        if currentCargoCount < maxCargoCapacity {
            currentCargoCount += 1
            print("New Cargo added. Current Cargo Count: \(currentCargoCount)")
        } else {
            print("Cargo Ship is at max capacity, SORRY.")
        }
    }
    
    func newCargoCount() -> Void {
        print("New Cargo Count \(currentCargoCount)")
    }
}

class PirateShip : Ship {
    
    var maxTreasureCapacity: Int
    var currentTreasureCount: Int
    var numberOfCannons: Int
    
    init(name: String, year: Int, countryOfOrigin: String, maxTreasureCapacity: Int, currentTreasureCount: Int, numberOfCannons: Int) {
        self.maxTreasureCapacity = maxTreasureCapacity
        self.currentTreasureCount = currentTreasureCount
        self.numberOfCannons = numberOfCannons
        
        super.init(name: name, year: year, countryOfOrigin: countryOfOrigin)
    }
    
    func newTreasure() -> Void {
        if currentTreasureCount < maxTreasureCapacity {
            currentTreasureCount += 1
            print("New Treasure found. Current Treasure Count: \(currentTreasureCount)")
        } else {
            print("Pirate Ship is already full of Treasure.")
        }
    }
    
    func newTreasureCount() -> Void {
        print("New Treasure Count :)")
    }
}

let cruiseShip = CruiseShip(name: "Ocean Blue Cruises", year: 1994, countryOfOrigin: "Canada", maxCapacity: 300, oceanOfOperation: "Atlantic", currentPassengerCount: 33)

print("""
Ship Name: \(cruiseShip.name)
Year of Build: \(cruiseShip.year)
Country of Origin: \(cruiseShip.countryOfOrigin)
""")

print("""
Max Capacity: \(cruiseShip.maxCapacity)
Ocean of Operation: \(cruiseShip.oceanOfOperation)
Current Passenger Count: \(cruiseShip.currentPassengerCount)
""")


cruiseShip.newPassenger()

