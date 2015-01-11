module ReceiptsHelper
  def receipt_link(e)
    e.receipt ? link_to("Receipt", e.receipt) : link_to("Add Receipt", new_receipt_path(expense: e))
  end
end
