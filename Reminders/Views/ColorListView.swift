//
//  ColorListView.swift
//  Reminders
//
//  Created by adam janusewski on 6/10/22.
//

import SwiftUI

struct ColorListView: View {
    
    let colors = [Color.red, Color.indigo, Color.blue, Color.orange, Color.purple, Color.green, Color.yellow]
    @Binding var selectedColor: Color  // Now whenever this is changed, it will be reflected in the parent
    
    var body: some View {
        HStack {
            ForEach(colors, id: \.self) { color in
                Image(systemName: selectedColor == color ? Constants.Icons.recordCircleFill : Constants.Icons.circleFill)
                    .foregroundColor(color)
                    .font(.system(size: 16))
                    .clipShape(Circle())
                    .onTapGesture {
                        selectedColor = color
                    }
            }
        }
    }
}

struct ColorListView_Previews: PreviewProvider {
    static var previews: some View {
        ColorListView(selectedColor: .constant(.blue))
            .previewLayout(.sizeThatFits)
    }
}
