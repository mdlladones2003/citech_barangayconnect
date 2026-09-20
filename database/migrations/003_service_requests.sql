CREATE TABLE service_requests (
    id BIGINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,

    tracking_number VARCHAR(50) NOT NULL UNIQUE,

    user_id BIGINT UNSIGNED NOT NULL,
    service_id BIGINT UNSIGNED NOT NULL,

    purpose TEXT NULL,

    request_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,

    preferred_date DATE NULL,

    status ENUM(
        'submitted',
        'under_review',
        'additional_info',
        'approved',
        'rejected',
        'ready_for_release',
        'completed',
        'cancelled'
    ) NOT NULL DEFAULT 'submitted',

    remarks TEXT NULL,

    processed_by BIGINT UNSIGNED NULL,

    processed_at TIMESTAMP NULL,

    completed_at TIMESTAMP NULL,

    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
        ON UPDATE CURRENT_TIMESTAMP,

    CONSTRAINT fk_requests_user
        FOREIGN KEY (user_id)
        REFERENCES users(id)
        ON DELETE CASCADE,

    CONSTRAINT fk_requests_service
        FOREIGN KEY (service_id)
        REFERENCES services(id)
        ON DELETE RESTRICT,

    CONSTRAINT fk_requests_processor
        FOREIGN KEY (processed_by)
        REFERENCES users(id)
        ON DELETE SET NULL,

    INDEX idx_requests_user (user_id),
    INDEX idx_requests_service (service_id),
    INDEX idx_requests_status (status),
    INDEX idx_requests_date (request_date)
);