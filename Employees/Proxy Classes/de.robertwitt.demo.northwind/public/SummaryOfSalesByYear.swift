// # Proxy Compiler 18.9.4-973a4d-20181128

import Foundation
import SAPOData

open class SummaryOfSalesByYear: EntityValue {
    public required init(from decoder: Decoder) throws {
        try super.init(from: decoder)
    }

    private static var shippedDate_: Property = NorthwindEntitiesMetadata.EntityTypes.summaryOfSalesByYear.property(withName: "ShippedDate")

    private static var orderID_: Property = NorthwindEntitiesMetadata.EntityTypes.summaryOfSalesByYear.property(withName: "OrderID")

    private static var subtotal_: Property = NorthwindEntitiesMetadata.EntityTypes.summaryOfSalesByYear.property(withName: "Subtotal")

    public init(withDefaults: Bool = true) {
        super.init(withDefaults: withDefaults, type: NorthwindEntitiesMetadata.EntityTypes.summaryOfSalesByYear)
    }

    open class func array(from: EntityValueList) -> Array<SummaryOfSalesByYear> {
        return ArrayConverter.convert(from.toArray(), Array<SummaryOfSalesByYear>())
    }

    open func copy() -> SummaryOfSalesByYear {
        return CastRequired<SummaryOfSalesByYear>.from(self.copyEntity())
    }

    open override var isProxy: Bool {
        return true
    }

    open class func key(orderID: Int?) -> EntityKey {
        return EntityKey().with(name: "OrderID", value: IntValue.of(optional: orderID))
    }

    open var old: SummaryOfSalesByYear {
        return CastRequired<SummaryOfSalesByYear>.from(self.oldEntity)
    }

    open class var orderID: Property {
        get {
            objc_sync_enter(SummaryOfSalesByYear.self)
            defer { objc_sync_exit(SummaryOfSalesByYear.self) }
            do {
                return SummaryOfSalesByYear.orderID_
            }
        }
        set(value) {
            objc_sync_enter(SummaryOfSalesByYear.self)
            defer { objc_sync_exit(SummaryOfSalesByYear.self) }
            do {
                SummaryOfSalesByYear.orderID_ = value
            }
        }
    }

    open var orderID: Int? {
        get {
            return IntValue.optional(self.optionalValue(for: SummaryOfSalesByYear.orderID))
        }
        set(value) {
            self.setOptionalValue(for: SummaryOfSalesByYear.orderID, to: IntValue.of(optional: value))
        }
    }

    open class var shippedDate: Property {
        get {
            objc_sync_enter(SummaryOfSalesByYear.self)
            defer { objc_sync_exit(SummaryOfSalesByYear.self) }
            do {
                return SummaryOfSalesByYear.shippedDate_
            }
        }
        set(value) {
            objc_sync_enter(SummaryOfSalesByYear.self)
            defer { objc_sync_exit(SummaryOfSalesByYear.self) }
            do {
                SummaryOfSalesByYear.shippedDate_ = value
            }
        }
    }

    open var shippedDate: LocalDateTime? {
        get {
            return LocalDateTime.castOptional(self.optionalValue(for: SummaryOfSalesByYear.shippedDate))
        }
        set(value) {
            self.setOptionalValue(for: SummaryOfSalesByYear.shippedDate, to: value)
        }
    }

    open class var subtotal: Property {
        get {
            objc_sync_enter(SummaryOfSalesByYear.self)
            defer { objc_sync_exit(SummaryOfSalesByYear.self) }
            do {
                return SummaryOfSalesByYear.subtotal_
            }
        }
        set(value) {
            objc_sync_enter(SummaryOfSalesByYear.self)
            defer { objc_sync_exit(SummaryOfSalesByYear.self) }
            do {
                SummaryOfSalesByYear.subtotal_ = value
            }
        }
    }

    open var subtotal: BigDecimal? {
        get {
            return DecimalValue.optional(self.optionalValue(for: SummaryOfSalesByYear.subtotal))
        }
        set(value) {
            self.setOptionalValue(for: SummaryOfSalesByYear.subtotal, to: DecimalValue.of(optional: value))
        }
    }
}
