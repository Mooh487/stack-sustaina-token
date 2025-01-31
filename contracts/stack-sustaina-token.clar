;; Error codes
(define-constant ERR-NOT-AUTHORIZED (err u100))
(define-constant ERR-INSUFFICIENT-BALANCE (err u101))
(define-constant ERR-CAP-REACHED (err u102))
(define-constant ERR-INVALID-AMOUNT (err u103))
(define-constant ERR-NOT-ADMINISTRATOR (err u104))
(define-constant ERR-ALREADY-REGISTERED (err u105))
(define-constant ERR-INVALID-PARAMETER (err u106))
(define-constant ERR-INVALID-RECIPIENT (err u107))
(define-constant ERR-INVALID-PRINCIPAL (err u108))
(define-constant ERR-EMPTY-NAME (err u109))

;; title: rewards-token
;; version:
;; summary:
;; description:
;; Constants
(define-constant CONTRACT-OWNER tx-sender)
(define-constant TOKEN-NAME "EcoRewards")
(define-constant TOKEN-SYMBOL "ECO")
(define-constant TOKEN-DECIMALS u6)
(define-constant INITIAL-CAP u1000000000000000) ;; 1 billion tokens with 6 decimals
(define-constant BURN-THRESHOLD-PERCENTAGE u100) ;; 10% threshold for cap adjustment
(define-constant MAX-BURN-RATE u100) ;; Maximum 10% burn rate

;; traits
;;
;; Data Variables
(define-data-var administrator principal CONTRACT-OWNER)
(define-data-var total-supply uint u0)
(define-data-var current-cap uint INITIAL-CAP)
(define-data-var burn-rate uint u5) ;; 0.5% default burn rate (multiplied by 10)
(define-data-var paused bool false)
(define-data-var burn-threshold uint u100000000000000) ;; 10% of total supply

;; token definitions
;;
;; Data Maps
(define-map balances principal uint)
(define-map burn-exemptions principal bool)
(define-map allowances {owner: principal, spender: principal} uint)
(define-map verified-businesses
    principal
    {
        business-name: (string-ascii 64),
        verification-date: uint,
        carbon-credits: uint
    }
)
