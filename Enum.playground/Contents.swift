enum Gender {
    case male
    case female
}
class Man {
    private let name: String
    private let surname: String
    private let age: Int?
    private let gender: Gender
    var fullName: String {
        return "\(name) \(surname)"
    }
    init(name: String, surname: String, age: Int? = nil, gender: Gender = .female) {
        self.name = name
        self.surname = surname
        self.age = age
        self.gender = gender
    }
    func sayAboutYourself() {
        var aboutYourself: String = "Hi, my name is \(fullName), I am \(age ?? 0) years old,"
        switch gender {
        case .male:
            aboutYourself = aboutYourself + " and I am male"
        case .female:
            aboutYourself = aboutYourself + " and I am female"
        }
        print(aboutYourself)
    }
}

let anna = Man(name: "Anna", surname: "Popova", gender: .female)
anna.sayAboutYourself()

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
    init(name: String, surname: String, age: Int? = nil, gender: Gender = .female, university: String, stage: UniversityStage) {
        self.universityName = university
        self.stage = stage
        super.init(name: name, surname: surname, age: age, gender: gender)
    }
    override func sayAboutYourself() {
        super.sayAboutYourself()
        print("I am lerning in the \(universityName) university, on \(stage) stage")
    }
}
let vasya = Student (name: "Vasya", surname: "Lutov", age: 22, gender: .male, university: "USUE", stage: .fifth)
vasya.sayAboutYourself()

class Employeer: Man {
    let workPlace: String
    let position: String
    init(name: String, surname: String, age: Int? = nil, gender: Gender = .female, workPlace: String, position: String) {
        self.workPlace = workPlace
        self.position = position
        super.init(name: name, surname: surname, age: age, gender: gender)
    }
    override func sayAboutYourself() {
        super.sayAboutYourself()
        print("i am working in the \(workPlace), and I am \(position)" )
    }
}
let employeer = Employeer (name: "Fedor", surname: "Kozlov", age: 34, gender: . male, workPlace: "SOBR", position: "manager")
employeer.sayAboutYourself()

print(anna.fullName)

