//
//  SearchBarView.swift
//  SwiftfulCrypto
//
//  Created by Klaudiusz Mękarski on 15/07/2023.
//

import SwiftUI

struct SearchBarView: View {
    @Binding var searchText: String
    var body: some View {
        HStack {
            Image(systemName: "magnifyingglass")
                .foregroundColor(
                    searchText.isEmpty ? Color.theme.secondaryText : Color.theme.accent
                )
            TextField("Search by name or symbol...", text: $searchText)
                .foregroundColor(Color.theme.accent)
                .overlay(alignment: .trailing) {
                    Image(systemName: "xmark.circle.fill")
                        .padding()
                        .offset(x: 10)
                        .opacity(searchText.isEmpty ? 0.0 : 1.0)
                        .foregroundColor(Color.theme.accent)
                        .disableAutocorrection(true)
                        .onTapGesture {
                            searchText = ""
                            UIApplication.shared.endEditing()
                        }
                }
        }
        .font(.headline)
        .padding()
        .background(
            RoundedRectangle(cornerRadius: 25)
                .fill(Color.theme.background)
                .shadow(color: Color.theme.accent.opacity(0.15),
                        radius: 10)
        )
        .padding()
    }
}

struct SearchBarView_Previews: PreviewProvider {
    static var previews: some View {
        Group() {
            SearchBarView(searchText: .constant(""))
                .previewLayout(.sizeThatFits)
            SearchBarView(searchText: .constant(""))
                .preferredColorScheme(.dark)
                .previewLayout(.sizeThatFits)
        }
    }
}
