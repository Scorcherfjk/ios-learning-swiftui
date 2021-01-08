//
//  CardView.swift
//  Learning SwiftUI
//
//  Created by Francisco De Freitas on 7/01/21.
//

import SwiftUI

struct CardView: View {
    
    var image: String = "swiftui"
    var title: String = "El mejor curso porque soy el puto amo"
    var teacher: String = "FJavier De Freitas"
    
    var votes: Double = 5.0
    var countVotes: String = "156"
    
    var newPrice: String = "9.99$"
    var lastPrice: String = "199.99$"
    
    var body: some View {
        VStack {
            Image(image)
                .resizable()
                .aspectRatio(contentMode: .fit)
            VStack(alignment: .leading, spacing: 4) {
                Text(title)
                    .font(.title)
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    .lineLimit(2)
                Text(teacher)
                    .font(.headline)
                    .fontWeight(.light)
                    .foregroundColor(.secondary)
                HStack {
                    Text(String(votes))
                        .font(.headline)
                        .fontWeight(.bold)
                        .foregroundColor(.red)
                    StarsView(numberOfStars: Int(votes))
                    Text("(\(countVotes))")
                        .font(.caption)
                        .foregroundColor(.secondary)
                }
                HStack {
                    Text(newPrice)
                        .font(.headline)
                    Text(lastPrice)
                        .font(.subheadline)
                        .foregroundColor(.secondary)
                        .strikethrough()
                }
            }.padding()
        }
        .cornerRadius(10)
        .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.gray))
        .padding()
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView()
    }
}


struct StarsView: View {
    
    var numberOfStars: Int?
    
    var body: some View {
        
        if numberOfStars != nil {
            switch numberOfStars! {
            case 1:
                HStack(spacing: 1){
                    Image(systemName: "star.fill")
                        .foregroundColor(.yellow)
                    Image(systemName: "star")
                        .foregroundColor(.yellow)
                    Image(systemName: "star")
                        .foregroundColor(.yellow)
                    Image(systemName: "star")
                        .foregroundColor(.yellow)
                    Image(systemName: "star")
                        .foregroundColor(.yellow)
                }
            case 2:
                HStack(spacing: 1){
                    Image(systemName: "star.fill")
                        .foregroundColor(.yellow)
                    Image(systemName: "star.fill")
                        .foregroundColor(.yellow)
                    Image(systemName: "star")
                        .foregroundColor(.yellow)
                    Image(systemName: "star")
                        .foregroundColor(.yellow)
                    Image(systemName: "star")
                        .foregroundColor(.yellow)
                }
            case 3:
                HStack(spacing: 1){
                    Image(systemName: "star.fill")
                        .foregroundColor(.yellow)
                    Image(systemName: "star.fill")
                        .foregroundColor(.yellow)
                    Image(systemName: "star.fill")
                        .foregroundColor(.yellow)
                    Image(systemName: "star")
                        .foregroundColor(.yellow)
                    Image(systemName: "star")
                        .foregroundColor(.yellow)
                }
            case 4:
                HStack(spacing: 1){
                    Image(systemName: "star.fill")
                        .foregroundColor(.yellow)
                    Image(systemName: "star.fill")
                        .foregroundColor(.yellow)
                    Image(systemName: "star.fill")
                        .foregroundColor(.yellow)
                    Image(systemName: "star.fill")
                        .foregroundColor(.yellow)
                    Image(systemName: "star")
                        .foregroundColor(.yellow)
                }
            case 5:
                HStack(spacing: 1){
                    Image(systemName: "star.fill")
                        .foregroundColor(.yellow)
                    Image(systemName: "star.fill")
                        .foregroundColor(.yellow)
                    Image(systemName: "star.fill")
                        .foregroundColor(.yellow)
                    Image(systemName: "star.fill")
                        .foregroundColor(.yellow)
                    Image(systemName: "star.fill")
                        .foregroundColor(.yellow)
                }
            default:
                HStack(spacing: 1){
                    Image(systemName: "star")
                        .foregroundColor(.yellow)
                    Image(systemName: "star")
                        .foregroundColor(.yellow)
                    Image(systemName: "star")
                        .foregroundColor(.yellow)
                    Image(systemName: "star")
                        .foregroundColor(.yellow)
                    Image(systemName: "star")
                        .foregroundColor(.yellow)
                }
            }
        } else {
            HStack(spacing: 1){
                Image(systemName: "star")
                    .foregroundColor(.yellow)
                Image(systemName: "star")
                    .foregroundColor(.yellow)
                Image(systemName: "star")
                    .foregroundColor(.yellow)
                Image(systemName: "star")
                    .foregroundColor(.yellow)
                Image(systemName: "star")
                    .foregroundColor(.yellow)
            }
        }
    }
}
