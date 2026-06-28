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
        .background(LinearGradient(colors: [.red], startPoint: .bottomLeading, endPoint: .topTrailing))
    }
}



struct CellView: View {
    var body: some View {
        HStack{
            ZStack {
                Circle()
                    .frame( width: 100, height: 100, alignment: .center)
                    .foregroundStyle(.black)
                Image(systemName: "x.circle")
                    .resizable()
                    .frame( width: 85, height: 85, alignment: .center)
                    .foregroundStyle(.white)
            }
            ZStack {
                Circle()
                    .frame( width: 100, height: 100, alignment: .center)
                Image(systemName: "x.circle")
                    .resizable()
                    .frame( width: 85, height: 85, alignment: .center)
                    .foregroundStyle(.white)
            }
            ZStack {
                Circle()
                    .frame( width: 100, height: 100, alignment: .center)
                Image(systemName: "x.circle")
                    .resizable()
                    .frame( width: 85, height: 85, alignment: .center)
                    .foregroundStyle(.white)
            }
        }
    }
}


#Preview {
    HomeView()
}
