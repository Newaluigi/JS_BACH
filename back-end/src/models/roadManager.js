const AbstractManager = require("./AbstractManager");

class bachroadsManager extends AbstractManager {
  constructor() {
    super({ table: "bachroads" });
  }

  insert(bachroads) {
    return this.database.query(
      `insert into ${this.table} (address, picture) values (?, ?)`,
      [bachroads.address, bachroads.picture]
    );
  }

  update(bachroads) {
    return this.database.query(
      `update ${this.table} set address = ?, picture = ? where id = ?`,
      [bachroads.address, bachroads.picture, bachroads.id]
    );
  }
}

// deleteRoadManager(id) {
//   return this.database.query(`delete from orders WHERE id = ?`, [id])
// }

module.exports = bachroadsManager;
