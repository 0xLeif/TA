struct Point {
    var x: Int
    var y: Int
}

// MARK: Mock
extension Point: Mockable {
    static var mock: Self {
        Point(x: 0, y: 0)
    }
}