//
//  GoalScreen.swift
//  HomeWork#6
//
//  Created by Bibigul Aubakirova on 08.05.2022.
//

import SwiftUI


struct GoalScreen: View {
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
                    GoalsView()
                        .padding(.top, 32)
                }
                
                AppButton()
                    .padding(.top, 116)
                    .padding(.bottom, 50)
                
                
            }
            .padding([.leading, .trailing], 16)
            .edgesIgnoringSafeArea(.all)
            
            
        }
        
    }
}


struct GoalScreen_Previews: PreviewProvider {
    static var previews: some View {
        GoalScreen()
    }
}


// decomposition - дробление структуры на несколько частей

struct GoalsView: View {
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 16)
                .foregroundColor(Color(red: 212/255, green: 225/255, blue: 248/255))
            VStack(alignment: .center, spacing: 14) {
                GoalView(title: "Goal Number One", isSelected: true)
                GoalView(title: "Goal Number Two", isSelected: false)
                GoalView(title: "Goal Number Three", isSelected: false)
                GoalView(title: "Goal Number Four", isSelected: false)
            }
            .padding(.horizontal, 19)
            .padding(.vertical, 24)
        }
        .frame(width: 330)
    }
}


struct GoalView: View {
    var title: String
    var isSelected: Bool
    var body: some View {
        ZStack{
            RoundedRectangle(cornerRadius: 16)
                .foregroundColor(Color(red: 252/255, green: 253/255, blue: 255/255))
            HStack{
                Text(title)
                    .foregroundColor(AppColors.secondText)
                    .font(.system(size: 16))
                    .fontWeight(.semibold)
                Spacer()
                Image(self.isSelected ? "Picker" : "Picker-2")
                
            }
            .padding(.horizontal, 24)
        }
    }
}

struct AppButton: View {
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
