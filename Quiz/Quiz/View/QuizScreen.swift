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
        .padding()
        .alert(
            viewModel.wasCorrect ? "Corect!" : "wrong...",
            isPresented: $viewModel.showResult,
            actions: {
                Button("next", action: viewModel.next)
            },
            message: {
                Text("Score: \(viewModel.score) / \(viewModel.awnserd)")
            }
        )
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
        Text("guess the fnaf charicter by ther quote")
            .multilineTextAlignment(.center)
//            .foregroundStyle(.yellow)
//            .shadow(color: .black ,radius: 1, x: 3, y: 3)
    
    }
    private var textInput: some View {
        TextField("Guess",text: $viewModel .input)
            .autocorrectionDisabled()
            .bold()
            .padding()
            
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
        
        Button("Easy mode") {
            viewModel.changeDifficulty()
        }
    }
}

#Preview {
    QuizScreen()
}
