defmodule ElixirBlocks do
  @moduledoc """
  Toy Blockchain in Elixir to run through the concepts

  1.Genesis
  2.BlockHeader
  3.Adding a New Block
  4.Create Wallet,Address
  5.Transactions
  4.Form {K,V}
  5.RLP {K,V}
  6.Trie 
  7.Persist {k:v} using PMT(Patricia Merkel Trie)
  8.Node Comm
  9.Test Test Test

  """

  import Poison
  
  @doc "New Key Generation"
  defp new_key() do
    rand_string = Crypto.gen_random()
    new_hash = Crypto.sha_256(rand_string)
    new_hash
  end

  @doc "Block Header definition"
  def block_header(block) do
    block
  end
  
  @doc ~S"""
  Inits a Genesis block.
  ## Examples
      iex> [_ ,_ ] = ElixirBlocks.init("x")         
  """
  def init(file_path) do
    # Blockchain 
    file_path = File.cwd!<>"/db"
    block = %{  }
    {:ok, db} = CubDB.start_link(data_dir: file_path)
    key = new_key()
    CubDB.put(db, key, block)
    [key, block]
  end

   
end
