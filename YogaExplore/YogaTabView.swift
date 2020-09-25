//
//  YogaTabView.swift
//  YogaExplore
//
//  Created by Keyi Zhu on 9/24/20.
//

import SwiftUI

struct YogaTabView: View {
    var body: some View {
        ScrollView {
            VStack {
                ZStack {
                    TopImageView()
                    RateOverView()
                    Spacer()
                }
                Spacer().frame(height:70)
                Text("Efficitur Resort Yoga center")
                    .font(.title2)
                    .foregroundColor(darkColor)
                    .fontWeight(.semibold)
                    .padding(.leading)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .lineLimit(0)
                AddressView()
                Text("See on map").foregroundColor(brownColor)
                Spacer().frame(height:20)
                WorkHourView()
                DescriptionView()
                ReviewView()
                Spacer()
            }
        }
    }
}

struct YogaTabView_Previews: PreviewProvider {
    static var previews: some View {
        YogaTabView()
    }
}

struct RateOverView: View {
    var body: some View {
        HStack {
            Color.white.frame(width: 260, height: 60, alignment: .center).overlay(
                HStack {
                    RatingStarView()
                    Divider().frame(width: 10.0, height: 50)
                    Image("flag").resizable().frame(width: 25, height: 25, alignment: .center)
                }.cornerRadius(50)
                .background(Color.white)).cornerRadius(50).offset(y: 110).shadow(color: Color.gray.opacity(0.4), radius: 10, x: 10, y: 10)
        }
        
    }
}

struct RatingStarView: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("Rating").font(.system(size: 12))
            HStack {
                Image(systemName: "star.fill").foregroundColor(brownColor).frame(width: 15, height: 15, alignment: .center)
                Image(systemName: "star.fill").foregroundColor(brownColor)
                    .frame(width: 15, height: 15, alignment: .center)
                Image(systemName: "star.fill").foregroundColor(brownColor)
                    .frame(width: 15, height: 15, alignment: .center)
                Image(systemName: "star.fill").foregroundColor(brownColor)
                    .frame(width: 15, height: 15, alignment: .center)
                Image(systemName: "star.fill").foregroundColor(brownColor)
                    .frame(width: 15, height: 15, alignment: .center)
                Text("5.0").font(.system(size: 10)).foregroundColor(brownColor)
            }
            
            
        }.padding()
    }
}


struct TopImageView: View {
    var body: some View {
        Image("Top image").resizable()
            .scaledToFill()
            .cornerRadius(50, corners: [.bottomLeft, .bottomRight]).shadow(color: Color.gray.opacity(0.4), radius: 10, x: 10, y: 10)
    }
}

struct AddressView: View {
    var body: some View {
        HStack {
            Image("location").resizable().frame(width: 20, height: 20, alignment: .center)
            Text("755 Brickyard St., Lake Zurich, IL 60047")
                .multilineTextAlignment(.leading)
                .lineLimit(0)
                .font(.system(size: 12))
                .foregroundColor(lightGray)
        }
        .padding(.leading)
        .frame(maxWidth: .infinity, alignment: .leading)
    }
}

struct WorkHourView: View {
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                VStack(alignment: .leading) {
                    Text("Weekdays").foregroundColor(darkColor)
                    Text("9:00 - 18:00").foregroundColor(pinkGray)
                }
                .padding(.leading)
                Spacer().frame(width: 100)
                VStack(alignment:.leading) {
                    Text("Weekend").foregroundColor(darkColor)
                    Text("8:30 - 17:30").foregroundColor(pinkGray)
                }
                
            }
            Spacer().frame(height:15)
            Text("Open now").font(.title2).fontWeight(.semibold).foregroundColor(lightGray).padding(.leading)
            Divider().padding()
        }
        
    }
}

struct DescriptionView: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("Description").foregroundColor(darkColor).padding(.leading)
            Text("Yoga is a gentle way to improve your posture, balance, and coordination. Yoga is a systematic practice of physical exercise, breath control, relaxation, diet control, and positive thinking and meditation aimed at developing harmony in the body, mind, and environment.").foregroundColor(pinkGray).padding(.leading)
            Divider()
                .padding(.horizontal)
            
        }
    }
}

struct ReviewView: View {
    var body: some View {
        HStack(alignment:.center) {
            Image("pen")
            Text("Reviews").font(.title2).fontWeight(.semibold).foregroundColor(brownColor)
        }
        Spacer().frame(height:30)
    }
}
