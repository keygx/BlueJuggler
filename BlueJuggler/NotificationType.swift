//
//  NotificationType.swift
//  BlueJuggler
//
//  Created by keygx on 2017/03/19.
//  Copyright © 2017年 keygx. All rights reserved.
//

import Foundation
import CoreBluetooth

extension BlueJuggler {
    
    public enum NotificationType {
        
        public enum CentralManager {
            case didConnect(CBCentralManager, peripheral: CBPeripheral)
            case didDisConnectPeripheral(CBCentralManager, peripheral: CBPeripheral, error: Error?)
            case didFailToConnect(CBCentralManager, peripheral: CBPeripheral, error: Error?)
            case didDiscover(CBCentralManager, peripheral: CBPeripheral, advertisementData: [String : Any], rssi: NSNumber)
            case didRetrieveConnectedPeripherals(CBCentralManager, peripherals: [CBPeripheral])
            case didRetrievePeripherals(CBCentralManager, peripherals: [CBPeripheral])
            case didUpdateState(CBCentralManager)
            case willRestoreState(CBCentralManager, willRestoreState: [String : Any])
        }
        
        public enum Peripheral {
            case didDiscoverServices(CBPeripheral, error: Error?)
            case didDiscoverIncludedServicesFor(CBPeripheral, service: CBService, error: Error?)
            case didDiscoverCharacteristicsFor(CBPeripheral, service: CBService, error: Error?)
            case didDiscoverDescriptorsFor(CBPeripheral, characteristic: CBCharacteristic, error: Error?)
            case didUpdateValueForCharacteristic(CBPeripheral, characteristic: CBCharacteristic, error: Error?)
            case didUpdateValueForCBDescriptor(CBPeripheral, descriptor: CBDescriptor, error: Error?)
            case didWriteValueForCBCharacteristic(CBPeripheral, characteristic: CBCharacteristic, error: Error?)
            case didWriteValueForCBDescriptor(CBPeripheral, descriptor: CBDescriptor, error: Error?)
            case didUpdateNotificationStateFor(CBPeripheral, characteristic: CBCharacteristic, error: Error?)
            case didUpdateRSSI(CBPeripheral, error: Error?)
            case didReadRSSI(CBPeripheral, RSSI: NSNumber, error: Error?)
            case didUpdateName(CBPeripheral)
            case didModifyServices(CBPeripheral, services: [CBService])
        }
        
        case centralManager(CentralManager)
        case peripheral(Peripheral)
    }
}
