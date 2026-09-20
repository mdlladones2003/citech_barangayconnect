CREATE TABLE notifications (
    id BIGINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,

    user_id BIGINT UNSIGNED NOT NULL,

    request_id BIGINT UNSIGNED NULL,

    title VARCHAR(255) NOT NULL,

    message TEXT NOT NULL,

    type ENUM(
        'info',
        'success',
        'warning',
        'error'
    ) NOT NULL DEFAULT 'info',

    is_read BOOLEAN NOT NULL DEFAULT FALSE,

    read_at TIMESTAMP NULL,

    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT fk_notifications_user
        FOREIGN KEY (user_id)
        REFERENCES users(id)
        ON DELETE CASCADE,

    CONSTRAINT fk_notifications_request
        FOREIGN KEY (request_id)
        REFERENCES service_requests(id)
        ON DELETE CASCADE,

    INDEX idx_notifications_user (user_id),
    INDEX idx_notifications_read (is_read),
    INDEX idx_notifications_date (created_at)
);