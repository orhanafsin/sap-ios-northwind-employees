// # Proxy Compiler 18.9.4-973a4d-20181128

import Foundation
import SAPOData

open class AlphabeticalListOfProduct: EntityValue {
    public required init(from decoder: Decoder) throws {
        try super.init(from: decoder)
    }

    private static var productID_: Property = NorthwindEntitiesMetadata.EntityTypes.alphabeticalListOfProduct.property(withName: "ProductID")

    private static var productName_: Property = NorthwindEntitiesMetadata.EntityTypes.alphabeticalListOfProduct.property(withName: "ProductName")

    private static var supplierID_: Property = NorthwindEntitiesMetadata.EntityTypes.alphabeticalListOfProduct.property(withName: "SupplierID")

    private static var categoryID_: Property = NorthwindEntitiesMetadata.EntityTypes.alphabeticalListOfProduct.property(withName: "CategoryID")

    private static var quantityPerUnit_: Property = NorthwindEntitiesMetadata.EntityTypes.alphabeticalListOfProduct.property(withName: "QuantityPerUnit")

    private static var unitPrice_: Property = NorthwindEntitiesMetadata.EntityTypes.alphabeticalListOfProduct.property(withName: "UnitPrice")

    private static var unitsInStock_: Property = NorthwindEntitiesMetadata.EntityTypes.alphabeticalListOfProduct.property(withName: "UnitsInStock")

    private static var unitsOnOrder_: Property = NorthwindEntitiesMetadata.EntityTypes.alphabeticalListOfProduct.property(withName: "UnitsOnOrder")

    private static var reorderLevel_: Property = NorthwindEntitiesMetadata.EntityTypes.alphabeticalListOfProduct.property(withName: "ReorderLevel")

    private static var discontinued_: Property = NorthwindEntitiesMetadata.EntityTypes.alphabeticalListOfProduct.property(withName: "Discontinued")

    private static var categoryName_: Property = NorthwindEntitiesMetadata.EntityTypes.alphabeticalListOfProduct.property(withName: "CategoryName")

    public init(withDefaults: Bool = true) {
        super.init(withDefaults: withDefaults, type: NorthwindEntitiesMetadata.EntityTypes.alphabeticalListOfProduct)
    }

    open class func array(from: EntityValueList) -> Array<AlphabeticalListOfProduct> {
        return ArrayConverter.convert(from.toArray(), Array<AlphabeticalListOfProduct>())
    }

    open class var categoryID: Property {
        get {
            objc_sync_enter(AlphabeticalListOfProduct.self)
            defer { objc_sync_exit(AlphabeticalListOfProduct.self) }
            do {
                return AlphabeticalListOfProduct.categoryID_
            }
        }
        set(value) {
            objc_sync_enter(AlphabeticalListOfProduct.self)
            defer { objc_sync_exit(AlphabeticalListOfProduct.self) }
            do {
                AlphabeticalListOfProduct.categoryID_ = value
            }
        }
    }

    open var categoryID: Int? {
        get {
            return IntValue.optional(self.optionalValue(for: AlphabeticalListOfProduct.categoryID))
        }
        set(value) {
            self.setOptionalValue(for: AlphabeticalListOfProduct.categoryID, to: IntValue.of(optional: value))
        }
    }

    open class var categoryName: Property {
        get {
            objc_sync_enter(AlphabeticalListOfProduct.self)
            defer { objc_sync_exit(AlphabeticalListOfProduct.self) }
            do {
                return AlphabeticalListOfProduct.categoryName_
            }
        }
        set(value) {
            objc_sync_enter(AlphabeticalListOfProduct.self)
            defer { objc_sync_exit(AlphabeticalListOfProduct.self) }
            do {
                AlphabeticalListOfProduct.categoryName_ = value
            }
        }
    }

    open var categoryName: String? {
        get {
            return StringValue.optional(self.optionalValue(for: AlphabeticalListOfProduct.categoryName))
        }
        set(value) {
            self.setOptionalValue(for: AlphabeticalListOfProduct.categoryName, to: StringValue.of(optional: value))
        }
    }

    open func copy() -> AlphabeticalListOfProduct {
        return CastRequired<AlphabeticalListOfProduct>.from(self.copyEntity())
    }

    open class var discontinued: Property {
        get {
            objc_sync_enter(AlphabeticalListOfProduct.self)
            defer { objc_sync_exit(AlphabeticalListOfProduct.self) }
            do {
                return AlphabeticalListOfProduct.discontinued_
            }
        }
        set(value) {
            objc_sync_enter(AlphabeticalListOfProduct.self)
            defer { objc_sync_exit(AlphabeticalListOfProduct.self) }
            do {
                AlphabeticalListOfProduct.discontinued_ = value
            }
        }
    }

    open var discontinued: Bool? {
        get {
            return BooleanValue.optional(self.optionalValue(for: AlphabeticalListOfProduct.discontinued))
        }
        set(value) {
            self.setOptionalValue(for: AlphabeticalListOfProduct.discontinued, to: BooleanValue.of(optional: value))
        }
    }

    open override var isProxy: Bool {
        return true
    }

    open class func key(categoryName: String?, discontinued: Bool?, productID: Int?, productName: String?) -> EntityKey {
        return EntityKey().with(name: "CategoryName", value: StringValue.of(optional: categoryName)).with(name: "Discontinued", value: BooleanValue.of(optional: discontinued)).with(name: "ProductID", value: IntValue.of(optional: productID)).with(name: "ProductName", value: StringValue.of(optional: productName))
    }

    open var old: AlphabeticalListOfProduct {
        return CastRequired<AlphabeticalListOfProduct>.from(self.oldEntity)
    }

    open class var productID: Property {
        get {
            objc_sync_enter(AlphabeticalListOfProduct.self)
            defer { objc_sync_exit(AlphabeticalListOfProduct.self) }
            do {
                return AlphabeticalListOfProduct.productID_
            }
        }
        set(value) {
            objc_sync_enter(AlphabeticalListOfProduct.self)
            defer { objc_sync_exit(AlphabeticalListOfProduct.self) }
            do {
                AlphabeticalListOfProduct.productID_ = value
            }
        }
    }

    open var productID: Int? {
        get {
            return IntValue.optional(self.optionalValue(for: AlphabeticalListOfProduct.productID))
        }
        set(value) {
            self.setOptionalValue(for: AlphabeticalListOfProduct.productID, to: IntValue.of(optional: value))
        }
    }

    open class var productName: Property {
        get {
            objc_sync_enter(AlphabeticalListOfProduct.self)
            defer { objc_sync_exit(AlphabeticalListOfProduct.self) }
            do {
                return AlphabeticalListOfProduct.productName_
            }
        }
        set(value) {
            objc_sync_enter(AlphabeticalListOfProduct.self)
            defer { objc_sync_exit(AlphabeticalListOfProduct.self) }
            do {
                AlphabeticalListOfProduct.productName_ = value
            }
        }
    }

    open var productName: String? {
        get {
            return StringValue.optional(self.optionalValue(for: AlphabeticalListOfProduct.productName))
        }
        set(value) {
            self.setOptionalValue(for: AlphabeticalListOfProduct.productName, to: StringValue.of(optional: value))
        }
    }

    open class var quantityPerUnit: Property {
        get {
            objc_sync_enter(AlphabeticalListOfProduct.self)
            defer { objc_sync_exit(AlphabeticalListOfProduct.self) }
            do {
                return AlphabeticalListOfProduct.quantityPerUnit_
            }
        }
        set(value) {
            objc_sync_enter(AlphabeticalListOfProduct.self)
            defer { objc_sync_exit(AlphabeticalListOfProduct.self) }
            do {
                AlphabeticalListOfProduct.quantityPerUnit_ = value
            }
        }
    }

    open var quantityPerUnit: String? {
        get {
            return StringValue.optional(self.optionalValue(for: AlphabeticalListOfProduct.quantityPerUnit))
        }
        set(value) {
            self.setOptionalValue(for: AlphabeticalListOfProduct.quantityPerUnit, to: StringValue.of(optional: value))
        }
    }

    open class var reorderLevel: Property {
        get {
            objc_sync_enter(AlphabeticalListOfProduct.self)
            defer { objc_sync_exit(AlphabeticalListOfProduct.self) }
            do {
                return AlphabeticalListOfProduct.reorderLevel_
            }
        }
        set(value) {
            objc_sync_enter(AlphabeticalListOfProduct.self)
            defer { objc_sync_exit(AlphabeticalListOfProduct.self) }
            do {
                AlphabeticalListOfProduct.reorderLevel_ = value
            }
        }
    }

    open var reorderLevel: Int? {
        get {
            return ShortValue.optional(self.optionalValue(for: AlphabeticalListOfProduct.reorderLevel))
        }
        set(value) {
            self.setOptionalValue(for: AlphabeticalListOfProduct.reorderLevel, to: ShortValue.of(optional: value))
        }
    }

    open class var supplierID: Property {
        get {
            objc_sync_enter(AlphabeticalListOfProduct.self)
            defer { objc_sync_exit(AlphabeticalListOfProduct.self) }
            do {
                return AlphabeticalListOfProduct.supplierID_
            }
        }
        set(value) {
            objc_sync_enter(AlphabeticalListOfProduct.self)
            defer { objc_sync_exit(AlphabeticalListOfProduct.self) }
            do {
                AlphabeticalListOfProduct.supplierID_ = value
            }
        }
    }

    open var supplierID: Int? {
        get {
            return IntValue.optional(self.optionalValue(for: AlphabeticalListOfProduct.supplierID))
        }
        set(value) {
            self.setOptionalValue(for: AlphabeticalListOfProduct.supplierID, to: IntValue.of(optional: value))
        }
    }

    open class var unitPrice: Property {
        get {
            objc_sync_enter(AlphabeticalListOfProduct.self)
            defer { objc_sync_exit(AlphabeticalListOfProduct.self) }
            do {
                return AlphabeticalListOfProduct.unitPrice_
            }
        }
        set(value) {
            objc_sync_enter(AlphabeticalListOfProduct.self)
            defer { objc_sync_exit(AlphabeticalListOfProduct.self) }
            do {
                AlphabeticalListOfProduct.unitPrice_ = value
            }
        }
    }

    open var unitPrice: BigDecimal? {
        get {
            return DecimalValue.optional(self.optionalValue(for: AlphabeticalListOfProduct.unitPrice))
        }
        set(value) {
            self.setOptionalValue(for: AlphabeticalListOfProduct.unitPrice, to: DecimalValue.of(optional: value))
        }
    }

    open class var unitsInStock: Property {
        get {
            objc_sync_enter(AlphabeticalListOfProduct.self)
            defer { objc_sync_exit(AlphabeticalListOfProduct.self) }
            do {
                return AlphabeticalListOfProduct.unitsInStock_
            }
        }
        set(value) {
            objc_sync_enter(AlphabeticalListOfProduct.self)
            defer { objc_sync_exit(AlphabeticalListOfProduct.self) }
            do {
                AlphabeticalListOfProduct.unitsInStock_ = value
            }
        }
    }

    open var unitsInStock: Int? {
        get {
            return ShortValue.optional(self.optionalValue(for: AlphabeticalListOfProduct.unitsInStock))
        }
        set(value) {
            self.setOptionalValue(for: AlphabeticalListOfProduct.unitsInStock, to: ShortValue.of(optional: value))
        }
    }

    open class var unitsOnOrder: Property {
        get {
            objc_sync_enter(AlphabeticalListOfProduct.self)
            defer { objc_sync_exit(AlphabeticalListOfProduct.self) }
            do {
                return AlphabeticalListOfProduct.unitsOnOrder_
            }
        }
        set(value) {
            objc_sync_enter(AlphabeticalListOfProduct.self)
            defer { objc_sync_exit(AlphabeticalListOfProduct.self) }
            do {
                AlphabeticalListOfProduct.unitsOnOrder_ = value
            }
        }
    }

    open var unitsOnOrder: Int? {
        get {
            return ShortValue.optional(self.optionalValue(for: AlphabeticalListOfProduct.unitsOnOrder))
        }
        set(value) {
            self.setOptionalValue(for: AlphabeticalListOfProduct.unitsOnOrder, to: ShortValue.of(optional: value))
        }
    }
}
