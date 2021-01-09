//
//  CounterView.swift
//  Learning SwiftUI
//
//  Created by Francisco De Freitas on 9/01/21.
//

import SwiftUI

struct CounterView: View {
    
    @State private var counter = 0
    
    var body: some View {
        VStack {
            Text("\(counter)")
                .font(.system(size: 60, weight: .bold, design: .rounded))
            HStack{
                CounterButton(globalCounter: $counter, bgColor: .blue)
                CounterButton(globalCounter: $counter, bgColor: .red)
                CounterButton(globalCounter: $counter, bgColor: .green)
            }
        }
    }
}

struct CounterButton: View {
    
    @State private var counter = 0
    @Binding var globalCounter: Int
    
    var bgColor: Color
    
    var body: some View {
        Button(action: {
            counter += 1
            globalCounter += 1
        }) {
            Text("\(counter)")
                .font(.system(size: 50))
                .padding(50)
                .foregroundColor(.white)
                .background(Circle().foregroundColor(bgColor))
        }
    }
}


struct CounterView_Previews: PreviewProvider {
    static var previews: some View {
        CounterView()
    }
}
