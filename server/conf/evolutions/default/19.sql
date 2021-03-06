
# --- !Ups

CREATE TYPE BLOCK_SYNCHRONIZATION_STATE AS ENUM (
  'STORING_BLOCK',
  'STORING_BLOCK_DATA',
  'STORING_TRANSACTIONS',
  'STORING_OUTPUTS',
  'STORING_INPUTS',
  'SPENDING_OUTPUTS',
  'STORING_ADDRESS_TRANSACTION_DETAILS',
  'UPDATING_TPOS_CONTRACTS',
  'UPDATING_BALANCES'
);

-- stores the progress while syncing a block from a node
CREATE TABLE block_synchronization_progress(
  blockhash BLOCKHASH_TYPE NOT NULL PRIMARY KEY,
  state BLOCK_SYNCHRONIZATION_STATE NOT NULL
);


# --- !Downs

DROP TABLE block_synchronization_progress;
DROP TYPE BLOCK_SYNCHRONIZATION_STATE;
