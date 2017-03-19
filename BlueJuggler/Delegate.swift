//
//  Delegate.swift
//  BlueJuggler
//
//  Created by keygx on 2017/03/19.
//  Copyright © 2017年 keygx. All rights reserved.
//

import Foundation
import CoreBluetooth

extension BlueJuggler {
    
    // CBCentralManagerDelegate
    public func centralManager(_ central: CBCentralManager, didConnect peripheral: CBPeripheral) {
        callback(response: .centralManager(.didConnect(central, peripheral: peripheral)))
    }
    
    public func centralManager(_ central: CBCentralManager, didDisconnectPeripheral peripheral: CBPeripheral, error: Error?) {
        callback(response: .centralManager(.didDisConnectPeripheral(central, peripheral: peripheral, error: error)))
    }
    
    public func centralManager(_ central: CBCentralManager, didFailToConnect peripheral: CBPeripheral, error: Error?) {
        callback(response: .centralManager(.didFailToConnect(central, peripheral: peripheral, error: error)))
    }
    
    public func centralManager(_ central: CBCentralManager, didDiscover peripheral: CBPeripheral, advertisementData: [String : Any], rssi RSSI: NSNumber) {
        callback(response: .centralManager(.didDiscover(central, peripheral: peripheral, advertisementData: advertisementData, rssi: RSSI)))
    }
    
    public func centralManager(_ central: CBCentralManager, didRetrieveConnectedPeripherals: [CBPeripheral]) {
        callback(response: .centralManager(.didRetrieveConnectedPeripherals(central, peripherals: didRetrieveConnectedPeripherals)))
    }
    
    public func centralManager(_ central: CBCentralManager, didRetrievePeripherals: [CBPeripheral]) {
        callback(response: .centralManager(.didRetrievePeripherals(central, peripherals: didRetrievePeripherals)))
    }
    
    public func centralManagerDidUpdateState(_ central: CBCentralManager) {
        callback(response: .centralManager(.didUpdateState(central)))
    }
    
    public func centralManager(_ central: CBCentralManager, willRestoreState dict: [String : Any]) {
        callback(response: .centralManager(.willRestoreState(central, willRestoreState: dict)))
    }
    
    // CBPeripheralDelegate
    public func peripheral(_ peripheral: CBPeripheral, didDiscoverServices error: Error?) {
        callback(response: .peripheral(.didDiscoverServices(peripheral, error: error)))
    }
    
    public func peripheral(_ peripheral: CBPeripheral, didDiscoverIncludedServicesFor service: CBService, error: Error?) {
        callback(response: .peripheral(.didDiscoverIncludedServicesFor(peripheral, service: service, error: error)))
    }
    
    public func peripheral(_ peripheral: CBPeripheral, didDiscoverCharacteristicsFor service: CBService, error: Error?) {
        callback(response: .peripheral(.didDiscoverCharacteristicsFor(peripheral, service: service, error: error)))
    }
    
    public func peripheral(_ peripheral: CBPeripheral, didDiscoverDescriptorsFor characteristic: CBCharacteristic, error: Error?) {
        callback(response: .peripheral(.didDiscoverDescriptorsFor(peripheral, characteristic: characteristic, error: error)))
    }
    
    public func peripheral(_ peripheral: CBPeripheral, didUpdateValueFor: CBCharacteristic, error: Error?) {
        callback(response: .peripheral(.didWriteValueForCBCharacteristic(peripheral, characteristic: didUpdateValueFor, error: error)))
    }
    
    public func peripheral(_ peripheral: CBPeripheral, didUpdateValueFor: CBDescriptor, error: Error?) {
        callback(response: .peripheral(.didUpdateValueForCBDescriptor(peripheral, descriptor: didUpdateValueFor, error: error)))
    }
    
    public func peripheral(_ peripheral: CBPeripheral, didWriteValueFor: CBCharacteristic, error: Error?) {
        callback(response: .peripheral(.didWriteValueForCBCharacteristic(peripheral, characteristic: didWriteValueFor, error: error)))
    }
    
    public func peripheral(_ peripheral: CBPeripheral, didWriteValueFor: CBDescriptor, error: Error?) {
        callback(response: .peripheral(.didUpdateValueForCBDescriptor(peripheral, descriptor: didWriteValueFor, error: error)))
    }
    
    public func peripheral(_ peripheral: CBPeripheral, didUpdateNotificationStateFor: CBCharacteristic, error: Error?) {
        callback(response: .peripheral(.didUpdateNotificationStateFor(peripheral, characteristic: didUpdateNotificationStateFor, error: error)))
    }
    
    public func peripheralDidUpdateRSSI(_ peripheral: CBPeripheral, error: Error?) {
        callback(response: .peripheral(.didUpdateRSSI(peripheral, error: error)))
    }
    
    public func peripheral(_ peripheral: CBPeripheral, didReadRSSI: NSNumber, error: Error?) {
        callback(response: .peripheral(.didReadRSSI(peripheral, RSSI: didReadRSSI, error: error)))
    }
    
    public func peripheralDidUpdateName(_ peripheral: CBPeripheral) {
        callback(response: .peripheral(.didUpdateName(peripheral)))
    }
    
    public func peripheral(_ peripheral: CBPeripheral, didModifyServices: [CBService]) {
        callback(response: .peripheral(.didModifyServices(peripheral, services: didModifyServices)))
    }
}
