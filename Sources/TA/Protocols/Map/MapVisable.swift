public protocol MapVisable {
    var location: Point { get set }
    var symbol: String { get }
    var z: Int { get }
}