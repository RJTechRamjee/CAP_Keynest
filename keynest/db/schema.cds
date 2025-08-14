namespace keynest.db;
using { cuid , managed , Country , Currency , sap.common.CodeList } from '@sap/cds/common';


entity  Users : cuid , managed {
    username : String(20);
    firstName : String(20);
    lastName : String(20);
    email  : String(50);
    phone : String(20);
    address : Address;
    shortIntro : String(200);
    detailedIntro: String;
    salary : Integer; // check
    currency : Currency;
    userType : Association to UserRoles;


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

