const mongoose = require("mongoose");

const currentStockSchema = new mongoose.Schema({
  date: {
    type: Date,
    required: true,
  },
  productCode: {
    type: mongoose.Schema.Types.String,
    ref: "Product",
  },
  productName: {
    type: mongoose.Schema.Types.String,
    ref: "Product",
  },
  quantity: {
    type: mongoose.Schema.Types.Number,
    ref: "Product",
  },
  costPrice: {
    type: mongoose.Schema.Types.Number,
    ref: "Product",
  },
  sellingPrice: {
    type: mongoose.Schema.Types.Number,
    ref: "Product",
  },
  brand: {
    type: mongoose.Schema.Types.String,
    ref: "Product",
  },
});

module.exports = mongoose.model("CurrentStock", currentStockSchema);
