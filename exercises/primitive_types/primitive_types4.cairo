// primitive_types4.cairo
// Modify the integer types to make the tests pass.
// Learn how to convert between integer types, and felts.
// Execute `starklings hint primitive_types4` or use the `hint` watch subcommand for a hint.

use traits::Into;
use traits::TryInto;
use option::OptionTrait;

fn sum_u8s(x: u8, y: u8) -> u8 {
    x + y
}

// If you try to sum two integers and the result is bigger than the biggest integer of this type, you'll get a compilation error
// to prevent an overflow when summing big values
fn sum_big_numbers(x: u8, y: u8) -> felt252 {
    x.into() + y.into()
}

// convert integers to felts using the `.into()` method. Make sure that you imported the `Into` trait
fn convert_to_felt(x: u8) -> felt252 {
    //return x as a felt252.
    x.into()
}

// convert felts to integers using the `.try_into()` method. Make sure that you imported the `TryInto` trait
fn convert_felt_to_u8(x: felt252) -> u8 {
    //return x as a u8.
    //To use the `unwrap()` method, you'll need to import the `OptionTrait` trait.
    x.try_into().unwrap()
}

#[test]
fn test_sum_u8s() {
    assert(sum_u8s(1_u8, 2_u8) == 3_u8, 'Something went wrong');
}

#[test]
fn test_sum_big_numbers() {
    //TODO modify this test to use the correct integer types.
    // Don't modify the values, just the types.
    // See how using the _u8 suffix on the numbers lets us specify the type?
    // Try to do the same thing with other integer types.
    assert(sum_big_numbers(255_u8, 255_u8) == 510, 'Something went wrong');
}

#[test]
fn test_convert_to_felt() {
    assert(convert_to_felt(1_u8) == 1, 'Type conversion went wrong');
}

#[test]
fn test_convert_to_u8() {
    assert(convert_felt_to_u8(1) == 1_u8, 'Type conversion went wrong');
}
