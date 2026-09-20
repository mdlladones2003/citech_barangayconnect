INSERT INTO users (
    first_name,
    last_name,
    email,
    password,
    phone,
    address,
    role,
    status,
    email_verified_at
) VALUES (
    'System',
    'Administrator',
    'admin@barangay.local',
    '$2y$10$REPLACE_WITH_PASSWORD_HASH',
    NULL,
    NULL,
    'admin',
    'active',
    CURRENT_TIMESTAMP
);