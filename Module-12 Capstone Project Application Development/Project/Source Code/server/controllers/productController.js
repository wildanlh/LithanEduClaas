const Product = require("../models/product");
const Supplier = require("../models/supplier");
const CurrentStock = require("../models/currentStok");
const addStock = require("../middlewares/stock");

// Create a new Product
const addProduct = async (req, res, next) => {
  const product = new Product({
    supplier: req.body.supplier,
    productCode: req.body.productCode,
    productName: req.body.productName,
    quantity: req.body.quantity,
    costPrice: req.body.costPrice,
    sellingPrice: req.body.sellingPrice,
    brand: req.body.brand,
    image: req.body.image,
  });

  try {
    const newProduct = await product.save();
    await addStock(newProduct, next);
    res.status(201).json(newProduct);
  } catch (err) {
    res.status(400).json({ message: err.message });
  }
};

// Get all Products
const getAllProduct = async (req, res) => {
  try {
    const products = await Product.find();
    res.send(products);
  } catch (error) {
    res.status(500).send(error);
  }
};

// Get a Product by id
const getByIdProduct = async (req, res) => {
  try {
    const product = await Product.findById(req.params.id);
    if (!product) {
      return res.status(404).send();
    }
    res.send(product);
  } catch (error) {
    res.status(500).send(error);
  }
};

// Update a Product by id
const updateProduct = async (req, res, next) => {
  try {
    const product = await Product.findById(req.params.id);
    if (!product) {
      return res.status(404).send();
    }

    // Check if the product quantity has changed
    const oldQuantity = product.quantity;
    const newQuantity = req.body.quantity;
    const quantityDiff = newQuantity - oldQuantity;

    // Update the product document
    if (req.body.supplier) {
      const supplier = await Supplier.findById(req.body.supplier);
      if (!supplier) {
        throw new Error("Supplier not found");
      }
      product.supplier = supplier._id;
    }

    if (req.body.productCode) {
      product.productCode = req.body.productCode;
    }

    if (req.body.productName) {
      product.productName = req.body.productName;
    }

    if (req.body.quantity) {
      product.quantity = req.body.quantity;
    }

    if (req.body.costPrice) {
      product.costPrice = req.body.costPrice;
    }

    if (req.body.sellingPrice) {
      product.sellingPrice = req.body.sellingPrice;
    }

    if (req.body.brand) {
      product.brand = req.body.brand;
    }

    if (req.body.image) {
      product.image = req.body.image;
    }

    const updatedProduct = await product.save();

    // If the quantity has changed, update the CurrentStock document
    if (quantityDiff !== 0) {
      const currentStock = await CurrentStock.findOne({
        productCode: product.productCode,
      });
      if (!currentStock) {
        throw new Error("Current stock not found");
      }
      currentStock.quantity += quantityDiff;
      currentStock.revenue += quantityDiff * product.sellingPrice;
      await currentStock.save();
    }

    res.json(updatedProduct);
  } catch (err) {
    next(err);
  }
};

// Delete a Product by id
const deleteProduct = async (req, res) => {
  try {
    const product = await Product.findByIdAndDelete(req.params.id);
    if (!product) {
      return res.status(404).send();
    }
    // Delete the corresponding CurrentStock document
    await CurrentStock.findOneAndDelete({ productCode: product.productCode });
    res.send(product);
    res.status(201).json({ message: "Product Deleted" });
  } catch (error) {
    res.status(500).send(error);
  }
};

module.exports = {
  addProduct,
  getAllProduct,
  getByIdProduct,
  updateProduct,
  deleteProduct,
};
