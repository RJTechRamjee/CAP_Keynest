
const cds = require('@sap/cds');

class AdminService extends cds.ApplicationService{

    init() {
        const { Users } = this.entities;

        this.before(['CREATE','UPDATE'],Users,this.validateUserData);

        return super.init();
    }
    validateUserData(req) {
        const userData = req.data;
        if (!userData.shortIntro)
        {
            req.error('Short introduction is mandatory!!!')
        }
    }
}

module.exports = AdminService;