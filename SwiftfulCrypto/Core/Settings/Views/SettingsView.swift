//
//  SettingsView.swift
//  SwiftfulCrypto
//
//  Created by Klaudiusz Mękarski on 17/07/2023.
//

import SwiftUI

struct SettingsView: View {
    @Binding var showSheet: Bool
    
    let defaultURL = URL(string: "https://www.google.com")!
    let coinGeckoURL = URL(string: "https://www.coingecko.com")!
    let githubURL = URL(string: "https://github.com/kmekarski")!
    
    var body: some View {
        NavigationView {
            List{
                developerSection
                coinGeckoSection
                appSection
            }
            .font(.headline)
            .accentColor(.blue)
            .navigationTitle("Settings")
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    XMarkButtonView(showSheet: $showSheet)
                }
            }
            .listStyle(GroupedListStyle())

        }
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView(showSheet: .constant(false))
    }
}

extension SettingsView {
    
    private var coinGeckoSection: some View {
        Section(header: Text("Coin Gecko")) {
            VStack(alignment: .leading) {
                Image("coingecko")
                    .resizable()
                    .frame(height: 100)
                    .scaledToFit()
                    .clipShape(RoundedRectangle(cornerRadius: 20))
                Text("The cryptocurrency data that is used in this app comes from free API from CoinGecko. Coin prices might be slightly delayed.")
                    .font(.callout)
                    .fontWeight(.medium)
                    .foregroundColor(Color.theme.accent)
            }
            .padding(.vertical)
            Link("Visit CoinGecko 🦎", destination: coinGeckoURL)
        }
    }
    
    private var developerSection: some View {
        Section(header: Text("Developer")) {
            VStack(alignment: .leading) {
                Image("logo")
                    .resizable()
                    .frame(width: 100, height: 100)
                    .clipShape(RoundedRectangle(cornerRadius: 20))
                Text("This app was developed by Klaudiusz Mękarski. It uses SwiftUI and is written 100% in Swift. The project benefits from multi-threading, publishers/subscribers and data persistance.")
                    .font(.callout)
                    .fontWeight(.medium)
                    .foregroundColor(Color.theme.accent)
            }
            .padding(.vertical)
            Link("Visit my GitHub 🥳", destination: githubURL)
        }
    }
    
    private var appSection: some View {
        Section(header: Text("Application")) {
            Link("Terms of service", destination: defaultURL)
            Link("Privacy policy", destination: defaultURL)
            Link("Company website", destination: defaultURL)
            Link("Learn More", destination: defaultURL)
        }
    }
}
