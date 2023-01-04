//
//  ToolBar.swift
//  budgetplus
//
//  Created by Frail Bongat on 1/4/23.
//

import SwiftUI

struct Toolbar: View {
    @Environment(\.colorScheme) var colorScheme
    var title: String
    var hasAction: Bool
    
    var body: some View {
        HStack() {
            Text(title).font(.navTitle)
                .frame(maxWidth: .infinity, alignment: .leading)
            if (hasAction) {
                Button {
                    // Add budget action
                } label: {
                    Image(colorScheme == .light ? "ic-add" : "ic-add-dark")
                }
            }
        }
        .frame(height: 42)
        .padding(.horizontal)
    }
}

struct Toolbar_Previews: PreviewProvider {
    static var previews: some View {
        Toolbar(title: "Title", hasAction: true)
    }
}
