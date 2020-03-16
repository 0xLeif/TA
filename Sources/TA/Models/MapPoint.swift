public struct MapPoint {
    public var location: Point
    public var symbol: String
    public var z: Int {
        0
    }
}

// MARK: Mock
extension MapPoint: MapVisable { }
extension MapPoint: Mockable {
    public static var mock: Self {
        MapPoint(location: Point.mock, symbol: "x")
    }
}