//
//  ContentView.swift
//  Tic-Tac-Toe-SwiftUI
//
//  Created by Jaimin Raval on 19/06/26.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        ZStack(alignment: .center) {
            VStack {
                HStack {
                    Image(systemName: "x.circle")
                    Image(systemName: "x.circle")
                    Image(systemName: "x.circle")
                }
                HStack {
                    Image(systemName: "x.circle")
                    Image(systemName: "x.circle")
                    Image(systemName: "x.circle")
                }
                HStack {
                    Image(systemName: "x.circle")
                    Image(systemName: "x.circle")
                    Image(systemName: "x.circle")
                }
            }
            
        }
    }
}

#Preview {
    HomeView()
}
