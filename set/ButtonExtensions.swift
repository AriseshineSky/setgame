
import Foundation
import UIKit

extension UIButton {

    func IsSelected() -> Bool {
        return self.layer.borderWidth == 4.0
    }
    
    func select(borderColor: UIColor = #colorLiteral(red: 1, green: 0.6898569423, blue: 0.2088818223, alpha: 1)) {
        self.layer.borderWidth = 4.0
        self.layer.borderColor = borderColor.cgColor
        self.layer.backgroundColor = #colorLiteral(red: 1, green: 0.6898569423, blue: 0.2088818223, alpha: 1)
    }
    
    func deselect() {
        self.layer.borderWidth = 2.0
        self.layer.borderColor = #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
        self.layer.backgroundColor = #colorLiteral(red: 0.501960814, green: 0.501960814, blue: 0.501960814, alpha: 1)
    }
}
