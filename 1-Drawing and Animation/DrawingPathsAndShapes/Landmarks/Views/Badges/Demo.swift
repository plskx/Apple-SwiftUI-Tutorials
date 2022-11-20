//  Date: 11/20/22
//
//  Author: Zai Santillan
//  Github: @plskz


import SwiftUI

struct Demo: View {
    var body: some View {
        Path { path in
            path.move(to: CGPoint(x: 20, y: 0))
            path.addLine(to: CGPoint(x: 20, y: 200))
            path.addLine(to: CGPoint(x: 220, y: 200))
            path.addLine(to: CGPoint(x: 220, y: 0))
        }
        .fill(
            .linearGradient(
                Gradient(colors: [.green, .blue]),
                startPoint: .init(x: 0.5, y: 0),
                endPoint: .init(x: 0.5, y: 0.5)
            )
        )
    }
}

struct Demo_Previews: PreviewProvider {
    static var previews: some View {
        Demo()
    }
}
