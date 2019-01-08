// # Proxy Compiler 18.9.4-973a4d-20181128

import Foundation
import SAPOData

open class Shipper: EntityValue {
    public required init(from decoder: Decoder) throws {
        try super.init(from: decoder)
    }

    private static var shipperID_: Property = NorthwindEntitiesMetadata.EntityTypes.shipper.property(withName: "ShipperID")

    private static var companyName_: Property = NorthwindEntitiesMetadata.EntityTypes.shipper.property(withName: "CompanyName")

    private static var phone_: Property = NorthwindEntitiesMetadata.EntityTypes.shipper.property(withName: "Phone")

    private static var orders_: Property = NorthwindEntitiesMetadata.EntityTypes.shipper.property(withName: "Orders")

    public init(withDefaults: Bool = true) {
        super.init(withDefaults: withDefaults, type: NorthwindEntitiesMetadata.EntityTypes.shipper)
    }

    open class func array(from: EntityValueList) -> Array<Shipper> {
        return ArrayConverter.convert(from.toArray(), Array<Shipper>())
    }

    open class var companyName: Property {
        get {
            objc_sync_enter(Shipper.self)
            defer { objc_sync_exit(Shipper.self) }
            do {
                return Shipper.companyName_
            }
        }
        set(value) {
            objc_sync_enter(Shipper.self)
            defer { objc_sync_exit(Shipper.self) }
            do {
                Shipper.companyName_ = value
            }
        }
    }

    open var companyName: String? {
        get {
            return StringValue.optional(self.optionalValue(for: Shipper.companyName))
        }
        set(value) {
            self.setOptionalValue(for: Shipper.companyName, to: StringValue.of(optional: value))
        }
    }

    open func copy() -> Shipper {
        return CastRequired<Shipper>.from(self.copyEntity())
    }

    open override var isProxy: Bool {
        return true
    }

    open class func key(shipperID: Int?) -> EntityKey {
        return EntityKey().with(name: "ShipperID", value: IntValue.of(optional: shipperID))
    }

    open var old: Shipper {
        return CastRequired<Shipper>.from(self.oldEntity)
    }

    open class var orders: Property {
        get {
            objc_sync_enter(Shipper.self)
            defer { objc_sync_exit(Shipper.self) }
            do {
                return Shipper.orders_
            }
        }
        set(value) {
            objc_sync_enter(Shipper.self)
            defer { objc_sync_exit(Shipper.self) }
            do {
                Shipper.orders_ = value
            }
        }
    }

    open var orders: Array<Order> {
        get {
            return ArrayConverter.convert(EntityValueList.castRequired(self.requiredValue(for: Shipper.orders)).toArray(), Array<Order>())
        }
        set(value) {
            Shipper.orders.setEntityList(in: self, to: EntityValueList.fromArray(ArrayConverter.convert(value, Array<EntityValue>())))
        }
    }

    open class var phone: Property {
        get {
            objc_sync_enter(Shipper.self)
            defer { objc_sync_exit(Shipper.self) }
            do {
                return Shipper.phone_
            }
        }
        set(value) {
            objc_sync_enter(Shipper.self)
            defer { objc_sync_exit(Shipper.self) }
            do {
                Shipper.phone_ = value
            }
        }
    }

    open var phone: String? {
        get {
            return StringValue.optional(self.optionalValue(for: Shipper.phone))
        }
        set(value) {
            self.setOptionalValue(for: Shipper.phone, to: StringValue.of(optional: value))
        }
    }

    open class var shipperID: Property {
        get {
            objc_sync_enter(Shipper.self)
            defer { objc_sync_exit(Shipper.self) }
            do {
                return Shipper.shipperID_
            }
        }
        set(value) {
            objc_sync_enter(Shipper.self)
            defer { objc_sync_exit(Shipper.self) }
            do {
                Shipper.shipperID_ = value
            }
        }
    }

    open var shipperID: Int? {
        get {
            return IntValue.optional(self.optionalValue(for: Shipper.shipperID))
        }
        set(value) {
            self.setOptionalValue(for: Shipper.shipperID, to: IntValue.of(optional: value))
        }
    }
}
