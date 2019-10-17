//
//  NibLoadable.swift
//  UIView从xib中加载(POP)
//
//  Created by Jason on 2019/10/17.
//  Copyright © 2019 Jason. All rights reserved.
//

import UIKit

protocol NibLoadable {
    
}

extension NibLoadable where Self : UIView {
    
    static func loadFromNib(_ nibName : String?=nil) -> Self {
        
        return Bundle.main.loadNibNamed(nibName ?? "\(self)", owner: nil, options: nil)?.first as! Self
    }
    
}
