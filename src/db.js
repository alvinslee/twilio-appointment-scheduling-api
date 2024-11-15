import pg from "pg";

const query = async (sql, args) => {
  const pool = new pg.Pool({
    connectionString: process.env.DATABASE_URL,
    ssl: {
      rejectUnauthorized: false,
    },
  });
  const result = await pool.query(sql, args);
  return result.rows;
};

export default {
  query,
};
