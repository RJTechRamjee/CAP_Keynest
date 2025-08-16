
using { keynest.db as db } from '../db/schema';

service UserManagement {
    entity Users as projection on db.Users 
    {
        *
    }
    
        excluding {
            createdBy
    };
    entity CurrentUser as projection on db.CurrentUser;
}

service ObjectManagement {

    entity Objects as projection on db.Objects;

}