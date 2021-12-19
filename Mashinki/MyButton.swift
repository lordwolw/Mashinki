//
//  MyButton.swift
//  Mashinki
//
//  Created by Student on 13.12.2021.
//

import UIKit

class MyButton: UIButton {

    convenience init(type: UIButton.ButtonType){
        self.init(type: type)
        clipsToBounds = true
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        clipsToBounds = true
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        clipsToBounds = true
    }
    
    override var clipsToBounds: Bool {
        didSet {
            layer.cornerRadius = 10
        }
    }
}
