const express = require("express");
const {
  addProduct,
  deleteProduct,
  getAllProduct,
} = require("../controllers/ProductController");
const router = express.Router();

router.post("/add", addProduct);
router.get("/", getAllProduct);
router.delete("/:id", deleteProduct);

module.exports = router;
