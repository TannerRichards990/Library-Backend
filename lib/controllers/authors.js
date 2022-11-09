const { Router } = require('express');

const Author = require('../models/Author');

module.exports = Router()
  .get('/:id', async (req, res) => {
    const author = await Author.getAuthorById(req.params.id);
    res.json(author);
  });
