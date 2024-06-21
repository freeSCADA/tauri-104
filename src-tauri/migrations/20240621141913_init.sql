-- Add migration script here
-- SQLite v3:

-- Table for a generic device.
-- Can be customizable via migrations,
-- by adding a column to the table and relating it 
-- with a dictionary table.
CREATE TABLE devices (
  id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
  description TEXT NOT NULL,
  extras TEXT
);

-- Table for a generic meter.
-- Due to the existence of 
-- multimeters, there will be 
-- another table for the magnitudes 
-- these meters can measure.
CREATE TABLE meters (
  id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
  description TEXT NOT NULL,
  extras TEXT
);

CREATE TABLE connectors (
  id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,

);

-- Table for a generic device command.
-- It does have nothing to do with any 
-- protocols or specifications. It is 
-- entirely up to the user to configure 
-- this part properly.
CREATE TABLE commands (
  id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
  description TEXT NOT NULL,
  extras TEXT
);

-- Table for a generic device state.
-- It has nothing to do with any protocol 
-- or specification. It is up to the user 
-- to configure this part properly.
CREATE TABLE states (
  id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
  description TEXT NOT NULL,
  extras TEXT
);

-- Table for a generic device alarm.
-- It is not related to any specific 
-- protocol or device. It is up to the
-- user to configure this part correctly.
CREATE TABLE alarms (
  id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
  description TEXT NOT NULL,
  extras TEXT
);

CREATE TABLE magnitudes (
  id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
  description TEXT NOT NULL,
  unit TEXT NOT NULL
);
