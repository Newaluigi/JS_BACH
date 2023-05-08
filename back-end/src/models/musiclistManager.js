const AbstractManager = require("./AbstractManager");

class musiclistManager extends AbstractManager {
  constructor() {
    super({ table: "musiclist" });
  }

  insert(musiclist) {
    return this.database.query(
      `insert into ${this.table} (title, spotify_link, is_favorite) values (?, ?, ?)`,
      [musiclist.title, musiclist.spotify_link, musiclist.is_favorite]
    );
  }

  update(musiclist) {
    return this.database.query(
      `update ${this.table} set title = ?, spotify_link = ?, is_favorite where id = ?`,
      [
        musiclist.title,
        musiclist.spotify_link,
        musiclist.is_favorite,
        musiclist.id,
      ]
    );
  }
}

// deleteMusiclist(id) {
//   return this.database.query(`delete from orders WHERE id = ?`, [id])
// }

module.exports = musiclistManager;
