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
                CellView()
                CellView()
                CellView()
            }
            .padding()
        }
    }
}


struct CellView: View {
    var body: some View {
        HStack {
            ZStack {
                Circle()
                Image(systemName: "x.circle")
                    .resizable()
                    .frame(width: 100, height: 100, alignment: .center)
                    .foregroundStyle(.white)
            }
            ZStack {
                Circle()
                Image(systemName: "x.circle")
                    .resizable()
                    .frame(width: 100, height: 100, alignment: .center)
                    .foregroundStyle(.white)
            }
            ZStack {
                Circle()
                Image(systemName: "x.circle")
                    .resizable()
                    .frame(width: 100, height: 100, alignment: .center)
                    .foregroundStyle(.white)
            }
        }
        .padding()
    }
    
}

#Preview {
    HomeView()
}
