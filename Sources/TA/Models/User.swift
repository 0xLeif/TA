public struct User {
    public var name: String

    // MARK: PlayerController
    public var location: Point = Point(x: 5, y: 5)
    public var symbol: String {
        "c"
    }
    public var z: Int {
        1
    }
}

extension User: PlayerController {}
