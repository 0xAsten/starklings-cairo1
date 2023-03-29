// enums4.cairo
// Execute `starklings hint enums4` or use the `hint` watch subcommand for a hint.


enum Coin {
    Penny:(()),
    Nickel:(()),
    Dime:(()),
    Quarter:(()),
}

fn value_in_cents(coin: Coin) -> u8 {
    match coin {
        Coin::Penny(()) => 1_u8,
        Coin::Nickel(()) => 5_u8,
        Coin::Dime(()) => 10_u8,
        Coin::Quarter(()) => 25_u8,
    }
}

#[test]
fn test_match() {
    assert(value_in_cents(Coin::Penny(())) == 1_u8, 'Penny is 1 cent');
    assert(value_in_cents(Coin::Nickel(())) == 5_u8, 'Nickel is 5 cents');
    assert(value_in_cents(Coin::Dime(())) == 10_u8, 'Dime is 10 cents');
    assert(value_in_cents(Coin::Quarter(())) == 25_u8, 'Quarter is 25 cents');
}