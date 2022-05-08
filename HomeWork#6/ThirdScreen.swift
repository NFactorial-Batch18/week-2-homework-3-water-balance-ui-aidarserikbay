//
//  ThirdScreen.swift
//  HomeWork#6
//
//  Created by Bibigul Aubakirova on 08.05.2022.
//

import SwiftUI

struct ThirdScreenView: View {
    var body: some View {
        ZStack {
            Color(UIColor(red: 0.988, green: 0.992, blue: 1, alpha: 1))
                .ignoresSafeArea(.all, edges: .all)
            VStack{
                Text("Water Balance")
                    .font(.system(size: 24, weight: .black, design: .default))
                    .italic()
                    .foregroundColor(AppColors.firstText)
                    .textCase(.uppercase)
                    .frame(width: 358, height: 40, alignment: .center)
                    .padding(.top, 108)
                
                Text("Daily intake?")
                    .frame(width: 358, height: 46, alignment: .center)
                    .font(.system(size: 36, weight: .semibold, design: .default))
                    .foregroundColor(AppColors.secondText)
                    .padding(.top, 62)
                
                ZStack{
                    DailyIntakeView()
                        .padding(.top, 32)
                }
                
                SaveButton()
                    .padding(.top, 116)
                    .padding(.bottom, 50)
                
                
            }
            .padding([.leading, .trailing], 16)
            .edgesIgnoringSafeArea(.all)
        }
    }
}

struct DailyIntakeView: View {
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 16)
                .foregroundColor(Color(red: 212/255, green: 225/255, blue: 248/255))
                .frame(width: 358, height: 108)
            HStack(spacing:12){
                ZStack{
                    RoundedRectangle(cornerRadius: 16)
                        .foregroundColor(Color(red: 252, green: 253, blue: 255))
                        .frame(width: 250, height: 60)
                    Text("2400")
                        .foregroundColor(Color(red: 24/255, green: 104/255, blue: 253/255))
                }
                Text("ML")
                    .foregroundColor(Color.black)
                    .font(.system(size: 16, weight: .semibold))
                VStack(alignment: .center, spacing: 14) {
                }
            }
        }
    }
}


struct SaveButton: View {
    var body: some View {
        Button("Save") {
        }
        .foregroundColor(.white)
        .font(.system(size: 24, weight: .semibold))
        .frame(width: 358, height: 60)
        .background(AppColors.button)
        .cornerRadius(16)
    }
}

struct ThirdScreenPreview: PreviewProvider {
    static var previews: some View {
        ThirdScreenView()
    }
}
