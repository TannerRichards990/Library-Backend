const pool = require('../utils/pool');

module.exports = class Author {
  constructor(row) {
    this.id = row.id;
    this.name = row.name;
    this.dob = row.dob;
    this.pob = row.pob;
    this.books = row.books;
  }

  static async getAuthors() {
    const { rows } = await pool.query('SELECT * FROM authors');

    return rows.map((row) => new Author(row));
  }

  static async getAuthorById(id) {
    const { rows } = await pool.query(
      'SELECT * FROM authors WHERE id=$1',
      [id]
    );

    return new Author(rows[0]);
  }

}; 

