//
//  TabBar.swift
//  budgetplus
//
//  Created by Frail Bongat on 12/25/22.
//

import SwiftUI

enum Tabs: Int {
    case transactions = 0
    case budgets = 1
    case accounts = 2
    case settings = 3
}

struct Tabbar: View {
    @Environment(\.colorScheme) var colorScheme
    @Binding var selected: Tabs
    
    var body: some View {
        ZStack {
            Rectangle()
                .frame(width: .infinity, height: 82)
                .shadow(color: Color("Shadow"),
                        radius: colorScheme == .light ? 9 : 15,
                        x: 0,
                        y: colorScheme == .light ? 0 : -10)
            HStack {
                Button {
                    selected = .transactions
                } label: {
                    Tab(icon: "ic-transaction", isActive: selected == .transactions)
                }
                Button {
                    selected = .budgets
                } label: {
                    Tab(icon: "ic-budget", isActive: selected == .budgets)
                }
                
                Button {
                    // Open add transaction screen
                } label: {
                    Image("ic-add-solid").frame(maxWidth: .infinity)
                }
                
                Button {
                    selected = .accounts
                } label: {
                    Tab(icon: "ic-account", isActive: selected == .accounts)
                }
                Button {
                    selected = .settings
                } label: {
                    Tab(icon: "ic-setting", isActive: selected == .settings)
                }
            }
            .frame(height: 82)
            .background(Color("Background"))
        }
    }
}

struct Tabbar_Previews: PreviewProvider {
    static var previews: some View {
        Tabbar(selected: .constant(.transactions))
    }
}
