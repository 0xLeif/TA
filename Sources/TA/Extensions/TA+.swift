extension TA {
    init() {
        let user = TA.createUser()
        var map = TA.createMap()

        map.add(point: user)
        
        self = TA(user: user, map: map)
    }
}

// MARK: Static Functions
extension TA {
    static func createUser() -> User{
        print("Welcome to TA!")
        print("Enter your name: ")

        guard let input = readLine() else {
            fatalError("Bad Input!")
        }

        let user = User(name: input)

        print("Created: \(user)")

        return user
    }

    static func createMap(withSize size: Int = 10) -> Map {
        print("Creating Map")

        var map = Map(size: size)

        print(map.console)

        return map
    }
}