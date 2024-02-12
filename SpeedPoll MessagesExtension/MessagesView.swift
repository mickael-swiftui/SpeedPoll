//
//  MessagesView.swift
//  SpeedPoll MessagesExtension
//
//  Created by Mickael Mas on 12/02/2024.
//

import SwiftUI
import Messages

protocol MessagesViewDelegate: AnyObject {
    func messagesViewDelegate(_ view: MessagesView, didSelectValue value: Int)
}

struct MessagesView: View {
    
    weak var delegate: MessagesViewDelegate?
    
    var body: some View {
        List(1..<100) { value in
            Button("\(value)") {
                print(value)
                self.delegate?.messagesViewDelegate(self, didSelectValue: value)
            }
        }
    }
}
