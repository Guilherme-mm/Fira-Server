const postgresPool = require('../PostgresPool');
const MissingMethodOverride = require('../../exceptions/MissingMethodOverride');

class PostgresModel {
    constructor(){
    }

    mapToModel(row){
        throw new MissingMethodOverride('Missing method <mapToModel> override in child class');
    }

    async all(){
        const sql = `SELECT * FROM ${this.schema}.${this.table}`;
        const { rows } = await postgresPool.query(sql);

        const modelList = [];
        rows.forEach(row => {
            modelList.push(this.mapToModel(row));
        });

        return modelList;
    }
}

module.exports = PostgresModel;