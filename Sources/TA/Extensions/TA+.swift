extension TA {
	@discardableResult
	mutating func start() -> Self {
		createUser()

		return self
	}	

	mutating func createUser() {
		print("Welcome to TA!")
		print("Enter your name: ")

		guard let input = readLine() else {
			fatalError("Bad Input!")
		}
		
		user = User(name: input)

		guard let user = user else {
			fatalError("Could not create user.")
		}
		
		print("Created: \(user)")
	}
}
