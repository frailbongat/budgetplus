//
//  FontStyles.swift
//  budgetplus
//
//  Created by Frail Bongat on 12/24/22.
//

import Foundation
import SwiftUI

extension Font {
    static var navTitle: Font {
        return Font.custom("Poppins-Medium", size: 18)
    }
    
    static var heading: Font {
        return Font.custom("Poppins-Medium", size: 14)
    }
    
    static var text: Font {
        return Font.custom("Poppins-Regular", size: 11)
    }
    
    static var amount: Font {
        return Font.custom("Poppins-Bold", size: 14)
    }
    
    static var display: Font {
        return Font.custom("Poppins-Medium", size: 16)
    }
    
    static var leading: Font {
        return Font.custom("Poppins-Regular", size: 12)
    }
}
