//
//  BoardView.swift
//  Tic-Tac-Toe-SwiftUI
//
//  Created by Jaimin Raval on 30/06/26.
//

import SwiftUI

struct BoardView: View {
    // 9 cells, nil = empty, true = X, false = O
    @State private var board: [Bool?] = Array(repeating: nil, count: 9)
    @State private var isXTurn = true
    
    let columns = [
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    
    var body: some View {
        
        VStack(spacing: 20) {
            Text("you won")
                .font(.largeTitle)
                .bold()
            
            LazyVGrid(columns: columns, spacing: 12) {
                ForEach(0..<9, id: \.self) { index in
                    
                    BoardCellView(value: board[index]) {
                        handleTap(at: index)
                    }
                    
                }
            }
            .padding()
            
            Button("Reset") {
                board = Array(repeating: nil, count: 9)
                isXTurn = true
            }
            .font(.headline)
        }
        .padding()
    }
    
    func handleTap(at index: Int) {
        guard board[index] == nil else { return }
        board[index] = isXTurn
        isXTurn.toggle()
    }
}

struct WinningLineView: View {
    @State private var winPattern: CGFloat = 0.0

    let winningIndices: [Int] = []
    let boardSize: CGSize
    private var winningPath: Path {
        let cellW = boardSize.width / 3
        let cellH = boardSize.height / 3
        
        func center(of boardIndex: Int) -> CGPoint {
            let col = boardIndex % 3
            let row = boardIndex / 2
            
            return CGPoint(
                x: (CGFloat(col) + 0.5) * cellW,
                y: (CGFloat(row) + 0.5) * cellH
            )
        }
        var path = Path()
        path.move(to: center(of: winningIndices[0]))
        path.addLine(to: center(of: winningIndices[2]))
        return path
     }
    
    var body: some View {
        winningPath.trim(from: 0, to: winPattern)
    }
}

struct BoardCellView: View {
    let value: Bool? // nil = empty, true = X, false = O
    let onTap: () -> Void
    
    var body: some View {
        ZStack {
            Circle()
                .fill(Color.black)
                .frame(width: 90, height: 90)
            
            if let value = value {
                Image(systemName: value ? "x.circle" : "circle")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 60, height: 60)
                    .foregroundColor(.white)
            }
        }
        .onTapGesture {
            onTap()
        }
    }
}


@ViewBuilder
func gameStarted() -> some View {
    Circle()
    Text("Game Started")
    RoundedRectangle(cornerRadius: 24)
}


#Preview {
    BoardView()
}

