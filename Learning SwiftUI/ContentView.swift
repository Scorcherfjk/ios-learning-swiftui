//
//  ContentView.swift
//  Learning SwiftUI
//
//  Created by Francisco De Freitas on 4/01/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut cursus rhoncus bibendum. Curabitur consectetur non turpis nec hendrerit. Donec vel efficitur tortor, ac pharetra ante. In nec ipsum id libero condimentum ullamcorper ac vel dui. Aenean semper nisl at ipsum rhoncus, elementum condimentum lacus tempus. Suspendisse et dui sit amet magna sagittis aliquet a sed nibh. Nam eu aliquet purus. Aenean sed ante massa. Praesent ullamcorper turpis pretium, tempor mi sed, eleifend massa. Integer eget dolor iaculis, porttitor arcu vitae, tempor lacus.")
            .fontWeight(.light)
            .font(.custom("Helvetica Neue", size: 20))
            .foregroundColor(.purple)
            .multilineTextAlignment(.leading)
            .lineLimit(nil) // Int? / n = n / n = infinity
            .truncationMode(.head)
            .lineSpacing(5.0) // CGFloat / default 1.0
            .padding()
//            .rotationEffect(.degrees(45), anchor: UnitPoint(x: 0, y: 0))
            .rotation3DEffect(.degrees(45), axis: (x: 1.0, y: 0.0, z: 0.0))
            .shadow(color: /*@START_MENU_TOKEN@*/.black/*@END_MENU_TOKEN@*/, radius: 1, x: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/, y: 2)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
