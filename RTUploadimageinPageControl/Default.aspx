<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.master" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<%@ Register Assembly="DevExpress.Web.ASPxRichEdit.v19.1, Version=19.1.11.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web.ASPxRichEdit" TagPrefix="dx" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Content" runat="server">

   

    <style type="text/css">
        .ruler {
            display: none;
            /* Chat containers */
        }

        .richClass .dxbs-tabs-scrollable {
            display: none;
        }

        .container {
            border: 2px solid #dedede;
            background-color: #f1f1f1;
            border-radius: 5px;
            padding: 10px;
            margin: 10px 0;
        }

        /* Darker chat container */
        .darker {
            border-color: #ccc;
            background-color: #ddd;
            margin-left: +30px;
        }

        /* Clear floats */
        .container::after {
            content: "";
            clear: both;
            display: table;
        }

        /* Style images */
        .container img {
            float: left;
            max-width: 60px;
            width: 100%;
            margin-right: 20px;
            border-radius: 50%;
        }
            /* Style the right image */
            .container img.right {
                float: right;
                margin-left: 20px;
                margin-right: 0;
            }

        /* Style time text */
        .time-right {
            float: right;
            color: #aaa;
        }

        /* Style time text */
        .time-left {
            float: left;
            color: #999;
        }


        .maxImage {
            max-height: 700px;
            max-width: 1260px;
        }
    </style>
    <asp:Panel ID="Panel1" Visible="false" runat="server">
        <br />
        <br />
        <br />
        <br />
    </asp:Panel>

       <div class="text-center">
        <asp:Label ID="LabelTopic" CssClass="text-center" runat="server" Text="Form" Font-Size="XX-Large"></asp:Label><br />
        <asp:Label ID="LabelErrormessage" CssClass="text-center" runat="server" Font-Bold="true" ForeColor="Red"></asp:Label>
    </div>
    <br />
    <div id="loader" class="center"></div>
        <dx:BootstrapPageControl runat="server" ID="pageControlV" ClientInstanceName="pageControlV" Width="100%" ActiveTabIndex="0">
        <TabPages>
            <dx:BootstrapTabPage Text="Details" Visible="true">
                <ContentCollection>
                    <dx:ContentControl runat="server">
                        <dx:BootstrapFormLayout runat="server" ID="FormLayoutDataBinding">
                            <Items>
                                <dx:BootstrapLayoutItem Caption="Erstellt von" FieldName="Caption_Erstellt_von" Name="BsTbErstellt_von" ColSpanMd="4">
                                    <ContentCollection>
                                        <dx:ContentControl>
                                            <dx:BootstrapTextBox runat="server" ID="BsTbErstellt_von" ReadOnly="true" />
                                        </dx:ContentControl>
                                    </ContentCollection>
                                </dx:BootstrapLayoutItem>

                             

                                <dx:BootstrapLayoutItem Caption="Beschreibung" FieldName="Caption_Beschreibung" ColSpanMd="12">
                                    <ContentCollection>
                                        <dx:ContentControl>
                                            <dx:BootstrapRichEdit ID="BsMoBeschreibung" CssClasses-Control="richClass" WorkDirectory="\uploaded" RibbonMode="OneLineRibbon" Height="200" runat="server">
                                                <Settings Views-ViewType="Simple"></Settings>
                                                <Settings HorizontalRuler-ShowTabs="false"></Settings>
                                                <Settings DocumentCapabilities-ParagraphStyle="Disabled"></Settings>
                                                <Settings DocumentCapabilities-ParagraphFormatting="Disabled"></Settings>
                                                <RibbonTabs>
                                                    <dx:BSRERHomeTab Text="">
                                                        <Groups>
                                                            <dx:BSRERUndoGroup>
                                                                <Items>
                                                                    <dx:BSRERUndoCommand />
                                                                    <dx:BSRERRedoCommand />
                                                                </Items>
                                                            </dx:BSRERUndoGroup>
                                                            <dx:BSRERFileCommonGroup>
                                                                <Items>
                                                                    <dx:BSRERPrintCommand Size="Large" Text="Drucken" ToolTip="Ctrl + P" />
                                                                </Items>
                                                            </dx:BSRERFileCommonGroup>
                                                            <dx:BSRERFontGroup>
                                                                <Items>
                                                                    <dx:BSRERFontNameCommand></dx:BSRERFontNameCommand>
                                                                    <dx:BSRERFontSizeCommand></dx:BSRERFontSizeCommand>
                                                                    <dx:BSRERFontBoldCommand />
                                                                    <dx:BSRERFontItalicCommand />
                                                                    <dx:BSRERFontUnderlineCommand />
                                                                    <dx:BSRERIncreaseFontSizeCommand />
                                                                    <dx:BSRERDecreaseFontSizeCommand />
                                                                </Items>
                                                            </dx:BSRERFontGroup>
                                                            <dx:BSRERInsertFieldsGroup>
                                                                <Items>
                                                                    <dx:BSRERInsertPictureCommand />
                                                                    <dx:BSRERShowHyperlinkFormCommand Text="Link" />
                                                                </Items>
                                                            </dx:BSRERInsertFieldsGroup>
                                                        </Groups>
                                                    </dx:BSRERHomeTab>
                                                    <dx:BSRERFloatingObjectsTab Visible="false"></dx:BSRERFloatingObjectsTab>
                                                    <dx:BSRERPageLayoutTab Visible="false"></dx:BSRERPageLayoutTab>

                                                    <dx:BSRERHeaderAndFooterTab Visible="false"></dx:BSRERHeaderAndFooterTab>
                                                    <dx:BSRERTableDesignTab Visible="false"></dx:BSRERTableDesignTab>
                                                </RibbonTabs>
                                            </dx:BootstrapRichEdit>
                                        </dx:ContentControl>
                                    </ContentCollection>
                                </dx:BootstrapLayoutItem>




                            </Items>
                        </dx:BootstrapFormLayout>
                    </dx:ContentControl>
                </ContentCollection>
            </dx:BootstrapTabPage>

            <dx:BootstrapTabPage Text="Weiterleitung" Visible="true">
                <ContentCollection>
                    <dx:ContentControl runat="server">
                        <dx:BootstrapFormLayout runat="server" ID="FormLayoutDataBindingV">
                            <Items>
                                <dx:BootstrapLayoutGroup Caption="Weiterleiten an">
                                    <Items>
                                        <dx:BootstrapLayoutItem Caption="anderen Mitarbeiter">
                                            <ContentCollection>
                                                <dx:ContentControl>
                                                
                                                </dx:ContentControl>
                                            </ContentCollection>
                                        </dx:BootstrapLayoutItem>

                                
                                    </Items>

                                </dx:BootstrapLayoutGroup>
                            </Items>
                        </dx:BootstrapFormLayout>


                    </dx:ContentControl>
                </ContentCollection>
            </dx:BootstrapTabPage>

            <dx:BootstrapTabPage Text="Zusatzfelder IT">
                <ContentCollection>
                    <dx:ContentControl runat="server">
                        <asp:Panel ID="PanelUCFields" runat="server"></asp:Panel>
                       
                    </dx:ContentControl>
                </ContentCollection>
            </dx:BootstrapTabPage>

          


        </TabPages>
    </dx:BootstrapPageControl>

        <asp:SqlDataSource ID="SqlDataSource_Mitarbeiter_Abteilung" runat="server" ConnectionString="<%$ ConnectionStrings:intranetConnectionString %>" SelectCommand="SELECT id,name FROM [tickets_mitarbeiter] where abteilung=@department or abteilung2=@department or id=0 order by name">
        <SelectParameters>
            <asp:SessionParameter Name="department" SessionField="for_department" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>

    <asp:SqlDataSource ID="SqlDataSource_Prioritaet_Edit" runat="server" ConnectionString="<%$ ConnectionStrings:intranetConnectionString %>" SelectCommand="SELECT * FROM [tickets_prioritaet] where id<3"></asp:SqlDataSource>

    <asp:SqlDataSource ID="SqlDataSource_Kategorien" runat="server" ConnectionString="<%$ ConnectionStrings:intranetConnectionString %>" SelectCommand="SELECT * FROM [tickets_kategorien] where abteilung=@department order by kategorie">
        <SelectParameters>
            <asp:SessionParameter Name="department" SessionField="for_department" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>

    <asp:SqlDataSource ID="SqlDataSource_New_user_customgrid" runat="server" ConnectionString="<%$ ConnectionStrings:intranetConnectionString %>"
        DeleteCommand="DELETE FROM [tickets_new_user_customgrid] WHERE [id] = @id"
        InsertCommand="INSERT INTO [tickets_new_user_customgrid] ([ticket_temp_id], [Nachname], [Vorname], [Abteilung], [Vorgesetzter], [BodeGesamtVerteiler]) VALUES (@ticket_temp_id, @Nachname, @Vorname, @Abteilung, @Vorgesetzter, @BodeGesamtVerteiler)"
        SelectCommand="SELECT * FROM [tickets_new_user_customgrid] where ticket_temp_id=@Current_Ticketid " UpdateCommand="UPDATE [tickets_new_user_customgrid] SET [ticket_temp_id] = @ticket_temp_id, [Nachname] = @Nachname, [Vorname] = @Vorname, [Abteilung] = @Abteilung, [Vorgesetzter] = @Vorgesetzter, [BodeGesamtVerteiler] = @BodeGesamtVerteiler WHERE [id] = @id">
        <SelectParameters>
            <asp:SessionParameter Name="Current_Ticketid" SessionField="Current_Ticketid" />
        </SelectParameters>
        <DeleteParameters>
            <asp:Parameter Name="id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="ticket_temp_id" Type="String" />
            <asp:Parameter Name="Nachname" Type="String" />
            <asp:Parameter Name="Vorname" Type="String" />
            <asp:Parameter Name="Abteilung" Type="String" />
            <asp:Parameter Name="Vorgesetzter" Type="String" />
            <asp:Parameter Name="BodeGesamtVerteiler" Type="Boolean" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="ticket_temp_id" Type="String" />
            <asp:Parameter Name="Nachname" Type="String" />
            <asp:Parameter Name="Vorname" Type="String" />
            <asp:Parameter Name="Abteilung" Type="String" />
            <asp:Parameter Name="Vorgesetzter" Type="String" />
            <asp:Parameter Name="BodeGesamtVerteiler" Type="Boolean" />
            <asp:Parameter Name="id" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:intranetConnectionString %>" SelectCommand="SELECT * FROM [tickets_kategorien] where abteilung=@department order by kategorie">
        <SelectParameters>
            <asp:SessionParameter Name="department" SessionField="department" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource_Abteilungen" runat="server" ConnectionString="<%$ ConnectionStrings:intranetConnectionString %>" SelectCommand="SELECT * FROM [tickets_abteilungen] where id>0 order by abteilung"></asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource_Abteilungen_Weiterleitung" runat="server" ConnectionString="<%$ ConnectionStrings:intranetConnectionString %>" SelectCommand="SELECT * FROM [tickets_abteilungen] where id>0 and id!=@department order by abteilung">
        <SelectParameters>
            <asp:SessionParameter Name="department" SessionField="department" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>

    <asp:SqlDataSource ID="SqlDataSource_Mitarbeiter_Weiterleitung" runat="server" ConnectionString="<%$ ConnectionStrings:intranetConnectionString %>" SelectCommand="SELECT * FROM [tickets_mitarbeiter] where abteilung=@department or abteilung2=@department or id=0 order by name">
        <SelectParameters>
            <asp:SessionParameter Name="department" SessionField="department" />
        </SelectParameters>
    </asp:SqlDataSource>

    <asp:SqlDataSource ID="SqlDataSource_Mitarbeiter_Weiterleitung2" runat="server" ConnectionString="<%$ ConnectionStrings:intranetConnectionString %>" SelectCommand="SELECT * FROM [tickets_mitarbeiter] where abteilung=@department or id=0 order by name">
        <SelectParameters>
            <asp:SessionParameter Name="department" SessionField="department" />
        </SelectParameters>
    </asp:SqlDataSource>
    <dx:BootstrapGridView ID="BootstrapGridView2" Visible="false" runat="server"></dx:BootstrapGridView>

    <asp:SqlDataSource ID="SqlDataSource_Ticket_Protokoll" runat="server" ConnectionString="<%$ ConnectionStrings:intranetConnectionString %>" SelectCommand="SELECT * FROM tickets_protokoll where meldung like @current_prot_id order by id desc">
        <SelectParameters>

            <asp:SessionParameter Name="current_prot_id" SessionField="current_prot_id" />
        </SelectParameters>
    </asp:SqlDataSource>

    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:intranetConnectionString %>" DeleteCommand="DELETE FROM [tickets_new_user_customgrid] WHERE [id] = @id" InsertCommand="INSERT INTO [tickets_new_user_customgrid] ([ticket_id], [Nachname], [Vorname], [Abteilung], [Vorgesetzter], [BodeGesamtVerteiler]) VALUES (@ticket_id, @Nachname, @Vorname, @Abteilung, @Vorgesetzter, @BodeGesamtVerteiler)" SelectCommand="SELECT * FROM [tickets_new_user_customgrid] where ticket_id=@Current_Ticketid " UpdateCommand="UPDATE [tickets_new_user_customgrid] SET [ticket_id] = @ticket_id, [Nachname] = @Nachname, [Vorname] = @Vorname, [Abteilung] = @Abteilung, [Vorgesetzter] = @Vorgesetzter, [BodeGesamtVerteiler] = @BodeGesamtVerteiler WHERE [id] = @id">
        <SelectParameters>
            <asp:SessionParameter Name="Current_Ticketid" SessionField="Current_Ticketid" />
        </SelectParameters>
        <DeleteParameters>
            <asp:Parameter Name="id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="ticket_id" Type="Int32" />
            <asp:Parameter Name="Nachname" Type="String" />
            <asp:Parameter Name="Vorname" Type="String" />
            <asp:Parameter Name="Abteilung" Type="String" />
            <asp:Parameter Name="Vorgesetzter" Type="String" />
            <asp:Parameter Name="BodeGesamtVerteiler" Type="Boolean" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="ticket_id" Type="Int32" />
            <asp:Parameter Name="Nachname" Type="String" />
            <asp:Parameter Name="Vorname" Type="String" />
            <asp:Parameter Name="Abteilung" Type="String" />
            <asp:Parameter Name="Vorgesetzter" Type="String" />
            <asp:Parameter Name="BodeGesamtVerteiler" Type="Boolean" />
            <asp:Parameter Name="id" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>

    <asp:SqlDataSource ID="SqlDataSource_Status" runat="server" ConnectionString="<%$ ConnectionStrings:intranetConnectionString %>" SelectCommand="SELECT * FROM [tickets_status] where id<3"></asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource_Prioritaet" runat="server" ConnectionString="<%$ ConnectionStrings:intranetConnectionString %>" SelectCommand="SELECT * FROM [tickets_prioritaet]"></asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource_Kostenstellen" runat="server" ConnectionString="<%$ ConnectionStrings:intranetConnectionString %>" SelectCommand="SELECT * FROM [kostenstellen] order by KST"></asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:intranetConnectionString %>" SelectCommand="SELECT * FROM [tickets_prioritaet] where id<3"></asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource_Mitarbeiter" runat="server" ConnectionString="<%$ ConnectionStrings:intranetConnectionString %>" SelectCommand="SELECT * FROM [tickets_mitarbeiter] order by name" />
    <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:intranetConnectionString %>" SelectCommand="SELECT * FROM [tickets_mitarbeiter] where abteilung=@department  order by name">
        <SelectParameters>
            <asp:SessionParameter Name="department" SessionField="department" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>