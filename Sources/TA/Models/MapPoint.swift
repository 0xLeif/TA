struct MapPoint {
    var point: Point
    var symbol: String
}

// MARK: Mock
extension MapPoint: Mockable {
    static var mock: Self {
        MapPoint(point: Point.mock, symbol: "x")
    }
}