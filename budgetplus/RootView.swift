//
//  RootView.swift
//  budgetplus
//
//  Created by Frail Bongat on 12/24/22.
//

import SwiftUI

struct RootView: View {
    @State var selected: Tabs = .transactions
    
    var body: some View {
        ZStack {
            Color("Background").ignoresSafeArea()
            VStack {
                switch selected {
                case .transactions:
                    TransactionsView()
                case .budgets:
                    BudgetsView()
                case .accounts:
                    AccountsView()
                case .settings:
                    SettingsView()
                }
                
                Spacer()
                
                Tabbar(selected: $selected)
            }
        }
    }
}

struct RootView_Previews: PreviewProvider {
    static var previews: some View {
        RootView()
    }
}
