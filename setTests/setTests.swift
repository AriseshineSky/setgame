
import XCTest
@testable import set

// All example sets are from https://puzzles.setgame.com/set/rules_set.htm
class setTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    func testCorrectSet1() {
        let setGame = SetGame()
        let card1 = Card(cardColor: CardColor.red,
                        cardSymbol: CardShape.oval,
                        cardNumber: CardNumber.two,
                        cardShading: CardShading.open)

        let card2 = Card(cardColor: CardColor.red,
                         cardSymbol: CardShape.oval,
                         cardNumber: CardNumber.two,
                         cardShading: CardShading.striped)

        let card3 = Card(cardColor: CardColor.red,
                         cardSymbol: CardShape.oval,
                         cardNumber: CardNumber.two,
                         cardShading: CardShading.solid)

        setGame.select(card: card1)
        setGame.select(card: card2)
        setGame.select(card: card3)
        
        XCTAssert(setGame.isSet())
    }
    
    func testCorrectSet2() {
        let setGame = SetGame()
        let card1 = Card(cardColor: CardColor.green,
                         cardSymbol: CardShape.squiggle,
                         cardNumber: CardNumber.one,
                         cardShading: CardShading.striped)
        
        let card2 = Card(cardColor: CardColor.purple,
                         cardSymbol: CardShape.oval,
                         cardNumber: CardNumber.two,
                         cardShading: CardShading.striped)
        
        let card3 = Card(cardColor: CardColor.red,
                         cardSymbol: CardShape.diamond,
                         cardNumber: CardNumber.three,
                         cardShading: CardShading.striped)
        
        setGame.select(card: card1)
        setGame.select(card: card2)
        setGame.select(card: card3)
        
        XCTAssert(setGame.isSet())
    }
    
    func testCorrectSet3() {
        let setGame = SetGame()
        let card1 = Card(cardColor: CardColor.purple,
                         cardSymbol: CardShape.oval,
                         cardNumber: CardNumber.one,
                         cardShading: CardShading.striped)
        
        let card2 = Card(cardColor: CardColor.green,
                         cardSymbol: CardShape.diamond,
                         cardNumber: CardNumber.two,
                         cardShading: CardShading.solid)
        
        let card3 = Card(cardColor: CardColor.red,
                         cardSymbol: CardShape.squiggle,
                         cardNumber: CardNumber.three,
                         cardShading: CardShading.open)
        
        setGame.select(card: card1)
        setGame.select(card: card2)
        setGame.select(card: card3)
        
        XCTAssert(setGame.isSet())
    }
    
    func testNoSet1() {
        let setGame = SetGame()
        let card1 = Card(cardColor: CardColor.green,
                         cardSymbol: CardShape.diamond,
                         cardNumber: CardNumber.one,
                         cardShading: CardShading.solid)
        
        let card2 = Card(cardColor: CardColor.purple,
                         cardSymbol: CardShape.diamond,
                         cardNumber: CardNumber.one,
                         cardShading: CardShading.open)
        
        let card3 = Card(cardColor: CardColor.red,
                         cardSymbol: CardShape.diamond,
                         cardNumber: CardNumber.one,
                         cardShading: CardShading.open)
        
        setGame.select(card: card1)
        setGame.select(card: card2)
        setGame.select(card: card3)
        
        XCTAssert(!setGame.isSet())
    }
    
    func testNoSet2() {
        let setGame = SetGame()
        let card1 = Card(cardColor: CardColor.red,
                         cardSymbol: CardShape.squiggle,
                         cardNumber: CardNumber.two,
                         cardShading: CardShading.solid)
        
        let card2 = Card(cardColor: CardColor.red,
                         cardSymbol: CardShape.squiggle,
                         cardNumber: CardNumber.two,
                         cardShading: CardShading.striped)
        
        let card3 = Card(cardColor: CardColor.green,
                         cardSymbol: CardShape.squiggle,
                         cardNumber: CardNumber.two,
                         cardShading: CardShading.open)
        
        setGame.select(card: card1)
        setGame.select(card: card2)
        setGame.select(card: card3)
        
        XCTAssert(!setGame.isSet())
    }
}
