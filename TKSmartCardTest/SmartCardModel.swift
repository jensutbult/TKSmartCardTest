//
//  SmartCardModel.swift
//  TKSmartCardTest
//
//  Created by Jens Utbult on 2022-06-19.
//

import SwiftUI
import CryptoTokenKit

class SmartCardModel: ObservableObject {

    @Published var status: String?

    func connect() {
        guard let manager = TKSmartCardSlotManager.default else {
            status = "Failed to get a TKSmartCardSlotManager"
            return
        }
        guard let slotName = manager.slotNames.first else {
            status = "No connected smart card"
            return
        }
        status = slotName
    }
}
