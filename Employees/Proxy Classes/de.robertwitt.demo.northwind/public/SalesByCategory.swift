// # Proxy Compiler 18.9.4-973a4d-20181128

import Foundation
import SAPOData

open class SalesByCategory: EntityValue {
    public required init(from decoder: Decoder) throws {
        try super.init(from: decoder)
    }

    private static var categoryID_: Property = NorthwindEntitiesMetadata.EntityTypes.salesByCategory.property(withName: "CategoryID")

    private static var categoryName_: Property = NorthwindEntitiesMetadata.EntityTypes.salesByCategory.property(withName: "CategoryName")

    private static var productName_: Property = NorthwindEntitiesMetadata.EntityTypes.salesByCategory.property(withName: "ProductName")

    private static var productSales_: Property = NorthwindEntitiesMetadata.EntityTypes.salesByCategory.property(withName: "ProductSales")

    public init(withDefaults: Bool = true) {
        super.init(withDefaults: withDefaults, type: NorthwindEntitiesMetadata.EntityTypes.salesByCategory)
    }

    open class func array(from: EntityValueList) -> Array<SalesByCategory> {
        return ArrayConverter.convert(from.toArray(), Array<SalesByCategory>())
    }

    open class var categoryID: Property {
        get {
            objc_sync_enter(SalesByCategory.self)
            defer { objc_sync_exit(SalesByCategory.self) }
            do {
                return SalesByCategory.categoryID_
            }
        }
        set(value) {
            objc_sync_enter(SalesByCategory.self)
            defer { objc_sync_exit(SalesByCategory.self) }
            do {
                SalesByCategory.categoryID_ = value
            }
        }
    }

    open var categoryID: Int? {
        get {
            return IntValue.optional(self.optionalValue(for: SalesByCategory.categoryID))
        }
        set(value) {
            self.setOptionalValue(for: SalesByCategory.categoryID, to: IntValue.of(optional: value))
        }
    }

    open class var categoryName: Property {
        get {
            objc_sync_enter(SalesByCategory.self)
            defer { objc_sync_exit(SalesByCategory.self) }
            do {
                return SalesByCategory.categoryName_
            }
        }
        set(value) {
            objc_sync_enter(SalesByCategory.self)
            defer { objc_sync_exit(SalesByCategory.self) }
            do {
                SalesByCategory.categoryName_ = value
            }
        }
    }

    open var categoryName: String? {
        get {
            return StringValue.optional(self.optionalValue(for: SalesByCategory.categoryName))
        }
        set(value) {
            self.setOptionalValue(for: SalesByCategory.categoryName, to: StringValue.of(optional: value))
        }
    }

    open func copy() -> SalesByCategory {
        return CastRequired<SalesByCategory>.from(self.copyEntity())
    }

    open override var isProxy: Bool {
        return true
    }

    open class func key(categoryID: Int?, categoryName: String?, productName: String?) -> EntityKey {
        return EntityKey().with(name: "CategoryID", value: IntValue.of(optional: categoryID)).with(name: "CategoryName", value: StringValue.of(optional: categoryName)).with(name: "ProductName", value: StringValue.of(optional: productName))
    }

    open var old: SalesByCategory {
        return CastRequired<SalesByCategory>.from(self.oldEntity)
    }

    open class var productName: Property {
        get {
            objc_sync_enter(SalesByCategory.self)
            defer { objc_sync_exit(SalesByCategory.self) }
            do {
                return SalesByCategory.productName_
            }
        }
        set(value) {
            objc_sync_enter(SalesByCategory.self)
            defer { objc_sync_exit(SalesByCategory.self) }
            do {
                SalesByCategory.productName_ = value
            }
        }
    }

    open var productName: String? {
        get {
            return StringValue.optional(self.optionalValue(for: SalesByCategory.productName))
        }
        set(value) {
            self.setOptionalValue(for: SalesByCategory.productName, to: StringValue.of(optional: value))
        }
    }

    open class var productSales: Property {
        get {
            objc_sync_enter(SalesByCategory.self)
            defer { objc_sync_exit(SalesByCategory.self) }
            do {
                return SalesByCategory.productSales_
            }
        }
        set(value) {
            objc_sync_enter(SalesByCategory.self)
            defer { objc_sync_exit(SalesByCategory.self) }
            do {
                SalesByCategory.productSales_ = value
            }
        }
    }

    open var productSales: BigDecimal? {
        get {
            return DecimalValue.optional(self.optionalValue(for: SalesByCategory.productSales))
        }
        set(value) {
            self.setOptionalValue(for: SalesByCategory.productSales, to: DecimalValue.of(optional: value))
        }
    }
}
