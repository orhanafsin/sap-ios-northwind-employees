// # Proxy Compiler 18.9.4-973a4d-20181128

import Foundation
import SAPOData

open class SalesTotalsByAmount: EntityValue {
    public required init(from decoder: Decoder) throws {
        try super.init(from: decoder)
    }

    private static var saleAmount_: Property = NorthwindEntitiesMetadata.EntityTypes.salesTotalsByAmount.property(withName: "SaleAmount")

    private static var orderID_: Property = NorthwindEntitiesMetadata.EntityTypes.salesTotalsByAmount.property(withName: "OrderID")

    private static var companyName_: Property = NorthwindEntitiesMetadata.EntityTypes.salesTotalsByAmount.property(withName: "CompanyName")

    private static var shippedDate_: Property = NorthwindEntitiesMetadata.EntityTypes.salesTotalsByAmount.property(withName: "ShippedDate")

    public init(withDefaults: Bool = true) {
        super.init(withDefaults: withDefaults, type: NorthwindEntitiesMetadata.EntityTypes.salesTotalsByAmount)
    }

    open class func array(from: EntityValueList) -> Array<SalesTotalsByAmount> {
        return ArrayConverter.convert(from.toArray(), Array<SalesTotalsByAmount>())
    }

    open class var companyName: Property {
        get {
            objc_sync_enter(SalesTotalsByAmount.self)
            defer { objc_sync_exit(SalesTotalsByAmount.self) }
            do {
                return SalesTotalsByAmount.companyName_
            }
        }
        set(value) {
            objc_sync_enter(SalesTotalsByAmount.self)
            defer { objc_sync_exit(SalesTotalsByAmount.self) }
            do {
                SalesTotalsByAmount.companyName_ = value
            }
        }
    }

    open var companyName: String? {
        get {
            return StringValue.optional(self.optionalValue(for: SalesTotalsByAmount.companyName))
        }
        set(value) {
            self.setOptionalValue(for: SalesTotalsByAmount.companyName, to: StringValue.of(optional: value))
        }
    }

    open func copy() -> SalesTotalsByAmount {
        return CastRequired<SalesTotalsByAmount>.from(self.copyEntity())
    }

    open override var isProxy: Bool {
        return true
    }

    open class func key(companyName: String?, orderID: Int?) -> EntityKey {
        return EntityKey().with(name: "CompanyName", value: StringValue.of(optional: companyName)).with(name: "OrderID", value: IntValue.of(optional: orderID))
    }

    open var old: SalesTotalsByAmount {
        return CastRequired<SalesTotalsByAmount>.from(self.oldEntity)
    }

    open class var orderID: Property {
        get {
            objc_sync_enter(SalesTotalsByAmount.self)
            defer { objc_sync_exit(SalesTotalsByAmount.self) }
            do {
                return SalesTotalsByAmount.orderID_
            }
        }
        set(value) {
            objc_sync_enter(SalesTotalsByAmount.self)
            defer { objc_sync_exit(SalesTotalsByAmount.self) }
            do {
                SalesTotalsByAmount.orderID_ = value
            }
        }
    }

    open var orderID: Int? {
        get {
            return IntValue.optional(self.optionalValue(for: SalesTotalsByAmount.orderID))
        }
        set(value) {
            self.setOptionalValue(for: SalesTotalsByAmount.orderID, to: IntValue.of(optional: value))
        }
    }

    open class var saleAmount: Property {
        get {
            objc_sync_enter(SalesTotalsByAmount.self)
            defer { objc_sync_exit(SalesTotalsByAmount.self) }
            do {
                return SalesTotalsByAmount.saleAmount_
            }
        }
        set(value) {
            objc_sync_enter(SalesTotalsByAmount.self)
            defer { objc_sync_exit(SalesTotalsByAmount.self) }
            do {
                SalesTotalsByAmount.saleAmount_ = value
            }
        }
    }

    open var saleAmount: BigDecimal? {
        get {
            return DecimalValue.optional(self.optionalValue(for: SalesTotalsByAmount.saleAmount))
        }
        set(value) {
            self.setOptionalValue(for: SalesTotalsByAmount.saleAmount, to: DecimalValue.of(optional: value))
        }
    }

    open class var shippedDate: Property {
        get {
            objc_sync_enter(SalesTotalsByAmount.self)
            defer { objc_sync_exit(SalesTotalsByAmount.self) }
            do {
                return SalesTotalsByAmount.shippedDate_
            }
        }
        set(value) {
            objc_sync_enter(SalesTotalsByAmount.self)
            defer { objc_sync_exit(SalesTotalsByAmount.self) }
            do {
                SalesTotalsByAmount.shippedDate_ = value
            }
        }
    }

    open var shippedDate: LocalDateTime? {
        get {
            return LocalDateTime.castOptional(self.optionalValue(for: SalesTotalsByAmount.shippedDate))
        }
        set(value) {
            self.setOptionalValue(for: SalesTotalsByAmount.shippedDate, to: value)
        }
    }
}
