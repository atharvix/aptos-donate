module aptos_donate::donation {
    use std::signer;
    use aptos_framework::coin;
    use aptos_framework::aptos_coin::AptosCoin;

    struct DonationBox has key {
        total: u64,
    }

    public entry fun initialize(account: &signer) {
        let addr = signer::address_of(account);
        assert!(!exists<DonationBox>(addr), 1);
        move_to(account, DonationBox { total: 0 });
    }

    public entry fun donate(donor: &signer, amount: u64) acquires DonationBox {
        let treasury = @aptos_donate;
        coin::transfer<AptosCoin>(donor, treasury, amount);
        let box = borrow_global_mut<DonationBox>(treasury);
        box.total = box.total + amount;
    }

    public fun get_total(): u64 acquires DonationBox {
        borrow_global<DonationBox>(@aptos_donate).total
    }
}
