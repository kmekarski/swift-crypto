//
//  ChartView.swift
//  SwiftfulCrypto
//
//  Created by Klaudiusz Mękarski on 17/07/2023.
//

import SwiftUI

struct ChartView: View {
    
    private let data: [Double]
    private let maxY: Double
    private let minY: Double
    private let startingDate: Date
    private let endingDate: Date
    
    private let lineColor: Color
    
    @State private var percentage: CGFloat = 0
    
    init(coin: CoinModel) {
        self.data = coin.sparklineIn7D?.price ?? []
        self.maxY = data.max() ?? 0
        self.minY = data.min() ?? 0
        
        self.endingDate = Date(coinGeckoString: coin.lastUpdated ?? "")
        self.startingDate = endingDate.addingTimeInterval(-7*24*60*60)
        
        let priceChange = (data.last ?? 0) - (data.first ?? 0)
        self.lineColor = priceChange > 0 ? Color.theme.green : Color.theme.red
    }
    
    var body: some View {
        VStack {
            chartView
                .frame(height: 300)
                .background(
                    chartBackground
                )
                .overlay(alignment: .leading){
                    chartYAxis
                        .padding(.horizontal, 4)
            }
            chartDateLabels                        .padding(.horizontal, 4)

        }
        .font(.caption)
        .foregroundColor(Color.theme.secondaryText)
        .onAppear {
            withAnimation(.linear(duration: 2.0)) {
                percentage = 1
            }
        }
    }
}

struct ChartView_Previews: PreviewProvider {
    static var previews: some View {
        ChartView(coin: dev.coin)
    }
}

extension ChartView {
    private var chartView: some View {
        GeometryReader { geometry in
            Path { path in
                for index in data.indices {
                    let xPos = geometry.size.width / CGFloat(data.count) * CGFloat(index+1)
                    
                    let yAxis = maxY - minY
                    
                    let yPos =  (1 - CGFloat((data[index] - minY) / yAxis)) * geometry.size.height
                    
                    if index == 0 {
                        path.move(to: CGPoint(x: xPos, y: yPos))
                    }
                    path.addLine(to: CGPoint(x: xPos, y: yPos))
                }
            }
            .trim(from: 0, to: percentage)
            .stroke(lineColor, style: StrokeStyle(lineWidth: 2, lineCap: .round, lineJoin: .round))
            .shadow(color: lineColor, radius: 10, y: 10)
        }
    }
    
    private var chartBackground: some View {
        VStack {
            Divider()
            Spacer()
            Divider()
            Spacer()
            Divider()
        }
    }
    
    private var chartYAxis: some View {
        VStack {
            Text(maxY.formattedWithAbbreviations())
            Spacer()
            let avgPrice = (maxY + minY) / 2
            Text(avgPrice.formattedWithAbbreviations())
            Spacer()

            Text(minY.formattedWithAbbreviations())
        }
    }
    
    private var chartDateLabels: some View {
        HStack {
            Text(startingDate.asShortDateString())
            Spacer()
            Text(endingDate.asShortDateString())
        }
    }
}
