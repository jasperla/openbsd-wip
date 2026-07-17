fn main() -> Result<(), Box<dyn std::error::Error>> {
    let mid_hash = mid::get("mykey")?;
    let mid_data = mid::data("mykey")?;
    let mid_additional_data = mid::additional_data()?;

    println!("MID get: {mid_hash}");
    println!("MID data: {}", serde_json::to_string_pretty(&mid_data)?);
    println!(
        "MID additional data: {}",
        serde_json::to_string_pretty(&mid_additional_data)?
    );

    Ok(())
}
