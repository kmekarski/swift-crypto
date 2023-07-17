//
//  LaunchView.swift
//  SwiftfulCrypto
//
//  Created by Klaudiusz Mękarski on 17/07/2023.
//

import SwiftUI

struct LaunchView: View {
    
    @State private var loadingText: [String] = "Loading your portfolio...".map{ String($0) }
    @State private var showLoadingText: Bool = false
    
    @State private var counter: Int = 0
    @Binding var showLaunchView: Bool
    
    let loadingTime: Double = 3
    
    private let timer = Timer.publish(every: 0.1, on: .main, in: .common).autoconnect()
    
    var body: some View {
        ZStack{
            Color.launch.background
                .ignoresSafeArea()
            
            Image("logo-transparent")
                .resizable()
                .frame(width: 100, height: 100)
            
            ZStack {
                if showLoadingText {
                    HStack(spacing: 1) {
                        ForEach(loadingText.indices) { index in
                            Text(loadingText[index])
                                .font(.headline)
                                .fontWeight(.heavy)
                                .foregroundColor(Color.launch.accent)
                                .offset(y: counter == index ? 5 : 0)
                        }
                    }
                    .transition(AnyTransition.scale.animation(.easeIn))
                }
            }
            .offset(y: 70)
        }
        .onAppear {
            showLoadingText.toggle()
            DispatchQueue.main.asyncAfter(deadline: .now() + loadingTime) {
                withAnimation(.spring()) {
                    showLaunchView = false
                }
            }
        }
        .onReceive(timer, perform: { _ in
            withAnimation(.spring()) {
                                
                if counter == loadingText.count - 1 {
                    counter = 0
                }
                 else {
                    counter += 1
                }
                
                
            }
        })
    }
}

struct LaunchView_Previews: PreviewProvider {
    static var previews: some View {
        LaunchView(showLaunchView: .constant(true))
    }
}
