// # Proxy Compiler 18.9.4-973a4d-20181128

import Foundation
import SAPOData

open class ProductsByCategory: EntityValue {
    public required init(from decoder: Decoder) throws {
        try super.init(from: decoder)
    }

    private static var categoryName_: Property = NorthwindEntitiesMetadata.EntityTypes.productsByCategory.property(withName: "CategoryName")

    private static var productName_: Property = NorthwindEntitiesMetadata.EntityTypes.productsByCategory.property(withName: "ProductName")

    private static var quantityPerUnit_: Property = NorthwindEntitiesMetadata.EntityTypes.productsByCategory.property(withName: "QuantityPerUnit")

    private static var unitsInStock_: Property = NorthwindEntitiesMetadata.EntityTypes.productsByCategory.property(withName: "UnitsInStock")

    private static var discontinued_: Property = NorthwindEntitiesMetadata.EntityTypes.productsByCategory.property(withName: "Discontinued")

    public init(withDefaults: Bool = true) {
        super.init(withDefaults: withDefaults, type: NorthwindEntitiesMetadata.EntityTypes.productsByCategory)
    }

    open class func array(from: EntityValueList) -> Array<ProductsByCategory> {
        return ArrayConverter.convert(from.toArray(), Array<ProductsByCategory>())
    }

    open class var categoryName: Property {
        get {
            objc_sync_enter(ProductsByCategory.self)
            defer { objc_sync_exit(ProductsByCategory.self) }
            do {
                return ProductsByCategory.categoryName_
            }
        }
        set(value) {
            objc_sync_enter(ProductsByCategory.self)
            defer { objc_sync_exit(ProductsByCategory.self) }
            do {
                ProductsByCategory.categoryName_ = value
            }
        }
    }

    open var categoryName: String? {
        get {
            return StringValue.optional(self.optionalValue(for: ProductsByCategory.categoryName))
        }
        set(value) {
            self.setOptionalValue(for: ProductsByCategory.categoryName, to: StringValue.of(optional: value))
        }
    }

    open func copy() -> ProductsByCategory {
        return CastRequired<ProductsByCategory>.from(self.copyEntity())
    }

    open class var discontinued: Property {
        get {
            objc_sync_enter(ProductsByCategory.self)
            defer { objc_sync_exit(ProductsByCategory.self) }
            do {
                return ProductsByCategory.discontinued_
            }
        }
        set(value) {
            objc_sync_enter(ProductsByCategory.self)
            defer { objc_sync_exit(ProductsByCategory.self) }
            do {
                ProductsByCategory.discontinued_ = value
            }
        }
    }

    open var discontinued: Bool? {
        get {
            return BooleanValue.optional(self.optionalValue(for: ProductsByCategory.discontinued))
        }
        set(value) {
            self.setOptionalValue(for: ProductsByCategory.discontinued, to: BooleanValue.of(optional: value))
        }
    }

    open override var isProxy: Bool {
        return true
    }

    open class func key(categoryName: String?, discontinued: Bool?, productName: String?) -> EntityKey {
        return EntityKey().with(name: "CategoryName", value: StringValue.of(optional: categoryName)).with(name: "Discontinued", value: BooleanValue.of(optional: discontinued)).with(name: "ProductName", value: StringValue.of(optional: productName))
    }

    open var old: ProductsByCategory {
        return CastRequired<ProductsByCategory>.from(self.oldEntity)
    }

    open class var productName: Property {
        get {
            objc_sync_enter(ProductsByCategory.self)
            defer { objc_sync_exit(ProductsByCategory.self) }
            do {
                return ProductsByCategory.productName_
            }
        }
        set(value) {
            objc_sync_enter(ProductsByCategory.self)
            defer { objc_sync_exit(ProductsByCategory.self) }
            do {
                ProductsByCategory.productName_ = value
            }
        }
    }

    open var productName: String? {
        get {
            return StringValue.optional(self.optionalValue(for: ProductsByCategory.productName))
        }
        set(value) {
            self.setOptionalValue(for: ProductsByCategory.productName, to: StringValue.of(optional: value))
        }
    }

    open class var quantityPerUnit: Property {
        get {
            objc_sync_enter(ProductsByCategory.self)
            defer { objc_sync_exit(ProductsByCategory.self) }
            do {
                return ProductsByCategory.quantityPerUnit_
            }
        }
        set(value) {
            objc_sync_enter(ProductsByCategory.self)
            defer { objc_sync_exit(ProductsByCategory.self) }
            do {
                ProductsByCategory.quantityPerUnit_ = value
            }
        }
    }

    open var quantityPerUnit: String? {
        get {
            return StringValue.optional(self.optionalValue(for: ProductsByCategory.quantityPerUnit))
        }
        set(value) {
            self.setOptionalValue(for: ProductsByCategory.quantityPerUnit, to: StringValue.of(optional: value))
        }
    }

    open class var unitsInStock: Property {
        get {
            objc_sync_enter(ProductsByCategory.self)
            defer { objc_sync_exit(ProductsByCategory.self) }
            do {
                return ProductsByCategory.unitsInStock_
            }
        }
        set(value) {
            objc_sync_enter(ProductsByCategory.self)
            defer { objc_sync_exit(ProductsByCategory.self) }
            do {
                ProductsByCategory.unitsInStock_ = value
            }
        }
    }

    open var unitsInStock: Int? {
        get {
            return ShortValue.optional(self.optionalValue(for: ProductsByCategory.unitsInStock))
        }
        set(value) {
            self.setOptionalValue(for: ProductsByCategory.unitsInStock, to: ShortValue.of(optional: value))
        }
    }
}
