import Foundation

public enum GameCharacterType {
    case giant
    case wizard
    case elf
}

public protocol GameCharacter: AnyObject {
    var name: String { get }
    var hitPoints: Int { get set }
    var attackPoints: Int { get }
}

class Giant: GameCharacter {
    let name = "giant"
    var hitPoints = 10
    let attackPoints = 3
}

class Wizard: GameCharacter {
    let name = "wizard"
    var hitPoints = 5
    let attackPoints = 5
}

class Elf: GameCharacter {
    let name = "elf"
    var hitPoints = 3
    let attackPoints = 10
}

public struct GameCharacterFactory {
    static public func make(ofType type: GameCharacterType) -> GameCharacter {
        switch type {
        case .giant:
            return Giant()
        case .wizard:
            return Wizard()
        case .elf:
            return Elf()
        }
    }
}

public func battle(_ char1: GameCharacter, vs char2: GameCharacter) {
    if char1.attackPoints >= char2.hitPoints {
        print("\(char2.name) defeated!")
        return
    } else {
        char2.hitPoints -= char1.attackPoints
    }

    if char2.attackPoints >= char1.hitPoints {
        print("\(char2.name) defeated!")
        return
    } else {
        char1.hitPoints -= char2.attackPoints
    }

    battle(char1, vs: char2)
}
