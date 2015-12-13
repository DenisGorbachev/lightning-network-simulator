Alice = new Actor("Alice")
Bob = new Actor("Bob")

FundingTX = CreateFundingTransaction(Alice, Bob)
AliceCommitmentTX = CreateCommitmentTransaction(Alice)
BobCommitmentTX = CreateCommitmentTransaction(Bob)

CreateFundingTransaction = (Alice, Bob) ->
  # Parties provide an output that they own
  AliceFunding = Alice.getExistingOutput(0.5)
  BobFunding = Bob.getExistingOutput(0.5)

  MultisigFunding = Alice.createOutput(1, "2 #{}")

  FundingTX = Alice.createTransaction(
    [AliceFunding]
    [MultisigFunding]
  )
