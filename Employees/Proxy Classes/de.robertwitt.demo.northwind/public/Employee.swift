// # Proxy Compiler 18.9.4-973a4d-20181128

import Foundation
import SAPOData

open class Employee: EntityValue {
    public required init(from decoder: Decoder) throws {
        try super.init(from: decoder)
    }

    private static var employeeID_: Property = NorthwindEntitiesMetadata.EntityTypes.employee.property(withName: "EmployeeID")

    private static var lastName_: Property = NorthwindEntitiesMetadata.EntityTypes.employee.property(withName: "LastName")

    private static var firstName_: Property = NorthwindEntitiesMetadata.EntityTypes.employee.property(withName: "FirstName")

    private static var title_: Property = NorthwindEntitiesMetadata.EntityTypes.employee.property(withName: "Title")

    private static var titleOfCourtesy_: Property = NorthwindEntitiesMetadata.EntityTypes.employee.property(withName: "TitleOfCourtesy")

    private static var birthDate_: Property = NorthwindEntitiesMetadata.EntityTypes.employee.property(withName: "BirthDate")

    private static var hireDate_: Property = NorthwindEntitiesMetadata.EntityTypes.employee.property(withName: "HireDate")

    private static var address_: Property = NorthwindEntitiesMetadata.EntityTypes.employee.property(withName: "Address")

    private static var city_: Property = NorthwindEntitiesMetadata.EntityTypes.employee.property(withName: "City")

    private static var region_: Property = NorthwindEntitiesMetadata.EntityTypes.employee.property(withName: "Region")

    private static var postalCode_: Property = NorthwindEntitiesMetadata.EntityTypes.employee.property(withName: "PostalCode")

    private static var country_: Property = NorthwindEntitiesMetadata.EntityTypes.employee.property(withName: "Country")

    private static var homePhone_: Property = NorthwindEntitiesMetadata.EntityTypes.employee.property(withName: "HomePhone")

    private static var extension_: Property = NorthwindEntitiesMetadata.EntityTypes.employee.property(withName: "Extension")

    private static var photo_: Property = NorthwindEntitiesMetadata.EntityTypes.employee.property(withName: "Photo")

    private static var notes_: Property = NorthwindEntitiesMetadata.EntityTypes.employee.property(withName: "Notes")

    private static var reportsTo_: Property = NorthwindEntitiesMetadata.EntityTypes.employee.property(withName: "ReportsTo")

    private static var photoPath_: Property = NorthwindEntitiesMetadata.EntityTypes.employee.property(withName: "PhotoPath")

    private static var employees1_: Property = NorthwindEntitiesMetadata.EntityTypes.employee.property(withName: "Employees1")

    private static var employee1_: Property = NorthwindEntitiesMetadata.EntityTypes.employee.property(withName: "Employee1")

    private static var orders_: Property = NorthwindEntitiesMetadata.EntityTypes.employee.property(withName: "Orders")

    private static var territories_: Property = NorthwindEntitiesMetadata.EntityTypes.employee.property(withName: "Territories")

    public init(withDefaults: Bool = true) {
        super.init(withDefaults: withDefaults, type: NorthwindEntitiesMetadata.EntityTypes.employee)
    }

    open class var `extension`: Property {
        get {
            objc_sync_enter(Employee.self)
            defer { objc_sync_exit(Employee.self) }
            do {
                return Employee.extension_
            }
        }
        set(value) {
            objc_sync_enter(Employee.self)
            defer { objc_sync_exit(Employee.self) }
            do {
                Employee.extension_ = value
            }
        }
    }

    open var `extension`: String? {
        get {
            return StringValue.optional(self.optionalValue(for: Employee.extension))
        }
        set(value) {
            self.setOptionalValue(for: Employee.extension, to: StringValue.of(optional: value))
        }
    }

    open class var address: Property {
        get {
            objc_sync_enter(Employee.self)
            defer { objc_sync_exit(Employee.self) }
            do {
                return Employee.address_
            }
        }
        set(value) {
            objc_sync_enter(Employee.self)
            defer { objc_sync_exit(Employee.self) }
            do {
                Employee.address_ = value
            }
        }
    }

    open var address: String? {
        get {
            return StringValue.optional(self.optionalValue(for: Employee.address))
        }
        set(value) {
            self.setOptionalValue(for: Employee.address, to: StringValue.of(optional: value))
        }
    }

    open class func array(from: EntityValueList) -> Array<Employee> {
        return ArrayConverter.convert(from.toArray(), Array<Employee>())
    }

    open class var birthDate: Property {
        get {
            objc_sync_enter(Employee.self)
            defer { objc_sync_exit(Employee.self) }
            do {
                return Employee.birthDate_
            }
        }
        set(value) {
            objc_sync_enter(Employee.self)
            defer { objc_sync_exit(Employee.self) }
            do {
                Employee.birthDate_ = value
            }
        }
    }

    open var birthDate: LocalDateTime? {
        get {
            return LocalDateTime.castOptional(self.optionalValue(for: Employee.birthDate))
        }
        set(value) {
            self.setOptionalValue(for: Employee.birthDate, to: value)
        }
    }

    open class var city: Property {
        get {
            objc_sync_enter(Employee.self)
            defer { objc_sync_exit(Employee.self) }
            do {
                return Employee.city_
            }
        }
        set(value) {
            objc_sync_enter(Employee.self)
            defer { objc_sync_exit(Employee.self) }
            do {
                Employee.city_ = value
            }
        }
    }

    open var city: String? {
        get {
            return StringValue.optional(self.optionalValue(for: Employee.city))
        }
        set(value) {
            self.setOptionalValue(for: Employee.city, to: StringValue.of(optional: value))
        }
    }

    open func copy() -> Employee {
        return CastRequired<Employee>.from(self.copyEntity())
    }

    open class var country: Property {
        get {
            objc_sync_enter(Employee.self)
            defer { objc_sync_exit(Employee.self) }
            do {
                return Employee.country_
            }
        }
        set(value) {
            objc_sync_enter(Employee.self)
            defer { objc_sync_exit(Employee.self) }
            do {
                Employee.country_ = value
            }
        }
    }

    open var country: String? {
        get {
            return StringValue.optional(self.optionalValue(for: Employee.country))
        }
        set(value) {
            self.setOptionalValue(for: Employee.country, to: StringValue.of(optional: value))
        }
    }

    open class var employee1: Property {
        get {
            objc_sync_enter(Employee.self)
            defer { objc_sync_exit(Employee.self) }
            do {
                return Employee.employee1_
            }
        }
        set(value) {
            objc_sync_enter(Employee.self)
            defer { objc_sync_exit(Employee.self) }
            do {
                Employee.employee1_ = value
            }
        }
    }

    open var employee1: Employee? {
        get {
            return CastOptional<Employee>.from(self.optionalValue(for: Employee.employee1))
        }
        set(value) {
            self.setOptionalValue(for: Employee.employee1, to: value)
        }
    }

    open class var employeeID: Property {
        get {
            objc_sync_enter(Employee.self)
            defer { objc_sync_exit(Employee.self) }
            do {
                return Employee.employeeID_
            }
        }
        set(value) {
            objc_sync_enter(Employee.self)
            defer { objc_sync_exit(Employee.self) }
            do {
                Employee.employeeID_ = value
            }
        }
    }

    open var employeeID: Int? {
        get {
            return IntValue.optional(self.optionalValue(for: Employee.employeeID))
        }
        set(value) {
            self.setOptionalValue(for: Employee.employeeID, to: IntValue.of(optional: value))
        }
    }

    open class var employees1: Property {
        get {
            objc_sync_enter(Employee.self)
            defer { objc_sync_exit(Employee.self) }
            do {
                return Employee.employees1_
            }
        }
        set(value) {
            objc_sync_enter(Employee.self)
            defer { objc_sync_exit(Employee.self) }
            do {
                Employee.employees1_ = value
            }
        }
    }

    open var employees1: Array<Employee> {
        get {
            return ArrayConverter.convert(EntityValueList.castRequired(self.requiredValue(for: Employee.employees1)).toArray(), Array<Employee>())
        }
        set(value) {
            Employee.employees1.setEntityList(in: self, to: EntityValueList.fromArray(ArrayConverter.convert(value, Array<EntityValue>())))
        }
    }

    open class var firstName: Property {
        get {
            objc_sync_enter(Employee.self)
            defer { objc_sync_exit(Employee.self) }
            do {
                return Employee.firstName_
            }
        }
        set(value) {
            objc_sync_enter(Employee.self)
            defer { objc_sync_exit(Employee.self) }
            do {
                Employee.firstName_ = value
            }
        }
    }

    open var firstName: String? {
        get {
            return StringValue.optional(self.optionalValue(for: Employee.firstName))
        }
        set(value) {
            self.setOptionalValue(for: Employee.firstName, to: StringValue.of(optional: value))
        }
    }

    open class var hireDate: Property {
        get {
            objc_sync_enter(Employee.self)
            defer { objc_sync_exit(Employee.self) }
            do {
                return Employee.hireDate_
            }
        }
        set(value) {
            objc_sync_enter(Employee.self)
            defer { objc_sync_exit(Employee.self) }
            do {
                Employee.hireDate_ = value
            }
        }
    }

    open var hireDate: LocalDateTime? {
        get {
            return LocalDateTime.castOptional(self.optionalValue(for: Employee.hireDate))
        }
        set(value) {
            self.setOptionalValue(for: Employee.hireDate, to: value)
        }
    }

    open class var homePhone: Property {
        get {
            objc_sync_enter(Employee.self)
            defer { objc_sync_exit(Employee.self) }
            do {
                return Employee.homePhone_
            }
        }
        set(value) {
            objc_sync_enter(Employee.self)
            defer { objc_sync_exit(Employee.self) }
            do {
                Employee.homePhone_ = value
            }
        }
    }

    open var homePhone: String? {
        get {
            return StringValue.optional(self.optionalValue(for: Employee.homePhone))
        }
        set(value) {
            self.setOptionalValue(for: Employee.homePhone, to: StringValue.of(optional: value))
        }
    }

    open override var isProxy: Bool {
        return true
    }

    open class func key(employeeID: Int?) -> EntityKey {
        return EntityKey().with(name: "EmployeeID", value: IntValue.of(optional: employeeID))
    }

    open class var lastName: Property {
        get {
            objc_sync_enter(Employee.self)
            defer { objc_sync_exit(Employee.self) }
            do {
                return Employee.lastName_
            }
        }
        set(value) {
            objc_sync_enter(Employee.self)
            defer { objc_sync_exit(Employee.self) }
            do {
                Employee.lastName_ = value
            }
        }
    }

    open var lastName: String? {
        get {
            return StringValue.optional(self.optionalValue(for: Employee.lastName))
        }
        set(value) {
            self.setOptionalValue(for: Employee.lastName, to: StringValue.of(optional: value))
        }
    }

    open class var notes: Property {
        get {
            objc_sync_enter(Employee.self)
            defer { objc_sync_exit(Employee.self) }
            do {
                return Employee.notes_
            }
        }
        set(value) {
            objc_sync_enter(Employee.self)
            defer { objc_sync_exit(Employee.self) }
            do {
                Employee.notes_ = value
            }
        }
    }

    open var notes: String? {
        get {
            return StringValue.optional(self.optionalValue(for: Employee.notes))
        }
        set(value) {
            self.setOptionalValue(for: Employee.notes, to: StringValue.of(optional: value))
        }
    }

    open var old: Employee {
        return CastRequired<Employee>.from(self.oldEntity)
    }

    open class var orders: Property {
        get {
            objc_sync_enter(Employee.self)
            defer { objc_sync_exit(Employee.self) }
            do {
                return Employee.orders_
            }
        }
        set(value) {
            objc_sync_enter(Employee.self)
            defer { objc_sync_exit(Employee.self) }
            do {
                Employee.orders_ = value
            }
        }
    }

    open var orders: Array<Order> {
        get {
            return ArrayConverter.convert(EntityValueList.castRequired(self.requiredValue(for: Employee.orders)).toArray(), Array<Order>())
        }
        set(value) {
            Employee.orders.setEntityList(in: self, to: EntityValueList.fromArray(ArrayConverter.convert(value, Array<EntityValue>())))
        }
    }

    open class var photo: Property {
        get {
            objc_sync_enter(Employee.self)
            defer { objc_sync_exit(Employee.self) }
            do {
                return Employee.photo_
            }
        }
        set(value) {
            objc_sync_enter(Employee.self)
            defer { objc_sync_exit(Employee.self) }
            do {
                Employee.photo_ = value
            }
        }
    }

    open var photo: Data? {
        get {
            return BinaryValue.optional(self.optionalValue(for: Employee.photo))
        }
        set(value) {
            self.setOptionalValue(for: Employee.photo, to: BinaryValue.of(optional: value))
        }
    }

    open class var photoPath: Property {
        get {
            objc_sync_enter(Employee.self)
            defer { objc_sync_exit(Employee.self) }
            do {
                return Employee.photoPath_
            }
        }
        set(value) {
            objc_sync_enter(Employee.self)
            defer { objc_sync_exit(Employee.self) }
            do {
                Employee.photoPath_ = value
            }
        }
    }

    open var photoPath: String? {
        get {
            return StringValue.optional(self.optionalValue(for: Employee.photoPath))
        }
        set(value) {
            self.setOptionalValue(for: Employee.photoPath, to: StringValue.of(optional: value))
        }
    }

    open class var postalCode: Property {
        get {
            objc_sync_enter(Employee.self)
            defer { objc_sync_exit(Employee.self) }
            do {
                return Employee.postalCode_
            }
        }
        set(value) {
            objc_sync_enter(Employee.self)
            defer { objc_sync_exit(Employee.self) }
            do {
                Employee.postalCode_ = value
            }
        }
    }

    open var postalCode: String? {
        get {
            return StringValue.optional(self.optionalValue(for: Employee.postalCode))
        }
        set(value) {
            self.setOptionalValue(for: Employee.postalCode, to: StringValue.of(optional: value))
        }
    }

    open class var region: Property {
        get {
            objc_sync_enter(Employee.self)
            defer { objc_sync_exit(Employee.self) }
            do {
                return Employee.region_
            }
        }
        set(value) {
            objc_sync_enter(Employee.self)
            defer { objc_sync_exit(Employee.self) }
            do {
                Employee.region_ = value
            }
        }
    }

    open var region: String? {
        get {
            return StringValue.optional(self.optionalValue(for: Employee.region))
        }
        set(value) {
            self.setOptionalValue(for: Employee.region, to: StringValue.of(optional: value))
        }
    }

    open class var reportsTo: Property {
        get {
            objc_sync_enter(Employee.self)
            defer { objc_sync_exit(Employee.self) }
            do {
                return Employee.reportsTo_
            }
        }
        set(value) {
            objc_sync_enter(Employee.self)
            defer { objc_sync_exit(Employee.self) }
            do {
                Employee.reportsTo_ = value
            }
        }
    }

    open var reportsTo: Int? {
        get {
            return IntValue.optional(self.optionalValue(for: Employee.reportsTo))
        }
        set(value) {
            self.setOptionalValue(for: Employee.reportsTo, to: IntValue.of(optional: value))
        }
    }

    open class var territories: Property {
        get {
            objc_sync_enter(Employee.self)
            defer { objc_sync_exit(Employee.self) }
            do {
                return Employee.territories_
            }
        }
        set(value) {
            objc_sync_enter(Employee.self)
            defer { objc_sync_exit(Employee.self) }
            do {
                Employee.territories_ = value
            }
        }
    }

    open var territories: Array<Territory> {
        get {
            return ArrayConverter.convert(EntityValueList.castRequired(self.requiredValue(for: Employee.territories)).toArray(), Array<Territory>())
        }
        set(value) {
            Employee.territories.setEntityList(in: self, to: EntityValueList.fromArray(ArrayConverter.convert(value, Array<EntityValue>())))
        }
    }

    open class var title: Property {
        get {
            objc_sync_enter(Employee.self)
            defer { objc_sync_exit(Employee.self) }
            do {
                return Employee.title_
            }
        }
        set(value) {
            objc_sync_enter(Employee.self)
            defer { objc_sync_exit(Employee.self) }
            do {
                Employee.title_ = value
            }
        }
    }

    open var title: String? {
        get {
            return StringValue.optional(self.optionalValue(for: Employee.title))
        }
        set(value) {
            self.setOptionalValue(for: Employee.title, to: StringValue.of(optional: value))
        }
    }

    open class var titleOfCourtesy: Property {
        get {
            objc_sync_enter(Employee.self)
            defer { objc_sync_exit(Employee.self) }
            do {
                return Employee.titleOfCourtesy_
            }
        }
        set(value) {
            objc_sync_enter(Employee.self)
            defer { objc_sync_exit(Employee.self) }
            do {
                Employee.titleOfCourtesy_ = value
            }
        }
    }

    open var titleOfCourtesy: String? {
        get {
            return StringValue.optional(self.optionalValue(for: Employee.titleOfCourtesy))
        }
        set(value) {
            self.setOptionalValue(for: Employee.titleOfCourtesy, to: StringValue.of(optional: value))
        }
    }
}
