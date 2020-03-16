struct User {
    var name: String

	// MARK: PlayerController
	var postion: Point = Point(x: 0, y: 0)
}

extension User: PlayerController {}
