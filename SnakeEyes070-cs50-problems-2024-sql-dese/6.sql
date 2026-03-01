SELECT name FROM schools WHERE id iN (SELECT school_id FROM graduation_rates WHERE graduated = 100);
