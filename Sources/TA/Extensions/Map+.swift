public extension Map {
    var console: String {
        data.map { row in 
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
            var row = [MapPoint]()
            (0 ..< size).forEach { x in 
                row.append(MapPoint.mock)
            }
            data.append(row)
        }
    }
}