const express = require("express");
const {
  addSupplier,
  updateSupplier,
  getAllSupplier,
  getByIdSupplier,
  deleteSupplier,
} = require("../controllers/supplierController");
const authToken = require("../middlewares/authToken");
const checkRole = require("../middlewares/checkRole");
const router = express.Router();

router.post("/add", authToken, addSupplier);
router.patch("/:id", authToken, updateSupplier);
router.get("/", authToken, getAllSupplier);
router.get("/:id", authToken, getByIdSupplier);
router.delete("/:id", authToken, deleteSupplier);

module.exports = router;
