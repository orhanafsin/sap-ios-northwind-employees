// # Proxy Compiler 18.9.4-973a4d-20181128

import Foundation
import SAPOData

open class Product: EntityValue {
    public required init(from decoder: Decoder) throws {
        try super.init(from: decoder)
    }

    private static var productID_: Property = NorthwindEntitiesMetadata.EntityTypes.product.property(withName: "ProductID")

    private static var productName_: Property = NorthwindEntitiesMetadata.EntityTypes.product.property(withName: "ProductName")

    private static var supplierID_: Property = NorthwindEntitiesMetadata.EntityTypes.product.property(withName: "SupplierID")

    private static var categoryID_: Property = NorthwindEntitiesMetadata.EntityTypes.product.property(withName: "CategoryID")

    private static var quantityPerUnit_: Property = NorthwindEntitiesMetadata.EntityTypes.product.property(withName: "QuantityPerUnit")

    private static var unitPrice_: Property = NorthwindEntitiesMetadata.EntityTypes.product.property(withName: "UnitPrice")

    private static var unitsInStock_: Property = NorthwindEntitiesMetadata.EntityTypes.product.property(withName: "UnitsInStock")

    private static var unitsOnOrder_: Property = NorthwindEntitiesMetadata.EntityTypes.product.property(withName: "UnitsOnOrder")

    private static var reorderLevel_: Property = NorthwindEntitiesMetadata.EntityTypes.product.property(withName: "ReorderLevel")

    private static var discontinued_: Property = NorthwindEntitiesMetadata.EntityTypes.product.property(withName: "Discontinued")

    private static var category_: Property = NorthwindEntitiesMetadata.EntityTypes.product.property(withName: "Category")

    private static var orderDetails_: Property = NorthwindEntitiesMetadata.EntityTypes.product.property(withName: "Order_Details")

    private static var supplier_: Property = NorthwindEntitiesMetadata.EntityTypes.product.property(withName: "Supplier")

    public init(withDefaults: Bool = true) {
        super.init(withDefaults: withDefaults, type: NorthwindEntitiesMetadata.EntityTypes.product)
    }

    open class func array(from: EntityValueList) -> Array<Product> {
        return ArrayConverter.convert(from.toArray(), Array<Product>())
    }

    open class var category: Property {
        get {
            objc_sync_enter(Product.self)
            defer { objc_sync_exit(Product.self) }
            do {
                return Product.category_
            }
        }
        set(value) {
            objc_sync_enter(Product.self)
            defer { objc_sync_exit(Product.self) }
            do {
                Product.category_ = value
            }
        }
    }

    open var category: Category? {
        get {
            return CastOptional<Category>.from(self.optionalValue(for: Product.category))
        }
        set(value) {
            self.setOptionalValue(for: Product.category, to: value)
        }
    }

    open class var categoryID: Property {
        get {
            objc_sync_enter(Product.self)
            defer { objc_sync_exit(Product.self) }
            do {
                return Product.categoryID_
            }
        }
        set(value) {
            objc_sync_enter(Product.self)
            defer { objc_sync_exit(Product.self) }
            do {
                Product.categoryID_ = value
            }
        }
    }

    open var categoryID: Int? {
        get {
            return IntValue.optional(self.optionalValue(for: Product.categoryID))
        }
        set(value) {
            self.setOptionalValue(for: Product.categoryID, to: IntValue.of(optional: value))
        }
    }

    open func copy() -> Product {
        return CastRequired<Product>.from(self.copyEntity())
    }

    open class var discontinued: Property {
        get {
            objc_sync_enter(Product.self)
            defer { objc_sync_exit(Product.self) }
            do {
                return Product.discontinued_
            }
        }
        set(value) {
            objc_sync_enter(Product.self)
            defer { objc_sync_exit(Product.self) }
            do {
                Product.discontinued_ = value
            }
        }
    }

    open var discontinued: Bool? {
        get {
            return BooleanValue.optional(self.optionalValue(for: Product.discontinued))
        }
        set(value) {
            self.setOptionalValue(for: Product.discontinued, to: BooleanValue.of(optional: value))
        }
    }

    open override var isProxy: Bool {
        return true
    }

    open class func key(productID: Int?) -> EntityKey {
        return EntityKey().with(name: "ProductID", value: IntValue.of(optional: productID))
    }

    open var old: Product {
        return CastRequired<Product>.from(self.oldEntity)
    }

    open class var orderDetails: Property {
        get {
            objc_sync_enter(Product.self)
            defer { objc_sync_exit(Product.self) }
            do {
                return Product.orderDetails_
            }
        }
        set(value) {
            objc_sync_enter(Product.self)
            defer { objc_sync_exit(Product.self) }
            do {
                Product.orderDetails_ = value
            }
        }
    }

    open var orderDetails: Array<OrderDetail> {
        get {
            return ArrayConverter.convert(EntityValueList.castRequired(self.requiredValue(for: Product.orderDetails)).toArray(), Array<OrderDetail>())
        }
        set(value) {
            Product.orderDetails.setEntityList(in: self, to: EntityValueList.fromArray(ArrayConverter.convert(value, Array<EntityValue>())))
        }
    }

    open class var productID: Property {
        get {
            objc_sync_enter(Product.self)
            defer { objc_sync_exit(Product.self) }
            do {
                return Product.productID_
            }
        }
        set(value) {
            objc_sync_enter(Product.self)
            defer { objc_sync_exit(Product.self) }
            do {
                Product.productID_ = value
            }
        }
    }

    open var productID: Int? {
        get {
            return IntValue.optional(self.optionalValue(for: Product.productID))
        }
        set(value) {
            self.setOptionalValue(for: Product.productID, to: IntValue.of(optional: value))
        }
    }

    open class var productName: Property {
        get {
            objc_sync_enter(Product.self)
            defer { objc_sync_exit(Product.self) }
            do {
                return Product.productName_
            }
        }
        set(value) {
            objc_sync_enter(Product.self)
            defer { objc_sync_exit(Product.self) }
            do {
                Product.productName_ = value
            }
        }
    }

    open var productName: String? {
        get {
            return StringValue.optional(self.optionalValue(for: Product.productName))
        }
        set(value) {
            self.setOptionalValue(for: Product.productName, to: StringValue.of(optional: value))
        }
    }

    open class var quantityPerUnit: Property {
        get {
            objc_sync_enter(Product.self)
            defer { objc_sync_exit(Product.self) }
            do {
                return Product.quantityPerUnit_
            }
        }
        set(value) {
            objc_sync_enter(Product.self)
            defer { objc_sync_exit(Product.self) }
            do {
                Product.quantityPerUnit_ = value
            }
        }
    }

    open var quantityPerUnit: String? {
        get {
            return StringValue.optional(self.optionalValue(for: Product.quantityPerUnit))
        }
        set(value) {
            self.setOptionalValue(for: Product.quantityPerUnit, to: StringValue.of(optional: value))
        }
    }

    open class var reorderLevel: Property {
        get {
            objc_sync_enter(Product.self)
            defer { objc_sync_exit(Product.self) }
            do {
                return Product.reorderLevel_
            }
        }
        set(value) {
            objc_sync_enter(Product.self)
            defer { objc_sync_exit(Product.self) }
            do {
                Product.reorderLevel_ = value
            }
        }
    }

    open var reorderLevel: Int? {
        get {
            return ShortValue.optional(self.optionalValue(for: Product.reorderLevel))
        }
        set(value) {
            self.setOptionalValue(for: Product.reorderLevel, to: ShortValue.of(optional: value))
        }
    }

    open class var supplier: Property {
        get {
            objc_sync_enter(Product.self)
            defer { objc_sync_exit(Product.self) }
            do {
                return Product.supplier_
            }
        }
        set(value) {
            objc_sync_enter(Product.self)
            defer { objc_sync_exit(Product.self) }
            do {
                Product.supplier_ = value
            }
        }
    }

    open var supplier: Supplier? {
        get {
            return CastOptional<Supplier>.from(self.optionalValue(for: Product.supplier))
        }
        set(value) {
            self.setOptionalValue(for: Product.supplier, to: value)
        }
    }

    open class var supplierID: Property {
        get {
            objc_sync_enter(Product.self)
            defer { objc_sync_exit(Product.self) }
            do {
                return Product.supplierID_
            }
        }
        set(value) {
            objc_sync_enter(Product.self)
            defer { objc_sync_exit(Product.self) }
            do {
                Product.supplierID_ = value
            }
        }
    }

    open var supplierID: Int? {
        get {
            return IntValue.optional(self.optionalValue(for: Product.supplierID))
        }
        set(value) {
            self.setOptionalValue(for: Product.supplierID, to: IntValue.of(optional: value))
        }
    }

    open class var unitPrice: Property {
        get {
            objc_sync_enter(Product.self)
            defer { objc_sync_exit(Product.self) }
            do {
                return Product.unitPrice_
            }
        }
        set(value) {
            objc_sync_enter(Product.self)
            defer { objc_sync_exit(Product.self) }
            do {
                Product.unitPrice_ = value
            }
        }
    }

    open var unitPrice: BigDecimal? {
        get {
            return DecimalValue.optional(self.optionalValue(for: Product.unitPrice))
        }
        set(value) {
            self.setOptionalValue(for: Product.unitPrice, to: DecimalValue.of(optional: value))
        }
    }

    open class var unitsInStock: Property {
        get {
            objc_sync_enter(Product.self)
            defer { objc_sync_exit(Product.self) }
            do {
                return Product.unitsInStock_
            }
        }
        set(value) {
            objc_sync_enter(Product.self)
            defer { objc_sync_exit(Product.self) }
            do {
                Product.unitsInStock_ = value
            }
        }
    }

    open var unitsInStock: Int? {
        get {
            return ShortValue.optional(self.optionalValue(for: Product.unitsInStock))
        }
        set(value) {
            self.setOptionalValue(for: Product.unitsInStock, to: ShortValue.of(optional: value))
        }
    }

    open class var unitsOnOrder: Property {
        get {
            objc_sync_enter(Product.self)
            defer { objc_sync_exit(Product.self) }
            do {
                return Product.unitsOnOrder_
            }
        }
        set(value) {
            objc_sync_enter(Product.self)
            defer { objc_sync_exit(Product.self) }
            do {
                Product.unitsOnOrder_ = value
            }
        }
    }

    open var unitsOnOrder: Int? {
        get {
            return ShortValue.optional(self.optionalValue(for: Product.unitsOnOrder))
        }
        set(value) {
            self.setOptionalValue(for: Product.unitsOnOrder, to: ShortValue.of(optional: value))
        }
    }
}
