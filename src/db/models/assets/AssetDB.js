const PostgresModel = require('../PostgresModel');
const Asset = require('../../../model/assets/Asset');
const ResourceOwner = require('../../../model/authentication/ResourceOwner');

class AssetDB extends PostgresModel {
    constructor(){
        super();
        this.schema = "public";
        this.table = "assets_tb";
    }

    mapToModel(row){
        const asset = new Asset();
        asset.setId(row.id);
        asset.setName(row.name);

        const resourceOwner = new ResourceOwner();
        resourceOwner.setId(row.resource_owner)
        asset.setResourceOwner(resourceOwner);

        return asset;
    }
}

module.exports = AssetDB;