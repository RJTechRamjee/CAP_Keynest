using {keynest.db as db} from '../db/schema';
//using {sap} from '@sap/cds-common-content';

service UserManagement {
    @odata.draft.enabled: true
    entity Users       as
        projection on db.Users {
            *
        }
        excluding {
            createdBy
        };

    entity CurrentUser as projection on db.CurrentUser;
}

service ObjectManagement {

    entity Objects   as projection on db.Objects;

 //   @readonly
 //   entity Languages as projection on sap.common.Languages;

}