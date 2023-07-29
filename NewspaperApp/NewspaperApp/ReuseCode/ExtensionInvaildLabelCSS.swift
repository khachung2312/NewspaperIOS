//
//  ExtensionInvaildLabelCSS.swift
//  NewspaperApp
//
//  Created by Nguyễn Mạnh Linh on 30/07/2023.
//

import Foundation
import UIKit

extension UIView {
    func addInvalidLabel(text: String, for textField: UITextField) {
        let invalidLabel = UILabel(frame: CGRect(x: (textField.frame.minX + 7), y: (textField.frame.minY + 25), width: textField.frame.width, height: textField.frame.height))
        invalidLabel.text = text
        invalidLabel.textColor = .red
        invalidLabel.font = UIFont.systemFont(ofSize: 10)
        self.addSubview(invalidLabel)
    }
}
