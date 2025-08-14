
using { keynest.db as db } from '../db/schema';

service UserManagement {
    entity Users as projection on db.Users ;
}
