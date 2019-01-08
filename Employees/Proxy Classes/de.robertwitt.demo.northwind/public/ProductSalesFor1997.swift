// # Proxy Compiler 18.9.4-973a4d-20181128

import Foundation
import SAPOData

open class ProductSalesFor1997: EntityValue {
    public required init(from decoder: Decoder) throws {
        try super.init(from: decoder)
    }

    private static var categoryName_: Property = NorthwindEntitiesMetadata.EntityTypes.productSalesFor1997.property(withName: "CategoryName")

    private static var productName_: Property = NorthwindEntitiesMetadata.EntityTypes.productSalesFor1997.property(withName: "ProductName")

    private static var productSales_: Property = NorthwindEntitiesMetadata.EntityTypes.productSalesFor1997.property(withName: "ProductSales")

    public init(withDefaults: Bool = true) {
        super.init(withDefaults: withDefaults, type: NorthwindEntitiesMetadata.EntityTypes.productSalesFor1997)
    }

    open class func array(from: EntityValueList) -> Array<ProductSalesFor1997> {
        return ArrayConverter.convert(from.toArray(), Array<ProductSalesFor1997>())
    }

    open class var categoryName: Property {
        get {
            objc_sync_enter(ProductSalesFor1997.self)
            defer { objc_sync_exit(ProductSalesFor1997.self) }
            do {
                return ProductSalesFor1997.categoryName_
            }
        }
        set(value) {
            objc_sync_enter(ProductSalesFor1997.self)
            defer { objc_sync_exit(ProductSalesFor1997.self) }
            do {
                ProductSalesFor1997.categoryName_ = value
            }
        }
    }

    open var categoryName: String? {
        get {
            return StringValue.optional(self.optionalValue(for: ProductSalesFor1997.categoryName))
        }
        set(value) {
            self.setOptionalValue(for: ProductSalesFor1997.categoryName, to: StringValue.of(optional: value))
        }
    }

    open func copy() -> ProductSalesFor1997 {
        return CastRequired<ProductSalesFor1997>.from(self.copyEntity())
    }

    open override var isProxy: Bool {
        return true
    }

    open class func key(categoryName: String?, productName: String?) -> EntityKey {
        return EntityKey().with(name: "CategoryName", value: StringValue.of(optional: categoryName)).with(name: "ProductName", value: StringValue.of(optional: productName))
    }

    open var old: ProductSalesFor1997 {
        return CastRequired<ProductSalesFor1997>.from(self.oldEntity)
    }

    open class var productName: Property {
        get {
            objc_sync_enter(ProductSalesFor1997.self)
            defer { objc_sync_exit(ProductSalesFor1997.self) }
            do {
                return ProductSalesFor1997.productName_
            }
        }
        set(value) {
            objc_sync_enter(ProductSalesFor1997.self)
            defer { objc_sync_exit(ProductSalesFor1997.self) }
            do {
                ProductSalesFor1997.productName_ = value
            }
        }
    }

    open var productName: String? {
        get {
            return StringValue.optional(self.optionalValue(for: ProductSalesFor1997.productName))
        }
        set(value) {
            self.setOptionalValue(for: ProductSalesFor1997.productName, to: StringValue.of(optional: value))
        }
    }

    open class var productSales: Property {
        get {
            objc_sync_enter(ProductSalesFor1997.self)
            defer { objc_sync_exit(ProductSalesFor1997.self) }
            do {
                return ProductSalesFor1997.productSales_
            }
        }
        set(value) {
            objc_sync_enter(ProductSalesFor1997.self)
            defer { objc_sync_exit(ProductSalesFor1997.self) }
            do {
                ProductSalesFor1997.productSales_ = value
            }
        }
    }

    open var productSales: BigDecimal? {
        get {
            return DecimalValue.optional(self.optionalValue(for: ProductSalesFor1997.productSales))
        }
        set(value) {
            self.setOptionalValue(for: ProductSalesFor1997.productSales, to: DecimalValue.of(optional: value))
        }
    }
}
