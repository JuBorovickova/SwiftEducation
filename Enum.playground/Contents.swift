enum Gender {
    case male
    case female
}
class Human {
    let name: String
    let age: Int?
    let gender: Gender
    init(name: String, age: Int? = nil, gender: Gender = .female) {
        self.name = name
        self.age = age
        self.gender = gender
    }
    func sayAboutYourself() {
        var aboutYourself: String = "Hi, my name is \(name), I am \(age ?? 0) years old,"
        switch gender {
        case .male:
            aboutYourself = aboutYourself + " and I am male"
        case .female:
            aboutYourself = aboutYourself + " and I am female"
        }
        print(aboutYourself)
    }
}

let anna = Human(name: "Anna", gender: .female)

anna.sayAboutYourself()
