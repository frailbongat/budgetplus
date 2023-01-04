//
//  TransactionsView.swift
//  budgetplus
//
//  Created by Frail Bongat on 12/24/22.
//

import SwiftUI

struct TransactionsView: View {
    var body: some View {
        VStack(spacing: 0) {
            Toolbar(title: "Transactions", hasAction: false)
            ScrollView {
                VStack(spacing: 30) {
                    Search()
                    Text("First Transation goes here")
                    Text("Second Transation goes here")
                }
                .padding(.top, 40)
                .frame(maxWidth: .infinity)
            }
            .frame(maxHeight: .infinity)
        }
    }
}

struct TransactionsView_Previews: PreviewProvider {
    static var previews: some View {
        TransactionsView()
    }
}
