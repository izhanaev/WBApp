//
//  Onboarding.swift
//  WBApp
//
//  Created by Ильяс Жанаев on 10.06.2024.
//

import SwiftUI

struct Onboarding: View {
    @State private var showModal1 = false
    @State private var showModal2 = false
    @State private var navigateToContactsView = false
    
    var body: some View {
        NavigationStack {
            ZStack {
                Color.backgroundWB
                    .edgesIgnoringSafeArea(.all)
                
                VStack(alignment: .center) {
                    Image("Illustation")
                        .padding(.top, 135)
                    Text("Общайтесь с друзьями и близкими легко")
                        .multilineTextAlignment(.center)
                        .font(.system(size: 24))
                        .foregroundStyle(.mainTextWB)
                        .fontWeight(.bold)
                        .padding(.top, 42)
                        .frame(width: 280)
                    
                    Spacer()
                    
                    VStack {
                        Text("Нажимая кнопку продолжить я соглашаюсь с")
                            .multilineTextAlignment(.center)
                            .font(.system(size: 10))
                            .foregroundStyle(.grayTextWB)
                            .padding(.bottom, 2)
                        HStack(spacing: 0) {
                            Button(action: {
                                showModal1 = true
                            }) {
                                Text("Политикой Конфиденциальности")
                                    .font(.system(size: 10))
                                    .foregroundStyle(.defaultWB)
                            }.sheet(isPresented: $showModal1) {
                                Button(action: {
                                    showModal1 = false
                                })
                                {
                                    Text("Dismiss")
                                }
                            }
                            Text(" и ")
                                .font(.system(size: 10))
                                .foregroundStyle(.grayTextWB)
                            Button(action: {
                                showModal2 = true
                            }) {
                                Text("Условиями Использования")
                                    .font(.system(size: 10))
                                    .foregroundStyle(.defaultWB)
                            }.sheet(isPresented: $showModal2) {
                                Button(action: {
                                    showModal2 = false
                                })
                                {
                                    Text("Dismiss")
                                }
                            }
                        }
                        Button(action: {
                            navigateToContactsView = true
                        }) {
                            Text("Начать общаться")
                                .font(.system(size: 16))
                                .foregroundStyle(.whiteTextWB)
                                .padding()
                                .frame(maxWidth: .infinity)
                                .background(Color.defaultWB)
                                .cornerRadius(30)
                        }
                        .padding(.top, 13)
                        .navigationDestination(isPresented: $navigateToContactsView) {
                            ContentView_TabView()
                        }
                    }
                    .padding(20)
                }
            }
        }
    }
}

#Preview {
    Onboarding()
}
