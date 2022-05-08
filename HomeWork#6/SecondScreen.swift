//
//  GoalScreen.swift
//  HomeWork#6
//
//  Created by Bibigul Aubakirova on 08.05.2022.
//

import SwiftUI


struct SecondScreen: View {
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
                
                Text("What is your Goal?")
                    .frame(width: 358, height: 46, alignment: .center)
                    .font(.system(size: 36, weight: .semibold, design: .default))
                    .foregroundColor(AppColors.secondText)
                    .padding(.top, 62)
                
                ZStack{
                    TimesView()
                        .padding(.top, 32)
                }
                
                secondAppButton()
                    .padding(.top, 116)
                    .padding(.bottom, 50)
                
                
            }
            .padding([.leading, .trailing], 16)
            .edgesIgnoringSafeArea(.all)
            
            
        }
        
    }
}


struct SecondScreen_Previews: PreviewProvider {
    static var previews: some View {
        SecondScreen()
    }
}


// decomposition - дробление структуры на несколько частей

struct TimesView: View {
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 16)
                .foregroundColor(Color(red: 212/255, green: 225/255, blue: 248/255))
            VStack(alignment: .center, spacing: 14) {
                HStack(spacing: 14) {
                    ZStack {
                        RoundedRectangle(cornerRadius: 16)
                            .foregroundColor(Color(red: 252/255, green: 253/255, blue: 255/255))
                        Text("15 minutes")
                            .frame(width: 102, height: 28)
                            .font(.system(size: 16, weight: .semibold))
                    }
                    ZStack {
                        RoundedRectangle(cornerRadius: 16)
                            .foregroundColor(Color(red: 252/255, green: 253/255, blue: 255/255))
                        Text("30 minutes")
                            .frame(width: 102, height: 28)
                            .font(.system(size:16, weight: .semibold))
                    }
                }
                HStack(spacing: 14) {
                    ZStack {
                        RoundedRectangle(cornerRadius: 16)
                            .foregroundColor(Color(red: 252/255, green: 253/255, blue: 255/255))
                        Text("45 minutes")
                            .frame(width: 102, height: 28)
                            .font(.system(size: 16, weight: .semibold))
                    }
                    ZStack {
                        RoundedRectangle(cornerRadius: 16)
                            .foregroundColor(Color(red: 252/255, green: 253/255, blue: 255/255))
                        Text("1 hour")
                            .frame(width: 102, height: 28)
                            .font(.system(size:16, weight: .semibold))
                    }
                }
                HStack(spacing: 14) {
                    ZStack {
                        RoundedRectangle(cornerRadius: 16)
                            .foregroundColor(Color(red: 252/255, green: 253/255, blue: 255/255))
                        Text("1,5 hours")
                            .frame(width: 102, height: 28)
                            .font(.system(size: 16, weight: .semibold))
                    }
                    ZStack {
                        RoundedRectangle(cornerRadius: 16)
                            .foregroundColor(Color(red: 252/255, green: 253/255, blue: 255/255))
                        Text("2 hours")
                            .frame(width: 102, height: 28)
                            .font(.system(size:16, weight: .semibold))
                    }
                }
                HStack(spacing: 14) {
                    ZStack {
                        RoundedRectangle(cornerRadius: 16)
                            .foregroundColor(Color(red: 252/255, green: 253/255, blue: 255/255))
                        Text("3 hours")
                            .frame(width: 102, height: 28)
                            .font(.system(size: 16, weight: .semibold))
                    }
                    ZStack {
                        RoundedRectangle(cornerRadius: 16)
                            .foregroundColor(Color(red: 252/255, green: 253/255, blue: 255/255))
                        Text("4 hours")
                            .frame(width: 102, height: 28)
                            .font(.system(size:16, weight: .semibold))
                    }
                }
            }
            .padding(.horizontal, 19)
            .padding(.vertical, 24)
        }
        .frame(width: 330)
    }
}


//struct GoalView: View {
//    var title: String
//    var isSelected: Bool
//    var body: some View {
//        ZStack{
//            RoundedRectangle(cornerRadius: 16)
//                .foregroundColor(Color(red: 252/255, green: 253/255, blue: 255/255))
//            HStack{
//                Text(title)
//                    .foregroundColor(AppColors.secondText)
//                    .font(.system(size: 16))
//                    .fontWeight(.semibold)
//                Spacer()
//                Image(self.isSelected ? "Picker" : "Picker-2")
//
//            }
//            .padding(.horizontal, 24)
//        }
//    }
//}


struct secondAppButton: View {
    var body: some View {
        Button("Next") {
        }
        .foregroundColor(.white)
        .font(.system(size: 24, weight: .semibold))
        .frame(width: 358, height: 60)
        .background(AppColors.button)
        .cornerRadius(16)
    }
}
