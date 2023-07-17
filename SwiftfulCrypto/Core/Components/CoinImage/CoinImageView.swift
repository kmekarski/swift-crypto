//
//  CoinImageView.swift
//  SwiftfulCrypto
//
//  Created by Klaudiusz Mękarski on 14/07/2023.
//

import SwiftUI

struct CoinImageView: View {
//    @StateObject var vm: CoinImageViewModel
    var vm: CoinImageViewModel
    
    init(coin: CoinModel) {
        vm = CoinImageViewModel(coin: coin)
    }
    var body: some View {
        ZStack {
            if let image = vm.image {
                Image(uiImage: image)
                    .resizable()
                    .scaledToFit()
            } else if vm.isLoading {
                ProgressView()
            } else {
                Image(systemName: "questionmark")
                    .foregroundColor(Color.theme.secondaryText)
            }
        }
    }
}

struct CoinImageView_Previews: PreviewProvider {
    static var previews: some View {
        CoinImageView(coin: dev.coin)
            .padding()
            .previewLayout(.sizeThatFits)
    }
}
