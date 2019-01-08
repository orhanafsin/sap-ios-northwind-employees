// # Proxy Compiler 18.9.4-973a4d-20181128

import Foundation
import SAPOData

open class Category: EntityValue {
    public required init(from decoder: Decoder) throws {
        try super.init(from: decoder)
    }

    private static var categoryID_: Property = NorthwindEntitiesMetadata.EntityTypes.category.property(withName: "CategoryID")

    private static var categoryName_: Property = NorthwindEntitiesMetadata.EntityTypes.category.property(withName: "CategoryName")

    private static var description_: Property = NorthwindEntitiesMetadata.EntityTypes.category.property(withName: "Description")

    private static var picture_: Property = NorthwindEntitiesMetadata.EntityTypes.category.property(withName: "Picture")

    private static var products_: Property = NorthwindEntitiesMetadata.EntityTypes.category.property(withName: "Products")

    public init(withDefaults: Bool = true) {
        super.init(withDefaults: withDefaults, type: NorthwindEntitiesMetadata.EntityTypes.category)
    }

    open class func array(from: EntityValueList) -> Array<Category> {
        return ArrayConverter.convert(from.toArray(), Array<Category>())
    }

    open class var categoryID: Property {
        get {
            objc_sync_enter(Category.self)
            defer { objc_sync_exit(Category.self) }
            do {
                return Category.categoryID_
            }
        }
        set(value) {
            objc_sync_enter(Category.self)
            defer { objc_sync_exit(Category.self) }
            do {
                Category.categoryID_ = value
            }
        }
    }

    open var categoryID: Int? {
        get {
            return IntValue.optional(self.optionalValue(for: Category.categoryID))
        }
        set(value) {
            self.setOptionalValue(for: Category.categoryID, to: IntValue.of(optional: value))
        }
    }

    open class var categoryName: Property {
        get {
            objc_sync_enter(Category.self)
            defer { objc_sync_exit(Category.self) }
            do {
                return Category.categoryName_
            }
        }
        set(value) {
            objc_sync_enter(Category.self)
            defer { objc_sync_exit(Category.self) }
            do {
                Category.categoryName_ = value
            }
        }
    }

    open var categoryName: String? {
        get {
            return StringValue.optional(self.optionalValue(for: Category.categoryName))
        }
        set(value) {
            self.setOptionalValue(for: Category.categoryName, to: StringValue.of(optional: value))
        }
    }

    open func copy() -> Category {
        return CastRequired<Category>.from(self.copyEntity())
    }

    open class var description: Property {
        get {
            objc_sync_enter(Category.self)
            defer { objc_sync_exit(Category.self) }
            do {
                return Category.description_
            }
        }
        set(value) {
            objc_sync_enter(Category.self)
            defer { objc_sync_exit(Category.self) }
            do {
                Category.description_ = value
            }
        }
    }

    open var description: String? {
        get {
            return StringValue.optional(self.optionalValue(for: Category.description))
        }
        set(value) {
            self.setOptionalValue(for: Category.description, to: StringValue.of(optional: value))
        }
    }

    open override var isProxy: Bool {
        return true
    }

    open class func key(categoryID: Int?) -> EntityKey {
        return EntityKey().with(name: "CategoryID", value: IntValue.of(optional: categoryID))
    }

    open var old: Category {
        return CastRequired<Category>.from(self.oldEntity)
    }

    open class var picture: Property {
        get {
            objc_sync_enter(Category.self)
            defer { objc_sync_exit(Category.self) }
            do {
                return Category.picture_
            }
        }
        set(value) {
            objc_sync_enter(Category.self)
            defer { objc_sync_exit(Category.self) }
            do {
                Category.picture_ = value
            }
        }
    }

    open var picture: Data? {
        get {
            return BinaryValue.optional(self.optionalValue(for: Category.picture))
        }
        set(value) {
            self.setOptionalValue(for: Category.picture, to: BinaryValue.of(optional: value))
        }
    }

    open class var products: Property {
        get {
            objc_sync_enter(Category.self)
            defer { objc_sync_exit(Category.self) }
            do {
                return Category.products_
            }
        }
        set(value) {
            objc_sync_enter(Category.self)
            defer { objc_sync_exit(Category.self) }
            do {
                Category.products_ = value
            }
        }
    }

    open var products: Array<Product> {
        get {
            return ArrayConverter.convert(EntityValueList.castRequired(self.requiredValue(for: Category.products)).toArray(), Array<Product>())
        }
        set(value) {
            Category.products.setEntityList(in: self, to: EntityValueList.fromArray(ArrayConverter.convert(value, Array<EntityValue>())))
        }
    }
}
