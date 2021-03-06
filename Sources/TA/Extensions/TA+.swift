public extension TA {
    convenience init() {
        Console.clear()
        let user = TA.createUser()
        var map = TA.createMap(withSize: 20)

        map.add(point: user)

        self.init(user: user, map: map)
    }
}

extension TA {
    func start() {
        while true {
            print(map.console)
            print(": ", terminator: "")
            if let command = readLine() {
                print("You want to: \(command)")
                map.data
                    .compactMap({ $0 as? Actionable })
                    .forEach { $0.act(on: command) }
            } else {
                print("Invalid Command...")
            }
        }
    }
}

// MARK: Static Functions
extension TA {
    static func createUser() -> User{
        print("Welcome to TA!")
        print("Enter your name: ", terminator: "")

        guard let input = readLine() else {
            fatalError("Bad Input!")
        }

        let user = User(name: input, location: Point.mock)

        print("Created: \(user)")

        return user
    }

    static func createMap(withSize size: Int) -> Map {
        print("Creating Map")

        var map = Map(size: size)

        return map
    }
}
