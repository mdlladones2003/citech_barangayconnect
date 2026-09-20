CREATE TABLE request_documents (
    id BIGINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,

    request_id BIGINT UNSIGNED NOT NULL,

    document_type VARCHAR(150) NOT NULL,

    original_name VARCHAR(255) NOT NULL,

    file_name VARCHAR(255) NOT NULL,

    file_path VARCHAR(500) NOT NULL,

    mime_type VARCHAR(100) NULL,

    file_size BIGINT UNSIGNED NULL,

    verification_status ENUM(
        'pending',
        'verified',
        'rejected'
    ) NOT NULL DEFAULT 'pending',

    remarks TEXT NULL,

    uploaded_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,

    verified_by BIGINT UNSIGNED NULL,

    verified_at TIMESTAMP NULL,

    CONSTRAINT fk_documents_request
        FOREIGN KEY (request_id)
        REFERENCES service_requests(id)
        ON DELETE CASCADE,

    CONSTRAINT fk_documents_verifier
        FOREIGN KEY (verified_by)
        REFERENCES users(id)
        ON DELETE SET NULL,

    INDEX idx_documents_request (request_id),
    INDEX idx_documents_status (verification_status)
);