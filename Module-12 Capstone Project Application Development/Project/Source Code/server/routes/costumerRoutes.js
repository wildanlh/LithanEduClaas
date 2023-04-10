const express = require("express");
const {
  addCostumer,
  updateCostumer,
  getAllCostumer,
  getByIdCostumer,
  deleteCostumer,
} = require("../controllers/CostumerController");
const authToken = require("../middlewares/authToken");
const checkRole = require("../middlewares/checkRole");
const router = express.Router();

router.post("/add", authToken, addCostumer);
router.patch("/:id", authToken, updateCostumer);
router.get("/", authToken, getAllCostumer);
router.get("/:id", authToken, getByIdCostumer);
router.delete("/:id", authToken, deleteCostumer);

module.exports = router;
