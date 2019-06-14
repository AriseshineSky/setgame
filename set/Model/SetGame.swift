
import Foundation

class SetGame {
    var availableCards = [Card]()
    var cardsInGame = [Card]()
    var selectedCards = [Card]()
    
    var score = 0
    
    init() {
        newGame()
    }
    
    func newGame() {
        score = 0
        availableCards.removeAll()
        cardsInGame.removeAll()
        selectedCards.removeAll()
        
        generateAllCardCombinations()
        
        addCards(numberOfCardsToSelect: 12)
        
    }
    
    private func generateAllCardCombinations() {
        for color in CardColor.allValues {
            for shape in CardShape.allValues {
                for number in CardNumber.allValues {
                    for shading in CardShading.allValues {
                        let card = Card(cardColor: color, cardShape: shape, cardNumber: number, cardShading: shading)
                        availableCards.append(card)
                    }
                }
            }
        }
    }
    
    private func addCard() {
        let selectedCard = availableCards.remove(at: availableCards.count.arc4Random())
        cardsInGame.append(selectedCard)
    }
    
    func addCards(numberOfCardsToSelect numberOfCards: Int) {
        for _ in 0..<numberOfCards {
            addCard()
        }
    }
    
    func cardIsSelected(card: Card) -> Bool {
        return selectedCards.index(of: card) != nil
    }
    
    func isSet() -> Bool {
        
        if selectedCards.count != 3 {
            return false
        }
        
        if selectedCards[0].cardColor == selectedCards[1].cardColor {
            if selectedCards[0].cardColor != selectedCards[2].cardColor {
                return false
            }
        } else if selectedCards[1].cardColor == selectedCards[2].cardColor {
            return false
        } else if (selectedCards[0].cardColor == selectedCards[2].cardColor) {
            return false
        }
        
        if selectedCards[0].cardNumber == selectedCards[1].cardNumber {
            if selectedCards[0].cardNumber != selectedCards[2].cardNumber {
                return false
            }
        } else if selectedCards[1].cardNumber == selectedCards[2].cardNumber {
            return false
        } else if (selectedCards[0].cardNumber == selectedCards[2].cardNumber) {
            return false
        }
        
        if selectedCards[0].cardShading == selectedCards[1].cardShading {
            if selectedCards[0].cardShading != selectedCards[2].cardShading {
                return false
            }
        } else if selectedCards[1].cardShading == selectedCards[2].cardShading {
            return false
        } else if (selectedCards[0].cardShading == selectedCards[2].cardShading) {
            return false
        }
        
        if selectedCards[0].cardShape == selectedCards[1].cardShape {
            if selectedCards[0].cardShape != selectedCards[2].cardShape {
                return false
            }
        } else if selectedCards[1].cardShape == selectedCards[2].cardShape {
            return false
        } else if (selectedCards[0].cardShape == selectedCards[2].cardShape) {
            return false
        }
        
        return true
    }
    
    func select(card: Card) {
        if selectedCards.count == 3 && isSet() {
            selectedCards.forEach {
                if let selectedCardInGameIndex = cardsInGame.index(of: $0) {
                    cardsInGame.remove(at: selectedCardInGameIndex)
                    if availableCards.count > 0 {
                        let selectedCard = availableCards.remove(at: availableCards.count.arc4Random())
                        cardsInGame.insert(selectedCard, at: selectedCardInGameIndex)
                    }
                }
            }
            selectedCards.removeAll()
            score += 3
        } else if selectedCards.count == 3 && !isSet() {
            selectedCards.removeAll()
            score -= 1
        }
        
        if let cardToSelect = selectedCards.index(of: card) {
            selectedCards.remove(at: cardToSelect)
        } else {
            selectedCards.append(card)
        }
    
    }
}
