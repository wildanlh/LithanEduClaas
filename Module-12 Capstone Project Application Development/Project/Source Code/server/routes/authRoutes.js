const express = require("express");
const { register, login } = require("../controllers/authController");
const { upload } = require("../utils/fileUpload");
const router = express.Router();

router.post("/register", upload.single("image"), register);
router.post("/login", login);

module.exports = router;
