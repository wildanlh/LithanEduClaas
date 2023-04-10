const User = require("../models/User");
const bcrypt = require("bcryptjs");

// Create a new User
const addUser = async (req, res) => {
  const {
    email,
    password,
    firstName,
    lastName,
    phone,
    address,
    city,
    country,
    image,
  } = req.body;

  if (
    !email ||
    !password ||
    !firstName ||
    !lastName ||
    !phone ||
    !address ||
    !city ||
    !country
  ) {
    return res.status(400).json({ message: "All fields are required" });
  }

  const existingUser = await User.findOne({ email });
  if (existingUser) {
    return res.status(409).json({ message: "Email already exists" });
  }

  const hashedPassword = await bcrypt.hash(password, 10);

  const user = new User({
    email,
    password: hashedPassword,
    role,
    firstName,
    lastName,
    phone,
    address,
    city,
    country,
    image,
  });

  try {
    await user.save();
    res.status(201).json({ message: "User created successfully" });
  } catch (error) {
    res.status(500).json({ message: "Failed to create user" });
  }
};

// Get all Users
const getAllUser = async (req, res) => {
  try {
    const users = await User.find({});
    res.send(users);
  } catch (err) {
    res.status(500).send({ error: "Server error" });
  }
};

// Get a User by id
const getByIdUser = async (req, res) => {
  try {
    const user = await User.findById(req.params.id);
    if (!user) {
      return res.status(404).send();
    }
    res.send(user);
  } catch (err) {
    res.status(500).send({ error: "Server error" });
  }
};

// Update a User by id
const updateUser = async (req, res) => {
  const updates = Object.keys(req.body);
  const allowedUpdates = [
    "email",
    "password",
    "role",
    "firstName",
    "lastName",
    "phone",
    "address",
    "city",
    "country",
    "image",
  ];
  const isValidOperation = updates.every((update) =>
    allowedUpdates.includes(update)
  );

  if (!isValidOperation) {
    return res.status(400).send({ error: "Invalid updates" });
  }

  try {
    const user = await User.findById(req.params.id);
    if (!user) {
      return res.status(404).send();
    }

    updates.forEach((update) => (user[update] = req.body[update]));
    await user.save();

    res.send(user);
  } catch (err) {
    res.status(400).send({ error: err.message });
  }
};

// Delete a User by id
const deleteUser = async (req, res) => {
  try {
    const user = await User.findByIdAndDelete(req.params.id);
    if (!user) {
      return res.status(404).send();
    }
    res.send(user);
  } catch (err) {
    res.status(500).send({ error: "Server error" });
  }
};

module.exports = {
  addUser,
  getAllUser,
  getByIdUser,
  updateUser,
  deleteUser,
};
