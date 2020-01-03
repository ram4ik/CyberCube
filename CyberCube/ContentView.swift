//
//  ContentView.swift
//  CyberCube
//
//  Created by ramil on 03.01.2020.
//  Copyright © 2020 com.ri. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [Color.green, Color.blue]), startPoint: .bottomLeading, endPoint: .topTrailing)
            VStack {
                Logo()
                    .offset(y: -100)
                Text("CyberCube")
                    .font(.system(size: 60))
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                    .offset(y: -100)
                Spacer()
                Spacer()
                Spacer()
                Text("Delivering data-driven cyber risk analytics for the insurance industry")
                    .font(.headline)
                    .foregroundColor(.white)
                    .padding(.horizontal)
                    .multilineTextAlignment(.center)
                Spacer()
                Spacer()
            }.padding(.vertical)
        }.edgesIgnoringSafeArea(.all)
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct Logo: View {
    var xC = UIScreen.main.bounds.size.width / 2
    var yC = UIScreen.main.bounds.size.height / 2
    var body: some View {
        Path { path in
            path.move(to: CGPoint(x: xC, y: yC))
            path.addLine(to: CGPoint(x: xC + 120, y: yC - 70))
            path.addLine(to: CGPoint(x: xC, y: yC - 140))
            path.addLine(to: CGPoint(x: xC - 120, y: yC - 70))
            path.addLine(to: CGPoint(x: xC, y: yC))
            path.addLine(to: CGPoint(x: xC, y: yC + 140))
            path.addLine(to: CGPoint(x: xC + 120, y: yC + 70))
            path.addLine(to: CGPoint(x: xC, y: yC))
            path.addLine(to: CGPoint(x: xC, y: yC + 140))
            path.addLine(to: CGPoint(x: xC - 120, y: yC + 70))
            path.addLine(to: CGPoint(x: xC - 120, y: yC - 70))
        }
        .stroke(Color.white, style: StrokeStyle(lineWidth: 15, lineCap: .round, lineJoin: .round))
    }
}
