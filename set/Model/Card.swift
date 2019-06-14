

import Foundation

struct Card : Equatable {
    
    static func ==(lhs: Card, rhs: Card) -> Bool {
        return lhs.cardColor == rhs.cardColor &&
            lhs.cardNumber == rhs.cardNumber &&
            lhs.cardShading == rhs.cardShading &&
            lhs.cardShape == rhs.cardShape
    }
    
    let cardColor: CardColor
    let cardShape: CardShape
    let cardNumber: CardNumber
    let cardShading: CardShading
}

enum CardColor {
    case red
    case green
    case purple
    
    static let allValues = [red, green, purple]
}

enum CardShape {
    case diamond
    case squiggle
    case oval
    
    static let allValues = [diamond, squiggle, oval]
}

enum CardNumber {
    case one
    case two
    case three
    
    static let allValues = [one, two, three]
}

enum CardShading {
    case solid
    case striped
    case open
    
    static let allValues = [solid, striped, open]
}
