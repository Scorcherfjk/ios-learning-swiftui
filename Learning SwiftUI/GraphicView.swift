//
//  GraphicView.swift
//  Learning SwiftUI
//
//  Created by Francisco De Freitas on 9/01/21.
//

import SwiftUI

struct GraphicView: View {
    var body: some View {
        ZStack {
            Path { path in
                path.move(to: CGPoint(x: 30, y: 30))
                path.addLine(to: CGPoint(x: 230, y: 30))
                path.addLine(to: CGPoint(x: 230, y: 150))
                path.addLine(to: CGPoint(x: 30, y: 150))
                path.closeSubpath()
            }
            // .fill(Color.blue)
            .stroke(/*@START_MENU_TOKEN@*/Color.blue/*@END_MENU_TOKEN@*/, lineWidth: 4)
            
            
            Path { path in
                path.move(to: CGPoint(x: 200, y: 400))
                path.addArc(center: CGPoint(x: 200, y: 400), radius: 150, startAngle: Angle(degrees: 360), endAngle: Angle(degrees: 300), clockwise: true)

            }
            .fill(Color.blue)
            
            Path { path in
                path.move(to: CGPoint(x: 200, y: 400))
                path.addArc(center: CGPoint(x: 200, y: 400), radius: 150, startAngle: Angle(degrees: 300), endAngle: Angle(degrees: 220), clockwise: true)

            }
            .fill(Color.red)
            
            Path { path in
                path.move(to: CGPoint(x: 200, y: 400))
                path.addArc(center: CGPoint(x: 200, y: 400), radius: 150, startAngle: Angle(degrees: 220), endAngle: Angle(degrees: 150), clockwise: true)

            }
            .fill(Color.yellow)
            
            Path { path in
                path.move(to: CGPoint(x: 200, y: 400))
                path.addArc(center: CGPoint(x: 200, y: 400), radius: 150, startAngle: Angle(degrees: 150), endAngle: Angle(degrees: 80), clockwise: true)

            }
            .fill(Color.pink)
            
            Path { path in
                path.move(to: CGPoint(x: 200, y: 400))
                path.addArc(center: CGPoint(x: 200, y: 400), radius: 150, startAngle: Angle(degrees: 80), endAngle: Angle(degrees: 30), clockwise: true)

            }
            .fill(Color.purple)
            
            Path { path in
                path.move(to: CGPoint(x: 200, y: 400))
                path.addArc(center: CGPoint(x: 200, y: 400), radius: 150, startAngle: Angle(degrees: 30), endAngle: Angle(degrees: 0), clockwise: true)

            }
            .fill(Color.green)
            .offset(x: 15, y: 4)
            
        }
    }
}

struct GraphicView_Previews: PreviewProvider {
    static var previews: some View {
        GraphicView()
    }
}
