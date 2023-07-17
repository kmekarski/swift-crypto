//
//  XMarkButtonView.swift
//  SwiftfulCrypto
//
//  Created by Klaudiusz Mękarski on 15/07/2023.
//

import SwiftUI

struct XMarkButtonView: View {
    @Binding var showSheet: Bool
    
    var body: some View {
        Button(action: {
            showSheet.toggle()
            
        }, label: {
            Image(systemName: "xmark")
                .font(.headline)
        })
    }
}

struct XMarkButtonView_Previews: PreviewProvider {
    static var previews: some View {
        XMarkButtonView(showSheet: .constant(false))
    }
}
