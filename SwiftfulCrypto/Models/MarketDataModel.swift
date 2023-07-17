//
//  MarketDataModel.swift
//  SwiftfulCrypto
//
//  Created by Klaudiusz Mękarski on 15/07/2023.
//

import Foundation


/*
 URL:
 https://api.coingecko.com/api/v3/global

 
 JSON Response:
 {
   "data": {
     "active_cryptocurrencies": 9941,
     "upcoming_icos": 0,
     "ongoing_icos": 49,
     "ended_icos": 3376,
     "markets": 773,
     "total_market_cap": {
       "btc": 41624931.15789348,
       "eth": 651880800.4538467,
       "ltc": 13362666940.269535,
       "bch": 5043978412.202289,
       "bnb": 5040965443.80629,
       "eos": 1610141969718.282,
       "xrp": 1742524768563.9424,
       "xlm": 9507940666912.309,
       "link": 180722392645.26627,
       "dot": 230138260816.2039,
       "yfi": 178470808.2843148,
       "usd": 1262792378769.4736,
       "aed": 4638299546839.205,
       "ars": 333019741984406.8,
       "aud": 1846457541821.4822,
       "bdt": 137017209764918.62,
       "bhd": 475210239601.39417,
       "bmd": 1262792378769.4736,
       "brl": 6049659448970.905,
       "cad": 1671116294444.585,
       "chf": 1090124462858.4294,
       "clp": 1027912996318353.6,
       "cny": 9017726656030.693,
       "czk": 26741838507106.445,
       "dkk": 8377869757708.186,
       "eur": 1123830917032.545,
       "gbp": 964626893463.943,
       "hkd": 9868469881607.676,
       "huf": 420926583615227.06,
       "idr": 18945674058678428,
       "ils": 4554292283841.57,
       "inr": 103646852833582.94,
       "jpy": 175142873844651.12,
       "krw": 1602874994295880,
       "kwd": 386073513961.1914,
       "lkr": 403732030062152.2,
       "mmk": 2645261344030752.5,
       "mxn": 21146538069978.68,
       "myr": 5715398306310.623,
       "ngn": 979383656636821,
       "nok": 12692723978611.287,
       "nzd": 1982561304405.2554,
       "php": 68632769574497.914,
       "pkr": 345143955571303.56,
       "pln": 5009773918109.471,
       "rub": 113970431825706.67,
       "sar": 4738826659735.903,
       "sek": 12920260223379.885,
       "sgd": 1668022453116.6008,
       "thb": 43659471793858.38,
       "try": 33047655390110.78,
       "twd": 38950199526955.04,
       "uah": 46285769294773.47,
       "vef": 126443400886.18729,
       "vnd": 29856787326358524,
       "zar": 22862988610821.082,
       "xdr": 938407535303.5492,
       "xag": 50614953683.5909,
       "xau": 645690999.1124085,
       "bits": 41624931157893.48,
       "sats": 4162493115789348
     },
     "total_volume": {
       "btc": 1878531.1173035025,
       "eth": 29419348.797962997,
       "ltc": 603056508.6640123,
       "bch": 227634500.25627932,
       "bnb": 227498525.13920665,
       "eos": 72665628729.05946,
       "xrp": 78640057997.99878,
       "xlm": 429092899553.85675,
       "link": 8155992784.466027,
       "dot": 10386128509.989515,
       "yfi": 8054378.891839105,
       "usd": 56989758594.76753,
       "aed": 209326232806.51047,
       "ars": 15029164747950.807,
       "aud": 83330538996.7863,
       "bdt": 6183580008172.362,
       "bhd": 21446214985.107235,
       "bmd": 56989758594.76753,
       "brl": 273020836499.95233,
       "cad": 75417397036.38571,
       "chf": 49197263953.31199,
       "clp": 46389663496140.87,
       "cny": 406969565101.0947,
       "czk": 1206857870321.7434,
       "dkk": 378092854421.1253,
       "eur": 50718434589.72356,
       "gbp": 43533564754.40551,
       "hkd": 445363565466.3891,
       "huf": 18996396232393.793,
       "idr": 855017348197298.1,
       "ils": 205534989115.99374,
       "inr": 4677577423969.863,
       "jpy": 7904189372545,
       "krw": 72337670481924.36,
       "kwd": 17423478895.17829,
       "lkr": 18220406867388.742,
       "mmk": 119380515713346.16,
       "mxn": 954342233912.9808,
       "myr": 257935647399.91724,
       "ngn": 44199536758197.59,
       "nok": 572822015409.9657,
       "nzd": 89472895178.13031,
       "php": 3097393550594.886,
       "pkr": 15576329917051.645,
       "pln": 226090853102.57593,
       "rub": 5143480041444.044,
       "sar": 213863016518.96396,
       "sek": 583090715062.3647,
       "sgd": 75277772127.82858,
       "thb": 1970349837185.1272,
       "try": 1491439079352.6462,
       "twd": 1757820608976.3079,
       "uah": 2088874515581.6184,
       "vef": 5706384528.094069,
       "vnd": 1347435358932512.8,
       "zar": 1031805563282.9185,
       "xdr": 42350286396.70221,
       "xag": 2284250396.350994,
       "xau": 29140003.3646766,
       "bits": 1878531117303.5024,
       "sats": 187853111730350.25
     },
     "market_cap_percentage": {
       "btc": 46.678590112972316,
       "eth": 18.435591327703165,
       "usdt": 6.621983417356272,
       "bnb": 3.089915824210215,
       "xrp": 3.020384150321931,
       "usdc": 2.160448292689858,
       "steth": 1.184669284205259,
       "ada": 0.9248404069543966,
       "sol": 0.908230393695834,
       "doge": 0.8050584670926255
     },
     "market_cap_change_percentage_24h_usd": -2.4329701812239204,
     "updated_at": 1689429976
   }
 }
*/

struct GlobalData: Codable {
    let data: MarketDataModel?
}

struct MarketDataModel: Codable {
    
    let totalMarketCap, totalVolume, marketCapPercentage: [String: Double]
    let marketCapChangePercentage24HUsd: Double

    enum CodingKeys: String, CodingKey {
        case totalMarketCap = "total_market_cap"
        case totalVolume = "total_volume"
        case marketCapPercentage = "market_cap_percentage"
        case marketCapChangePercentage24HUsd = "market_cap_change_percentage_24h_usd"
    }
    
    var marketCap: String {
        if let item = totalMarketCap.first(where: {(key, value) -> Bool in
            return key == "usd"
        }) {
            return "$\(item.value.formattedWithAbbreviations())"
        }
        return ""
    }
    
    var volume: String {
        if let item = totalVolume.first(where: {(key, value) -> Bool in
            return key == "usd"
        }) {
            return "$\(item.value.formattedWithAbbreviations())"
        }
        return ""
    }
    
    var btcDominance: String {
        if let item = marketCapPercentage.first(where: {(key, value) -> Bool in
            return key == "btc"
        }) {
            return "\(item.value.asPercentString())"
        }
        return ""
    }
}
