//
//  OnboardingView.swift
//  WBApp
//
//  Created by Ильяс Жанаев on 29.06.2024.
//

import SwiftUI

struct OnboardingView: View {
    @State private var showModal1 = false
    @State private var showModal2 = false
    @State private var showModal3 = false
    
    var body: some View {
        NavigationStack {
            ZStack {
                Color.backgroundWB
                    .edgesIgnoringSafeArea(.all)
                
                VStack(alignment: .center) {
                    Image("Illustation")
                        .padding(.top, 135)
                    
                    Text(NSLocalizedString("chatWithFriendsAndFamilyEasily", comment: ""))
                        .multilineTextAlignment(.center)
                        .font(.system(size: 24))
                        .foregroundStyle(.mainTextWB)
                        .fontWeight(.bold)
                        .padding(.top, 42)
                        .frame(width: 280)
                    
                    Spacer()
                    
                    OnboardingButtons(showModal1: $showModal1, showModal2: $showModal2, showModal3: $showModal3)
                        .padding(20)
                }
            }
            .navigationDestination(isPresented: $showModal3, destination: {
                VerificationView()
            })
        }
    }
}

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
    }
}
