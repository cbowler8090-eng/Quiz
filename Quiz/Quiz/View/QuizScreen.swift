//
//  QuizScreen.swift
//  Quiz
//
//  Created by Camden Bowler on 10/8/25.
//

import SwiftUI
struct QuizScreen: View {
    @State private var viewModel = QuizVM()
    var body: some View {
        VStack(spacing:30){
            image
            title
            textInput
            submitAwnser
            Spacer()
            easymodeButton
        }
        .background{
            Image(.fnafBG)
                .resizable()
                .ignoresSafeArea()
        }
        .alert(
                viewModel.wasCorrect ? "Corect!" : "wrong...",
                isPresented: $viewModel.showResult,
                actions: { end },
                message: {
                    Text("Score: \(viewModel.score) / \(viewModel.awnserd)")
                }
        )
    }
    private var end :some View {
        return if viewModel.awnserd == 10 {
            Button("End Quiz", action: viewModel.reset)
        } else {
            Button("next", action: viewModel.next)
        }
    }
    private var image: some View {
        if viewModel.easymode == true {
            return Image(viewModel.question)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .brightness(viewModel.showResult ? 0: -1)
                .frame(maxHeight: 250)
                .padding(50)
        }else { return Image(viewModel.quote)
            .resizable()
            .aspectRatio(contentMode: .fit)
            .brightness(viewModel.showResult ? 0: 0)
            .frame(maxHeight: 250)
            .padding(50)
            }
        }
    private var title: some View {
        Text("Guess the fnaf animatronic by ther quote")
            .multilineTextAlignment(.center)
            .background(.black)
            .foregroundStyle(.white)
    }
    private var textInput: some View {
        TextField("Guess",text: $viewModel .input)
            .autocorrectionDisabled()
            .bold()
            .padding()
            .background(.black)
            .foregroundStyle(.white)
    }
    
    private var submitAwnser: some View {
        
        Button(action: viewModel.guess){
            Text("Submit")
            .padding()
            .bold()
            .frame(maxWidth: .infinity)
        }
    }
    private var easymodeButton: some View {
        
        Button("\(viewModel.difficulty())") {
            viewModel.changeDifficulty()
        }
    }
}

#Preview {
    QuizScreen()
}

