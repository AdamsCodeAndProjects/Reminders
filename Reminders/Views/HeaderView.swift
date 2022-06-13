//
//  HeaderView.swift
//  Reminders
//
//  Created by adam janusewski on 6/13/22.
//

import SwiftUI

struct HeaderView: View {
    
    let name: String
    let count: Int
    let color: Color
    
    var body: some View {
        HStack {
            Text(name)
                .font(.system(size: 28))
                .fontWeight(.bold)
                .foregroundColor(color)
                .padding()
            
            Spacer()
            
            Text("\(count)")
                .font(.system(size: 32))
                .foregroundColor(color)
                .padding()
        }
    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView(name: "Groceries", count: 6, color: Color.green)
    }
}
