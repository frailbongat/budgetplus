//
//  AccountsView.swift
//  budgetplus
//
//  Created by Frail Bongat on 12/24/22.
//

import SwiftUI

struct AccountsView: View {
    @Environment(\.colorScheme) var colorScheme
    
    var body: some View {
        Toolbar(title: "Accounts", hasAction: true)
    }
}

struct AccountsView_Previews: PreviewProvider {
    static var previews: some View {
        AccountsView()
    }
}
