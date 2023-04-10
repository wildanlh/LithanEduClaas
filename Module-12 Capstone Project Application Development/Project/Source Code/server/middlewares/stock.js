const CurrentStock = require("../models/currentStok");

const addStock = async (doc, next) => {
  try {
    // Check if the product already exists in the CurrentStock collection
    let currentStock = await CurrentStock.findOne({
      productCode: doc.productCode,
    });

    // If it doesn't exist, create a new CurrentStock document
    if (!currentStock) {
      currentStock = new CurrentStock({
        productCode: doc.productCode,
        productName: doc.productName,
        quantity: doc.quantity,
        costPrice: doc.costPrice,
        sellingPrice: doc.sellingPrice,
        brand: doc.brand,
      });
    } else {
      // If it already exists, update the quantity and revenue fields
      currentStock.quantity += doc.quantity;
    }

    // Save the CurrentStock document
    await currentStock.save();

    next();
  } catch (err) {
    next(err);
  }
};

module.exports = addStock;
