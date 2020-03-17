extension User {
    public func move(to: Point) {
        location = to
    }
}

extension User: PlayerController {
    // MARK: Actionable
    public func act(on action: String) {
        switch action {
        case "down":
            location.y += 1
        case "up":
            location.y -= 1
        case "left":
            location.x -= 1
        case "right":
            location.x += 1
        default:
            print("\(name) thinks about '\(action)'")
            
        }
    }
}