//
//  Tab.swift
//  budgetplus
//
//  Created by Frail Bongat on 12/25/22.
//

import SwiftUI

let activeSuffix = "-solid"

struct Tab: View {
    var icon: String
    var isActive: Bool
    
    var body: some View {
        Image(isActive ? "\(icon)\(activeSuffix)" : icon)
            .frame(maxWidth: .infinity)
    }
}

struct Tab_Previews: PreviewProvider {
    static var previews: some View {
        Tab(icon: "ic-transaction", isActive: true)
    }
}
