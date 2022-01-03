const main = async () => {
  // Deploy
    const [owner, randomPerson] = await hre.ethers.getSigners();
    const bulletinContractFactory = await hre.ethers.getContractFactory('Bulletin');
    const bulletinContract = await postContractFactory.deploy();

    await bulletinContract.deployed();
    console.log("Contract deployed to:", bulletinContract.address);
    console.log("Contract deployed by:", owner.address);
  };
  
  const runMain = async () => {
    try {
      await main();
      process.exit(0);
    } catch (error) {
      console.log(error);
      process.exit(1);
    }
  };
  
  runMain();