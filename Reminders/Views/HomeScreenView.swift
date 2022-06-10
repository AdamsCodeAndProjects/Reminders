//
//  HomeScreenView.swift
//  Reminders
//
//  Created by adam janusewski on 6/10/22.
//

import SwiftUI

struct HomeScreenView: View {
    var body: some View {
        NavigationView {
            SideBarView()
            Text("My List Items")
        }
    }
}

struct HomeScreenView_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreenView()
            .previewInterfaceOrientation(.landscapeLeft)
    }
}
