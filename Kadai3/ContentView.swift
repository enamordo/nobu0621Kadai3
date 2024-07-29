//
//  ContentView.swift
//  Kadai3
//
//  Created by nobu0621 on 2024/07/22.
//

import SwiftUI

struct Kadai3View: View {
    @State private var inputNumber1: String = ""
    @State private var inputNumber2: String = ""
    @State private var signedNumber1: Int = 0
    @State private var signedNumber2: Int = 0
    @State private var isOn1: Bool = false
    @State private var isOn2: Bool = false
    @State private var result: String = "0"
    
    var body: some View {
        VStack {
            HStack {
                TextField("", text: $inputNumber1)
                    .frame(width: 100)
                TextField("", text: $inputNumber2)
                    .frame(width: 100)
                Spacer()
            }
            .textFieldStyle(RoundedBorderTextFieldStyle())
            .keyboardType(.numberPad)
            HStack {
                Text("+")
                    .frame(width: 25)
                Toggle(isOn: $isOn1) {}
                    .frame(width: 50)
                    .tint(.indigo)
                Text("-")
                    .frame(width: 25)
                Text("+")
                    .frame(width: 25)
                Toggle(isOn: $isOn2) {}
                    .frame(width: 50)
                    .tint(.orange)
                Text("-")
                    .frame(width: 25)
                Spacer()
            }
            HStack {
                Button(/*@START_MENU_TOKEN@*/"Button"/*@END_MENU_TOKEN@*/) {
                    let number1 = Int(inputNumber1) ?? 0
                    signedNumber1 = isOn1 ? -number1 : number1
                    let number2 = Int(inputNumber2) ?? 0
                    signedNumber2 = isOn2 ? -number2 : number2
                    result = String(signedNumber1 + signedNumber2)
                }.frame(width: 180)
                Spacer()
            }
            HStack {
                Text(String(signedNumber1)).frame(width: 100)
                Text("+")
                Text(String(signedNumber2)).frame(width: 100)
                Spacer()
            }
            HStack {
                Text(result)
                Spacer()
            }
            Spacer()
        }
        .padding()
    }
}

#Preview {
    Kadai3View()
}
