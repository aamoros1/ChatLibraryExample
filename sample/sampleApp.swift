//
// sampleApp.swift
// 
// Created by Alwin Amoros on 5/3/24.
// 

	

import SwiftUI
import ChatLibrary

final class childChatController: ChatController {
    override func sendMessage(message: ChatClientMessage) async {
        await super.sendMessage(message: message)
        print(message)
    }
    override func userTappedSubmit(params: String...) {
        chatStatus = .chatting
    }
}


@main
struct sampleApp: App {
    var body: some Scene {
        WindowGroup {
            ChatContainerView<childChatController>(chatController: childChatController())
        }
    }
}
