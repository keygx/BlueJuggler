//
//  BlueJuggler.swift
//  BlueJuggler
//
//  Created by keygx on 2017/03/19.
//  Copyright © 2017年 keygx. All rights reserved.
//

import Foundation
import CoreBluetooth

public class BlueJuggler: NSObject, CBCentralManagerDelegate, CBPeripheralDelegate {
    
    public static let shared = BlueJuggler()
    
    private var centralManager: CBCentralManager?
    
    fileprivate var completionHandler: ((NotificationType) -> Void)?
    
    override init() {
        super.init()
        centralManager = CBCentralManager(delegate: self, queue: nil)
    }
    
    public func observer(_ handler: @escaping (NotificationType) -> Void) {
        completionHandler = handler
    }
    
    func callback(response: NotificationType) {
        guard let handler = completionHandler else {
            return
        }
        handler(response)
    }
}
