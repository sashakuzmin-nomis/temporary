pageextension 50100 LOWCustomerList extends "Customer List"
{
    layout
    {
        modify("Responsibility Center")
        {
            Visible = false;
        }
        modify("Location Code")
        {
            Visible = false;
        }
        addafter(Name)
        {
            field(LOWCustomerPostingGroup; Rec."Customer Posting Group")
            {
                ApplicationArea = All;
                ToolTip = 'We ahve added this for smt';
            }
        }
    }

    trigger OnOpenPage();
    begin
        Message('App published: Hello world');
    end;
}
