INSERT INTO services (
    name,
    slug,
    description,
    requirements,
    processing_days,
    fee,
    status
) VALUES

(
    'Barangay Clearance',
    'barangay-clearance',
    'Request for a Barangay Clearance.',
    'Valid government-issued ID',
    1,
    50.00,
    'active'
),

(
    'Certificate of Residency',
    'certificate-of-residency',
    'Certification confirming that the applicant is a resident of the barangay.',
    'Valid government-issued ID; Proof of residence',
    1,
    30.00,
    'active'
),

(
    'Certificate of Indigency',
    'certificate-of-indigency',
    'Certification for qualified residents requiring proof of indigency.',
    'Valid government-issued ID; Supporting documents if required',
    1,
    0.00,
    'active'
),

(
    'Barangay Certificate',
    'barangay-certificate',
    'General barangay certification for legitimate purposes.',
    'Valid government-issued ID',
    1,
    30.00,
    'active'
),

(
    'General Service Inquiry',
    'general-service-inquiry',
    'Online inquiry regarding barangay services and procedures.',
    'None',
    1,
    0.00,
    'active'
);