//
//  MarketDataService.swift
//  SwiftfulCrypto
//
//  Created by Klaudiusz Mękarski on 15/07/2023.
//

import Foundation
import Combine

class MarketDataService {
    
    var marketDataSubscription: AnyCancellable?
    
    @Published var marketData: MarketDataModel? = nil
    
    init() {
        getData()
    }
    
    func getData() {
        
        guard let url = URL(string: "https://api.coingecko.com/api/v3/global") else { return }
        
        marketDataSubscription = NetworkingManager.download(url: url)
            .decode(type: GlobalData.self, decoder: JSONDecoder())
            .sink(receiveCompletion: NetworkingManager.handleCompletion, receiveValue: { [weak self] returnedGlobalData in
                self?.marketData = returnedGlobalData.data
                self?.marketDataSubscription?.cancel()})
    }
}
       
