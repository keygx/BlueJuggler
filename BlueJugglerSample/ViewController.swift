//
//  ViewController.swift
//  BlueJugglerSample
//
//  Created by keygx on 2017/03/19.
//  Copyright © 2017年 keygx. All rights reserved.
//

import UIKit
import BlueJuggler
import CoreBluetooth

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        ble()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    func ble() {
        BlueJuggler.shared.observer({ (response: BlueJuggler.NotificationType) in
            switch response {
            case .centralManager(.didUpdateState(let centralManager)):
                self.centralManagerDidConnect(centralManager)
            
            //case .centralManager(.didDiscover(let centralManager, let peripheral, let advertisementData, let rssi)):
            //case .centralManager(.didConnect(let centralManager, let peripheral)):
            //case .centralManager(.didDisConnectPeripheral(let centralManager, let peripheral, let error)):
            //case .centralManager(.didFailToConnect(let centralManager, let peripheral, let error)):
            //case .centralManager(.didRetrieveConnectedPeripherals(let centralManager, let peripherals)):
            //case .centralManager(.didRetrievePeripherals(let centralManager, let peripherals)):
            //case .centralManager(.willRestoreState(let centralManager, let willRestoreState)):
                
            default: break
            }
        })
    }

    func centralManagerDidConnect(_ centralManager: CBCentralManager) {
        switch centralManager.state {
        case .unsupported:
            print("BLE is not supported")
        case .unauthorized:
            print("BLE is unauthorized")
        case .unknown:
            print("BLE is Unknown")
        case .resetting:
            print("BLE is Resetting")
        case .poweredOff:
            print("BLE service is powered off")
        case .poweredOn:
            print("BLE service is powered on")
            print("Start Scanning")
            
            //centralManager.scanForPeripherals(withServices: nil, options: [CBCentralManagerScanOptionAllowDuplicatesKey: true])
        }
    }
}
