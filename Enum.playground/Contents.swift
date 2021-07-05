enum Gender {
    case male
    case female
}
class Man {
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

//let anna = Man(name: "Anna", gender: .female)

//anna.sayAboutYourself()

enum UniversityStage {
    case first
    case second
    case third
    case forth
    case fifth
}

class Student: Man {
    let universityName: String
    let stage: UniversityStage
    init(name: String, age: Int? = nil, gender: Gender = .female, university: String, stage: UniversityStage) {
        self.universityName = university
        self.stage = stage
        super.init(name: name, age: age, gender: gender)
    }
    override func sayAboutYourself() {
        super.sayAboutYourself()
        print("I am lerning in the \(universityName) university, on \(stage) stage")
    }
}
let vasya = Student (name: "Vasya", age: 22, gender: .male, university: "USUE", stage: .fifth)

vasya.sayAboutYourself()

