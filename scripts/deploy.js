
const list =[];
async function main() {
    const hm = await ethers.getContractFactory("Hackman");
 
    // Start deployment, returning a promise that resolves to a contract object
    const contract = await hm.deploy();   
    await contract.deployed();
    console.log("Contract deployed to address:", contract.address);

    
 }
 
 main()
   .then(() => process.exit(0))
   .catch(error => {
     console.error(error);
     process.exit(1);
   });