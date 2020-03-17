public extension Map {
    var console: String {
        var map = [[MapVisable]]()

        (0 ..< size).map { y in
            var row = [MapVisable]()
            (0 ..< size).map { x in
                if let point = data
                    .filter({ $0.location == Point(x: x, y: y) })
                    .sorted(by: { $0.z > $1.z })
                    .first {
                    row.append(point)
                } else {
                    row.append(MapPoint.mock)
                }

            }
            map.append(row)
        }

        return map.map { row in 
            row.map { point in
                point.symbol
            }
            .joined() + "\n"
        }
        .joined()
    }

    init(size: Int = 10) {
        self.size = size
        self.data = []
        (0 ..< size).forEach { y in
            (0 ..< size).forEach { x in 
                var point = MapPoint.mock
                point.location = Point(x: x, y: y)
                data.append(point)
            }
        }
    }

    mutating func add(point: MapVisable) {
        data.append(point)
    }
}
