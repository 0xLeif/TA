public struct Point {
    public var x: Int
    public var y: Int
}

// MARK: Mock
extension Point: Equatable { }
extension Point: Mockable {
    public static var mock: Self {
        Point(x: 0, y: 0)
    }
}