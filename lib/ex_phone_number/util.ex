defmodule ExPhoneNumber.Util do
  @doc ~S"""
  Returns a boolean indicating whether there was a match and
  is the same size as the `string` parameter.
  """
  @spec matches_entirely?(Regex.t, String.t) :: boolean
  def matches_entirely?(regex, string) do
    case Regex.run(regex, string, return: :index) do
      [{_index, length}] -> Kernel.byte_size(string) == length
      _ -> false
    end
  end
end