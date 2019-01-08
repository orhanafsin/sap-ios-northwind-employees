// # Proxy Compiler 18.9.4-973a4d-20181128

import Foundation
import SAPOData

open class CategorySalesFor1997: EntityValue {
    public required init(from decoder: Decoder) throws {
        try super.init(from: decoder)
    }

    private static var categoryName_: Property = NorthwindEntitiesMetadata.EntityTypes.categorySalesFor1997.property(withName: "CategoryName")

    private static var categorySales_: Property = NorthwindEntitiesMetadata.EntityTypes.categorySalesFor1997.property(withName: "CategorySales")

    public init(withDefaults: Bool = true) {
        super.init(withDefaults: withDefaults, type: NorthwindEntitiesMetadata.EntityTypes.categorySalesFor1997)
    }

    open class func array(from: EntityValueList) -> Array<CategorySalesFor1997> {
        return ArrayConverter.convert(from.toArray(), Array<CategorySalesFor1997>())
    }

    open class var categoryName: Property {
        get {
            objc_sync_enter(CategorySalesFor1997.self)
            defer { objc_sync_exit(CategorySalesFor1997.self) }
            do {
                return CategorySalesFor1997.categoryName_
            }
        }
        set(value) {
            objc_sync_enter(CategorySalesFor1997.self)
            defer { objc_sync_exit(CategorySalesFor1997.self) }
            do {
                CategorySalesFor1997.categoryName_ = value
            }
        }
    }

    open var categoryName: String? {
        get {
            return StringValue.optional(self.optionalValue(for: CategorySalesFor1997.categoryName))
        }
        set(value) {
            self.setOptionalValue(for: CategorySalesFor1997.categoryName, to: StringValue.of(optional: value))
        }
    }

    open class var categorySales: Property {
        get {
            objc_sync_enter(CategorySalesFor1997.self)
            defer { objc_sync_exit(CategorySalesFor1997.self) }
            do {
                return CategorySalesFor1997.categorySales_
            }
        }
        set(value) {
            objc_sync_enter(CategorySalesFor1997.self)
            defer { objc_sync_exit(CategorySalesFor1997.self) }
            do {
                CategorySalesFor1997.categorySales_ = value
            }
        }
    }

    open var categorySales: BigDecimal? {
        get {
            return DecimalValue.optional(self.optionalValue(for: CategorySalesFor1997.categorySales))
        }
        set(value) {
            self.setOptionalValue(for: CategorySalesFor1997.categorySales, to: DecimalValue.of(optional: value))
        }
    }

    open func copy() -> CategorySalesFor1997 {
        return CastRequired<CategorySalesFor1997>.from(self.copyEntity())
    }

    open override var isProxy: Bool {
        return true
    }

    open class func key(categoryName: String?) -> EntityKey {
        return EntityKey().with(name: "CategoryName", value: StringValue.of(optional: categoryName))
    }

    open var old: CategorySalesFor1997 {
        return CastRequired<CategorySalesFor1997>.from(self.oldEntity)
    }
}
