public class User {
    public var name: String

    // MARK: PlayerController
    public var location: Point
    public var symbol: String {
        "c"
    }
    public var z: Int {
        1
    }

	public init(name: String, location: Point) {
		self.name = name
		self.location = location
	}
}