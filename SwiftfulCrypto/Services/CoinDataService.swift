//
//  CoinDataService.swift
//  SwiftfulCrypto
//
//  Created by Klaudiusz Mękarski on 14/07/2023.
//

import Foundation
import Combine

class CoinDataService {
    
    var coinSubscription: AnyCancellable?
    
    @Published var allCoins: [CoinModel] = []
    
    init() {
        getCoins()
    }
    
    func getCoins() {
        
        guard let url = URL(string: "https://api.coingecko.com/api/v3/coins/markets?vs_currency=usd&order=market_cap_desc&per_page=100&page=1&sparkline=true&price_change_percentage=24h&locale=en") else { return }
        
        
        coinSubscription = NetworkingManager.download(url: url)
            .decode(type: [CoinModel].self, decoder: JSONDecoder())
            .sink(receiveCompletion: NetworkingManager.handleCompletion, receiveValue: { [weak self] returnedCoins in
                self?.allCoins = returnedCoins
                self?.coinSubscription?.cancel()})
    }
}
                  
