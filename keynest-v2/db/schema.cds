namespace keynest.db;
using { cuid , managed , Country , Currency , sap.common.CodeList } from '@sap/cds/common';

entity CurrentUser : managed {
 key username : Association to one Users
}

entity  Users : cuid , managed {
    username : String(20) @mandatory;
    firstName : String(20) @mandatory;
    lastName : String(20) @mandatory;
    email  : String(50) @mandatory;
    phone : String(20);
    address : Address;
    shortIntro : String(200) ;
    detailedIntro: String;
    salary : Integer; // check
    currency : Currency;
    userRole : Association to UserRoles @mandatory ;

}

type Address {
    streetName : String(30);
    houseNo : Int16;
    city : String(30);
    postalCode : String(6);
    country : Country;
}

entity UserRoles : CodeList {
   key code : String enum {
    Tenant      = 'TENANT';
    Landlord   = 'LNDLRD';
    Buyer  = 'BUYER';
    Seller = 'SELLER';

  };
}

entity Objects : cuid , managed {
  objectID : Integer;
  objectType : String(5); // enum
  objectName : String(100);
  objectDescription : String;
  purpose : String(5); // enum,
  state : String(30);
  country : Country ;
  availableFrom : Date;
  minimumContractPeriod : Integer;  // in months
  address : Address;
}