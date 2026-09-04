.class public Lcom/metamoji/ui/flexible/FxManagerDef;
.super Ljava/lang/Object;
.source "FxManagerDef.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;,
        Lcom/metamoji/ui/flexible/FxManagerDef$FxId;
    }
.end annotation


# static fields
.field public static fxuiitemlist:[Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/16 v0, 0x13a

    .line 455
    new-array v0, v0, [Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;

    new-instance v1, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_VIEW_MODE:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    sget-object v3, Lcom/metamoji/nt/NtCommand;->CMD_INVALID:Lcom/metamoji/nt/NtCommand;

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;-><init>(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;Lcom/metamoji/nt/NtCommand;I)V

    aput-object v1, v0, v4

    new-instance v1, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_PEN_MODE:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    sget-object v3, Lcom/metamoji/nt/NtCommand;->CMD_INVALID:Lcom/metamoji/nt/NtCommand;

    invoke-direct {v1, v2, v3, v4}, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;-><init>(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;Lcom/metamoji/nt/NtCommand;I)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    new-instance v1, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_TEXT_MODE:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    sget-object v3, Lcom/metamoji/nt/NtCommand;->CMD_INVALID:Lcom/metamoji/nt/NtCommand;

    invoke-direct {v1, v2, v3, v4}, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;-><init>(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;Lcom/metamoji/nt/NtCommand;I)V

    const/4 v2, 0x2

    aput-object v1, v0, v2

    new-instance v1, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_UNDO:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    sget-object v3, Lcom/metamoji/nt/NtCommand;->CMD_UNDO:Lcom/metamoji/nt/NtCommand;

    sget v5, Lcom/metamoji/noteanytime/R$string;->UNDO_CMD_LABEL:I

    sget v6, Lcom/metamoji/noteanytime/R$drawable;->bar_btn_undo:I

    invoke-direct {v1, v2, v3, v5, v6}, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;-><init>(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;Lcom/metamoji/nt/NtCommand;II)V

    const/4 v2, 0x3

    aput-object v1, v0, v2

    new-instance v1, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_REDO:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    sget-object v3, Lcom/metamoji/nt/NtCommand;->CMD_REDO:Lcom/metamoji/nt/NtCommand;

    sget v5, Lcom/metamoji/noteanytime/R$string;->REDO_CMD_LABEL:I

    sget v6, Lcom/metamoji/noteanytime/R$drawable;->bar_btn_redo:I

    invoke-direct {v1, v2, v3, v5, v6}, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;-><init>(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;Lcom/metamoji/nt/NtCommand;II)V

    const/4 v2, 0x4

    aput-object v1, v0, v2

    new-instance v1, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_ADD_MENU:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    sget-object v3, Lcom/metamoji/nt/NtCommand;->CMD_INVALID:Lcom/metamoji/nt/NtCommand;

    invoke-direct {v1, v2, v3, v4}, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;-><init>(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;Lcom/metamoji/nt/NtCommand;I)V

    const/4 v2, 0x5

    aput-object v1, v0, v2

    new-instance v1, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_TOOL_BAR:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    sget-object v3, Lcom/metamoji/nt/NtCommand;->CMD_INVALID:Lcom/metamoji/nt/NtCommand;

    invoke-direct {v1, v2, v3, v4}, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;-><init>(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;Lcom/metamoji/nt/NtCommand;I)V

    const/4 v2, 0x6

    aput-object v1, v0, v2

    new-instance v1, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_TOOL_PALLET:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    sget-object v3, Lcom/metamoji/nt/NtCommand;->CMD_INVALID:Lcom/metamoji/nt/NtCommand;

    invoke-direct {v1, v2, v3, v4}, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;-><init>(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;Lcom/metamoji/nt/NtCommand;I)V

    const/4 v2, 0x7

    aput-object v1, v0, v2

    new-instance v1, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_HIDE_BAR:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    sget-object v3, Lcom/metamoji/nt/NtCommand;->CMD_HIDE_BAR:Lcom/metamoji/nt/NtCommand;

    sget v5, Lcom/metamoji/noteanytime/R$drawable;->bar_btn_hide:I

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;-><init>(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;Lcom/metamoji/nt/NtCommand;II)V

    const/16 v2, 0x8

    aput-object v1, v0, v2

    new-instance v1, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_SHOW_BAR:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    sget-object v3, Lcom/metamoji/nt/NtCommand;->CMD_INVALID:Lcom/metamoji/nt/NtCommand;

    sget v5, Lcom/metamoji/noteanytime/R$drawable;->bar_btn_show:I

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;-><init>(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;Lcom/metamoji/nt/NtCommand;II)V

    const/16 v2, 0x9

    aput-object v1, v0, v2

    new-instance v1, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_HELP_MODE:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    sget-object v3, Lcom/metamoji/nt/NtCommand;->CMD_HELP_MODE:Lcom/metamoji/nt/NtCommand;

    sget v5, Lcom/metamoji/noteanytime/R$string;->Menu_Hint_Help:I

    sget v6, Lcom/metamoji/noteanytime/R$drawable;->bar_btn_help:I

    invoke-direct {v1, v2, v3, v5, v6}, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;-><init>(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;Lcom/metamoji/nt/NtCommand;II)V

    const/16 v2, 0xa

    aput-object v1, v0, v2

    new-instance v1, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_PAPER_MENU:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    sget-object v3, Lcom/metamoji/nt/NtCommand;->CMD_INVALID:Lcom/metamoji/nt/NtCommand;

    sget v5, Lcom/metamoji/noteanytime/R$string;->Menu_PaperOrBackground_Prop:I

    sget v6, Lcom/metamoji/noteanytime/R$drawable;->menuicon_paper_setting_n:I

    invoke-direct {v1, v2, v3, v5, v6}, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;-><init>(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;Lcom/metamoji/nt/NtCommand;II)V

    const/16 v2, 0xb

    aput-object v1, v0, v2

    new-instance v1, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_PAPER_CHANGE:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    sget-object v3, Lcom/metamoji/nt/NtCommand;->CMD_PAPER_CHANGE:Lcom/metamoji/nt/NtCommand;

    sget v5, Lcom/metamoji/noteanytime/R$string;->Menu_Paper_Prop:I

    sget v6, Lcom/metamoji/noteanytime/R$drawable;->menuicon_paper_change_n:I

    invoke-direct {v1, v2, v3, v5, v6}, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;-><init>(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;Lcom/metamoji/nt/NtCommand;II)V

    const/16 v2, 0xc

    aput-object v1, v0, v2

    new-instance v1, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_PAPER_SIZE:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    sget-object v3, Lcom/metamoji/nt/NtCommand;->CMD_PAPER_SIZE:Lcom/metamoji/nt/NtCommand;

    sget v5, Lcom/metamoji/noteanytime/R$string;->Menu_Paper_Size_Prop:I

    sget v6, Lcom/metamoji/noteanytime/R$drawable;->menuicon_paper_size_n:I

    invoke-direct {v1, v2, v3, v5, v6}, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;-><init>(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;Lcom/metamoji/nt/NtCommand;II)V

    const/16 v2, 0xd

    aput-object v1, v0, v2

    new-instance v1, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_PAPER_BACKGROUND:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    sget-object v3, Lcom/metamoji/nt/NtCommand;->CMD_PAPER_BACKGROUND:Lcom/metamoji/nt/NtCommand;

    sget v5, Lcom/metamoji/noteanytime/R$string;->Menu_Background_Prop:I

    sget v6, Lcom/metamoji/noteanytime/R$drawable;->menuicon_paper_bg_n:I

    invoke-direct {v1, v2, v3, v5, v6}, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;-><init>(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;Lcom/metamoji/nt/NtCommand;II)V

    const/16 v2, 0xe

    aput-object v1, v0, v2

    new-instance v1, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_PAPER_ENABLE_COVER:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    sget-object v3, Lcom/metamoji/nt/NtCommand;->CMD_COVER_SELECT_AND_INSERT:Lcom/metamoji/nt/NtCommand;

    sget v5, Lcom/metamoji/noteanytime/R$string;->SelectCoverAndInsertMenu:I

    sget v6, Lcom/metamoji/noteanytime/R$drawable;->menuicon_front_cover:I

    invoke-direct {v1, v2, v3, v5, v6}, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;-><init>(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;Lcom/metamoji/nt/NtCommand;II)V

    const/16 v2, 0xf

    aput-object v1, v0, v2

    new-instance v1, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_SEND_MENU:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    sget-object v3, Lcom/metamoji/nt/NtCommand;->CMD_INVALID:Lcom/metamoji/nt/NtCommand;

    sget v5, Lcom/metamoji/noteanytime/R$string;->Menu_Send:I

    sget v6, Lcom/metamoji/noteanytime/R$drawable;->bar_btn_share:I

    invoke-direct {v1, v2, v3, v5, v6}, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;-><init>(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;Lcom/metamoji/nt/NtCommand;II)V

    const/16 v2, 0x10

    aput-object v1, v0, v2

    new-instance v1, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_CLOUD_MENU:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    sget-object v3, Lcom/metamoji/nt/NtCommand;->CMD_INVALID:Lcom/metamoji/nt/NtCommand;

    invoke-direct {v1, v2, v3, v4}, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;-><init>(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;Lcom/metamoji/nt/NtCommand;I)V

    const/16 v2, 0x11

    aput-object v1, v0, v2

    new-instance v1, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_SEND_APLI:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    sget-object v3, Lcom/metamoji/nt/NtCommand;->CMD_SEND_TARGET_SERVICE_APPLICATION:Lcom/metamoji/nt/NtCommand;

    sget v5, Lcom/metamoji/noteanytime/R$string;->SendWindow_Application:I

    sget v6, Lcom/metamoji/noteanytime/R$drawable;->menuicon_send_appli_n:I

    invoke-direct {v1, v2, v3, v5, v6}, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;-><init>(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;Lcom/metamoji/nt/NtCommand;II)V

    const/16 v2, 0x12

    aput-object v1, v0, v2

    new-instance v1, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_SEND_FILE:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    sget-object v3, Lcom/metamoji/nt/NtCommand;->CMD_SEND_TARGET_SERVICE_FILE:Lcom/metamoji/nt/NtCommand;

    sget v5, Lcom/metamoji/noteanytime/R$string;->Share_SaveToFile:I

    sget v6, Lcom/metamoji/noteanytime/R$drawable;->menuicon_send_file_n:I

    invoke-direct {v1, v2, v3, v5, v6}, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;-><init>(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;Lcom/metamoji/nt/NtCommand;II)V

    const/16 v2, 0x13

    aput-object v1, v0, v2

    new-instance v1, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_SAVE_ALBUM:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    sget-object v3, Lcom/metamoji/nt/NtCommand;->CMD_SEND_TARGET_SERVICE_ALBUM:Lcom/metamoji/nt/NtCommand;

    sget v5, Lcom/metamoji/noteanytime/R$string;->Save_To_Album:I

    sget v6, Lcom/metamoji/noteanytime/R$drawable;->menuicon_send_file_n:I

    invoke-direct {v1, v2, v3, v5, v6}, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;-><init>(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;Lcom/metamoji/nt/NtCommand;II)V

    const/16 v2, 0x14

    aput-object v1, v0, v2

    new-instance v1, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_PDF_PREVIEW:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    sget-object v3, Lcom/metamoji/nt/NtCommand;->CMD_SEND_TARGET_SERVICE_PDFPREVIEW:Lcom/metamoji/nt/NtCommand;

    sget v5, Lcom/metamoji/noteanytime/R$string;->SendWindow_Preview:I

    invoke-direct {v1, v2, v3, v5}, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;-><init>(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;Lcom/metamoji/nt/NtCommand;I)V

    const/16 v2, 0x15

    aput-object v1, v0, v2

    new-instance v1, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_PRINT:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    sget-object v3, Lcom/metamoji/nt/NtCommand;->CMD_SEND_TARGET_SERVICE_PRINTER:Lcom/metamoji/nt/NtCommand;

    sget v5, Lcom/metamoji/noteanytime/R$string;->SendWindow_Print:I

    sget v6, Lcom/metamoji/noteanytime/R$drawable;->menuicon_send_printer_n:I

    invoke-direct {v1, v2, v3, v5, v6}, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;-><init>(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;Lcom/metamoji/nt/NtCommand;II)V

    const/16 v2, 0x16

    aput-object v1, v0, v2

    new-instance v1, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_NOTE_SETTING:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    sget-object v3, Lcom/metamoji/nt/NtCommand;->CMD_DOCUMENT_SETTING2:Lcom/metamoji/nt/NtCommand;

    sget v5, Lcom/metamoji/noteanytime/R$string;->DocumentSetting_Note_Setting:I

    sget v6, Lcom/metamoji/noteanytime/R$drawable;->menuicon_doc_setting_n:I

    invoke-direct {v1, v2, v3, v5, v6}, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;-><init>(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;Lcom/metamoji/nt/NtCommand;II)V

    const/16 v2, 0x17

    aput-object v1, v0, v2

    new-instance v1, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_NEW_DOCTEMPLATE_FROM_CURRENT:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    sget-object v3, Lcom/metamoji/nt/NtCommand;->CMD_NEW_DOCTEMPLATE_FROM_CURRENT:Lcom/metamoji/nt/NtCommand;

    sget v5, Lcom/metamoji/noteanytime/R$string;->APP_NEW_DOCTEMPLATE_FROM_CURRENT:I

    sget v6, Lcom/metamoji/noteanytime/R$drawable;->design1_mnu_icon_create_tamplate_from_current_note:I

    invoke-direct {v1, v2, v3, v5, v6}, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;-><init>(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;Lcom/metamoji/nt/NtCommand;II)V

    const/16 v2, 0x18

    aput-object v1, v0, v2

    new-instance v1, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_TEMPLATE_SETTING:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    sget-object v3, Lcom/metamoji/nt/NtCommand;->CMD_NOTETEMPLATE_SETTING:Lcom/metamoji/nt/NtCommand;

    sget v5, Lcom/metamoji/noteanytime/R$string;->Editor_NoteTemplate_Setting:I

    sget v6, Lcom/metamoji/noteanytime/R$drawable;->menuicon_doc_setting_n:I

    invoke-direct {v1, v2, v3, v5, v6}, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;-><init>(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;Lcom/metamoji/nt/NtCommand;II)V

    const/16 v2, 0x19

    aput-object v1, v0, v2

    new-instance v1, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_NAVI_GROUP:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    sget-object v3, Lcom/metamoji/nt/NtCommand;->CMD_INVALID:Lcom/metamoji/nt/NtCommand;

    invoke-direct {v1, v2, v3, v4}, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;-><init>(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;Lcom/metamoji/nt/NtCommand;I)V

    const/16 v2, 0x1a

    aput-object v1, v0, v2

    new-instance v1, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_VIEW_GROUP:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    sget-object v3, Lcom/metamoji/nt/NtCommand;->CMD_INVALID:Lcom/metamoji/nt/NtCommand;

    invoke-direct {v1, v2, v3, v4}, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;-><init>(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;Lcom/metamoji/nt/NtCommand;I)V

    const/16 v2, 0x1b

    aput-object v1, v0, v2

    new-instance v1, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_BACK_CABINET:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    sget-object v3, Lcom/metamoji/nt/NtCommand;->CMD_CLOSE_DOCUMENT:Lcom/metamoji/nt/NtCommand;

    sget v5, Lcom/metamoji/noteanytime/R$string;->CMD_BACK_CABINET:I

    sget v6, Lcom/metamoji/noteanytime/R$drawable;->bar_btn_done:I

    invoke-direct {v1, v2, v3, v5, v6}, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;-><init>(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;Lcom/metamoji/nt/NtCommand;II)V

    const/16 v2, 0x1c

    aput-object v1, v0, v2

    new-instance v1, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_ZOOM_ENTRE_PAPER:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    sget-object v3, Lcom/metamoji/nt/NtCommand;->CMD_ZOOM_ENTIRE_PAPER:Lcom/metamoji/nt/NtCommand;

    sget v5, Lcom/metamoji/noteanytime/R$string;->Menu_ZoomPaperAll:I

    sget v6, Lcom/metamoji/noteanytime/R$drawable;->menuicon_zoom_full_n:I

    invoke-direct {v1, v2, v3, v5, v6}, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;-><init>(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;Lcom/metamoji/nt/NtCommand;II)V

    const/16 v2, 0x1d

    aput-object v1, v0, v2

    new-instance v1, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_ZOOM_FIT_PAPER_WIDTH:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    sget-object v3, Lcom/metamoji/nt/NtCommand;->CMD_ZOOM_FIT_PAPER_WIDTH:Lcom/metamoji/nt/NtCommand;

    sget v5, Lcom/metamoji/noteanytime/R$string;->Menu_ZoomPaperWidth:I

    sget v6, Lcom/metamoji/noteanytime/R$drawable;->menuicon_zoom_width_n:I

    invoke-direct {v1, v2, v3, v5, v6}, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;-><init>(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;Lcom/metamoji/nt/NtCommand;II)V

    const/16 v2, 0x1e

    aput-object v1, v0, v2

    new-instance v1, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_MAIN_MENU:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    sget-object v3, Lcom/metamoji/nt/NtCommand;->CMD_INVALID:Lcom/metamoji/nt/NtCommand;

    invoke-direct {v1, v2, v3, v4}, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;-><init>(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;Lcom/metamoji/nt/NtCommand;I)V

    const/16 v2, 0x1f

    aput-object v1, v0, v2

    new-instance v1, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_COLLABO_MENU:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    sget-object v3, Lcom/metamoji/nt/NtCommand;->CMD_COLLABO_MENU:Lcom/metamoji/nt/NtCommand;

    sget v5, Lcom/metamoji/noteanytime/R$drawable;->collabo_mode_share_offline:I

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;-><init>(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;Lcom/metamoji/nt/NtCommand;II)V

    const/16 v2, 0x20

    aput-object v1, v0, v2

    new-instance v1, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_COLLABO_NEW_DOCUMENT:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    sget-object v3, Lcom/metamoji/nt/NtCommand;->CMD_COLLABO_NEW_DOCUMENT:Lcom/metamoji/nt/NtCommand;

    sget v5, Lcom/metamoji/noteanytime/R$string;->ShareMenu_New_ShareNote:I

    sget v6, Lcom/metamoji/noteanytime/R$drawable;->menu_icon_share_make_n:I

    invoke-direct {v1, v2, v3, v5, v6}, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;-><init>(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;Lcom/metamoji/nt/NtCommand;II)V

    const/16 v2, 0x21

    aput-object v1, v0, v2

    new-instance v1, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_COLLABO_DISTRIBUTE_MENU:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    sget-object v3, Lcom/metamoji/nt/NtCommand;->CMD_COLLABO_DISTRIBUTE:Lcom/metamoji/nt/NtCommand;

    sget v5, Lcom/metamoji/noteanytime/R$string;->ShareMenu_Distribute_Note:I

    sget v6, Lcom/metamoji/noteanytime/R$drawable;->menuicon_send_appli_n:I

    invoke-direct {v1, v2, v3, v5, v6}, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;-><init>(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;Lcom/metamoji/nt/NtCommand;II)V

    const/16 v2, 0x22

    aput-object v1, v0, v2

    new-instance v1, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_COLLABO_DISTRIBUTE_SHAREDDRIVE:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    sget-object v3, Lcom/metamoji/nt/NtCommand;->CMD_COLLABO_DISTRIBUTE_BY_SHAREDDRIVE:Lcom/metamoji/nt/NtCommand;

    sget v5, Lcom/metamoji/noteanytime/R$string;->ShareMenu_Distribute_Note_By_SharedDrive:I

    invoke-direct {v1, v2, v3, v5}, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;-><init>(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;Lcom/metamoji/nt/NtCommand;I)V

    const/16 v2, 0x23

    aput-object v1, v0, v2

    new-instance v1, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_COLLABO_DISTRIBUTE_BY_URL:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    sget-object v3, Lcom/metamoji/nt/NtCommand;->CMD_COLLABO_DISTRIBUTE_URL_BY_APPLICATION:Lcom/metamoji/nt/NtCommand;

    sget v5, Lcom/metamoji/noteanytime/R$string;->ShareMenu_Distribute_URL_By_Application:I

    sget v6, Lcom/metamoji/noteanytime/R$drawable;->menuicon_send_url_n:I

    invoke-direct {v1, v2, v3, v5, v6}, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;-><init>(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;Lcom/metamoji/nt/NtCommand;II)V

    const/16 v2, 0x24

    aput-object v1, v0, v2

    new-instance v1, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_COLLABO_DISTRIBUTE_BY_APPLICATION:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    sget-object v3, Lcom/metamoji/nt/NtCommand;->CMD_COLLABO_DISTRIBUTE_BY_APPLICATION:Lcom/metamoji/nt/NtCommand;

    sget v5, Lcom/metamoji/noteanytime/R$string;->SendWindow_Application:I

    sget v6, Lcom/metamoji/noteanytime/R$drawable;->menuicon_send_appli_n:I

    invoke-direct {v1, v2, v3, v5, v6}, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;-><init>(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;Lcom/metamoji/nt/NtCommand;II)V

    const/16 v2, 0x25

    aput-object v1, v0, v2

    new-instance v1, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_COLLABO_DISTRIBUTE_BY_FILE:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    sget-object v3, Lcom/metamoji/nt/NtCommand;->CMD_COLLABO_DISTRIBUTE_BY_FILE:Lcom/metamoji/nt/NtCommand;

    sget v5, Lcom/metamoji/noteanytime/R$string;->Share_SaveToFile:I

    sget v6, Lcom/metamoji/noteanytime/R$drawable;->menuicon_import_n:I

    invoke-direct {v1, v2, v3, v5, v6}, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;-><init>(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;Lcom/metamoji/nt/NtCommand;II)V

    const/16 v2, 0x26

    aput-object v1, v0, v2

    new-instance v1, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_COLLABO_BECOME_PRESENTER:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    sget-object v3, Lcom/metamoji/nt/NtCommand;->CMD_COLLABO_BECOME_PRESENTER:Lcom/metamoji/nt/NtCommand;

    sget v5, Lcom/metamoji/noteanytime/R$string;->ShareMenu_Become_Chair:I

    sget v6, Lcom/metamoji/noteanytime/R$drawable;->menu_icon_share_chair_mode_n:I

    invoke-direct {v1, v2, v3, v5, v6}, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;-><init>(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;Lcom/metamoji/nt/NtCommand;II)V

    const/16 v2, 0x27

    aput-object v1, v0, v2

    new-instance v1, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_COLLABO_RESIGN_PRESENTER:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    sget-object v3, Lcom/metamoji/nt/NtCommand;->CMD_COLLABO_RESIGN_PRESENTER:Lcom/metamoji/nt/NtCommand;

    sget v5, Lcom/metamoji/noteanytime/R$string;->ShareMenu_Resign_Chair:I

    sget v6, Lcom/metamoji/noteanytime/R$drawable;->menu_icon_share_chair_mode_n:I

    invoke-direct {v1, v2, v3, v5, v6}, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;-><init>(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;Lcom/metamoji/nt/NtCommand;II)V

    const/16 v2, 0x28

    aput-object v1, v0, v2

    new-instance v1, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_COLLABO_BECOME_CLERK:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    sget-object v3, Lcom/metamoji/nt/NtCommand;->CMD_COLLABO_BECOME_CLERK:Lcom/metamoji/nt/NtCommand;

    sget v5, Lcom/metamoji/noteanytime/R$string;->ShareMenu_Become_Clerk:I

    sget v6, Lcom/metamoji/noteanytime/R$drawable;->menu_icon_share_clerk_mode_n:I

    invoke-direct {v1, v2, v3, v5, v6}, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;-><init>(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;Lcom/metamoji/nt/NtCommand;II)V

    const/16 v2, 0x29

    aput-object v1, v0, v2

    new-instance v1, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_COLLABO_RESIGN_CLERK:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    sget-object v3, Lcom/metamoji/nt/NtCommand;->CMD_COLLABO_RESIGN_CLERK:Lcom/metamoji/nt/NtCommand;

    sget v5, Lcom/metamoji/noteanytime/R$string;->ShareMenu_Resign_Clerk:I

    sget v6, Lcom/metamoji/noteanytime/R$drawable;->menu_icon_share_clerk_mode_n:I

    invoke-direct {v1, v2, v3, v5, v6}, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;-><init>(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;Lcom/metamoji/nt/NtCommand;II)V

    const/16 v2, 0x2a

    aput-object v1, v0, v2

    new-instance v1, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_COLLABO_MANAGE_MEMBER:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    sget-object v3, Lcom/metamoji/nt/NtCommand;->CMD_COLLABO_MANAGE_MEMBER:Lcom/metamoji/nt/NtCommand;

    sget v5, Lcom/metamoji/noteanytime/R$string;->ShareMenu_Manage_Role:I

    sget v6, Lcom/metamoji/noteanytime/R$drawable;->menu_icon_share_memberlist_n:I

    invoke-direct {v1, v2, v3, v5, v6}, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;-><init>(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;Lcom/metamoji/nt/NtCommand;II)V

    const/16 v2, 0x2b

    aput-object v1, v0, v2

    new-instance v1, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_COLLABO_NEW_NORMAL_DOCUMENT:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    sget-object v3, Lcom/metamoji/nt/NtCommand;->CMD_COLLABO_NEW_NORMAL_DOCUMENT:Lcom/metamoji/nt/NtCommand;

    sget v5, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_SAVE_TO_MYBOX_AS_NOTE:I

    sget v6, Lcom/metamoji/noteanytime/R$drawable;->design1_mnu_icon_note_from_sharenote_n:I

    invoke-direct {v1, v2, v3, v5, v6}, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;-><init>(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;Lcom/metamoji/nt/NtCommand;II)V

    const/16 v2, 0x2c

    aput-object v1, v0, v2

    new-instance v1, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_COLLABO_NEW_COLLABO_DOCUMENT:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    sget-object v3, Lcom/metamoji/nt/NtCommand;->CMD_COLLABO_NEW_COLLABO_DOCUMENT:Lcom/metamoji/nt/NtCommand;

    sget v5, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_DELIVER_AS_ANOTHER_CLASS_NOTE:I

    sget v6, Lcom/metamoji/noteanytime/R$drawable;->design1_mnu_icon_share_make_n:I

    invoke-direct {v1, v2, v3, v5, v6}, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;-><init>(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;Lcom/metamoji/nt/NtCommand;II)V

    const/16 v2, 0x2d

    aput-object v1, v0, v2

    new-instance v1, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_COLLABO_RECEIVE_ALL_DATA:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    sget-object v3, Lcom/metamoji/nt/NtCommand;->CMD_COLLABO_RECEIVE_ALL_DATA:Lcom/metamoji/nt/NtCommand;

    sget v5, Lcom/metamoji/noteanytime/R$string;->ShareMenu_Receive_All_Data:I

    sget v6, Lcom/metamoji/noteanytime/R$drawable;->menu_icon_share_note_reload_n:I

    invoke-direct {v1, v2, v3, v5, v6}, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;-><init>(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;Lcom/metamoji/nt/NtCommand;II)V

    const/16 v2, 0x2e

    aput-object v1, v0, v2

    new-instance v1, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_COLLABO_DISABLE_WRITE_ACCESS:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    sget-object v3, Lcom/metamoji/nt/NtCommand;->CMD_COLLABO_DISABLE_WRITE_ACCESS:Lcom/metamoji/nt/NtCommand;

    sget v5, Lcom/metamoji/noteanytime/R$string;->ShareMenu_Disable_WriteAccess:I

    sget v6, Lcom/metamoji/noteanytime/R$drawable;->menuicon_share_write_disable_n:I

    invoke-direct {v1, v2, v3, v5, v6}, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;-><init>(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;Lcom/metamoji/nt/NtCommand;II)V

    const/16 v2, 0x2f

    aput-object v1, v0, v2

    new-instance v1, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_COLLABO_ENABLE_WRITE_ACCESS:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    sget-object v3, Lcom/metamoji/nt/NtCommand;->CMD_COLLABO_ENABLE_WRITE_ACCESS:Lcom/metamoji/nt/NtCommand;

    sget v5, Lcom/metamoji/noteanytime/R$string;->ShareMenu_Enable_WriteAccess:I

    sget v6, Lcom/metamoji/noteanytime/R$drawable;->menuicon_share_write_enable_n:I

    invoke-direct {v1, v2, v3, v5, v6}, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;-><init>(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;Lcom/metamoji/nt/NtCommand;II)V

    const/16 v2, 0x30

    aput-object v1, v0, v2

    new-instance v1, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_COLLABO_SERVICEINFO:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    sget-object v3, Lcom/metamoji/nt/NtCommand;->CMD_COLLABO_SERVICEINFO:Lcom/metamoji/nt/NtCommand;

    sget v5, Lcom/metamoji/noteanytime/R$string;->ShareServiceInfoDlg_Title:I

    sget v6, Lcom/metamoji/noteanytime/R$drawable;->menu_icon_share_info:I

    invoke-direct {v1, v2, v3, v5, v6}, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;-><init>(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;Lcom/metamoji/nt/NtCommand;II)V

    const/16 v2, 0x31

    aput-object v1, v0, v2

    new-instance v1, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_DEBUG_MENU:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    sget-object v3, Lcom/metamoji/nt/NtCommand;->CMD_DEBUG_MENU:Lcom/metamoji/nt/NtCommand;

    invoke-direct {v1, v2, v3, v4}, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;-><init>(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;Lcom/metamoji/nt/NtCommand;I)V

    const/16 v2, 0x32

    aput-object v1, v0, v2

    new-instance v1, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_PDF_LOCATION:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    sget-object v3, Lcom/metamoji/nt/NtCommand;->CMD_PDF_LOCATION:Lcom/metamoji/nt/NtCommand;

    sget v5, Lcom/metamoji/noteanytime/R$string;->Menu_Pdf_Location:I

    sget v6, Lcom/metamoji/noteanytime/R$drawable;->mnu_icon_pdf_location_n:I

    invoke-direct {v1, v2, v3, v5, v6}, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;-><init>(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;Lcom/metamoji/nt/NtCommand;II)V

    const/16 v2, 0x33

    aput-object v1, v0, v2

    new-instance v1, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_NEWPAGE_ADD_MENU:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    sget-object v3, Lcom/metamoji/nt/NtCommand;->CMD_INVALID:Lcom/metamoji/nt/NtCommand;

    sget v5, Lcom/metamoji/noteanytime/R$string;->ContextMenu_NewPage:I

    sget v6, Lcom/metamoji/noteanytime/R$drawable;->menuicon_newpage_n:I

    invoke-direct {v1, v2, v3, v5, v6}, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;-><init>(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;Lcom/metamoji/nt/NtCommand;II)V

    const/16 v2, 0x34

    aput-object v1, v0, v2

    new-instance v1, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_NEW_PAGE:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    sget-object v3, Lcom/metamoji/nt/NtCommand;->CMD_NEW_PAGE:Lcom/metamoji/nt/NtCommand;

    sget v5, Lcom/metamoji/noteanytime/R$string;->Menu_NewPage_SameSize:I

    sget v6, Lcom/metamoji/noteanytime/R$drawable;->design1_mnu_icon_newpage_n:I

    invoke-direct {v1, v2, v3, v5, v6}, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;-><init>(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;Lcom/metamoji/nt/NtCommand;II)V

    const/16 v2, 0x35

    aput-object v1, v0, v2

    new-instance v1, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_SELECTFORM_NEW_PAGE:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    sget-object v3, Lcom/metamoji/nt/NtCommand;->CMD_SELECTFORM_NEW_PAGE:Lcom/metamoji/nt/NtCommand;

    sget v5, Lcom/metamoji/noteanytime/R$string;->Menu_AddPage_SelectForm:I

    sget v6, Lcom/metamoji/noteanytime/R$drawable;->design1_mnu_icon_selectpage_n:I

    invoke-direct {v1, v2, v3, v5, v6}, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;-><init>(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;Lcom/metamoji/nt/NtCommand;II)V

    const/16 v2, 0x36

    aput-object v1, v0, v2

    new-instance v1, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_SELECTDOC_NEW_PAGE:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    sget-object v3, Lcom/metamoji/nt/NtCommand;->CMD_SELECTDOC_NEW_PAGE:Lcom/metamoji/nt/NtCommand;

    sget v5, Lcom/metamoji/noteanytime/R$string;->Menu_NewPage_FromOtherNote:I

    sget v6, Lcom/metamoji/noteanytime/R$drawable;->design1_mnu_icon_newpage_copynote_n:I

    invoke-direct {v1, v2, v3, v5, v6}, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;-><init>(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;Lcom/metamoji/nt/NtCommand;II)V

    const/16 v2, 0x37

    aput-object v1, v0, v2

    new-instance v1, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_PHOTO_MENU:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    sget-object v3, Lcom/metamoji/nt/NtCommand;->CMD_INVALID:Lcom/metamoji/nt/NtCommand;

    sget v5, Lcom/metamoji/noteanytime/R$string;->Menu_Add_Photo:I

    sget v6, Lcom/metamoji/noteanytime/R$drawable;->menuicon_add_icon_album_n:I

    invoke-direct {v1, v2, v3, v5, v6}, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;-><init>(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;Lcom/metamoji/nt/NtCommand;II)V

    const/16 v2, 0x38

    aput-object v1, v0, v2

    new-instance v1, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_SELECT_PHOTOLIBRARY:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    sget-object v3, Lcom/metamoji/nt/NtCommand;->CMD_SELECT_PHOTOLIBRARY:Lcom/metamoji/nt/NtCommand;

    sget v5, Lcom/metamoji/noteanytime/R$string;->Library_Select_PhotoLibrary:I

    sget v6, Lcom/metamoji/noteanytime/R$drawable;->menuicon_add_icon_album_n:I

    invoke-direct {v1, v2, v3, v5, v6}, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;-><init>(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;Lcom/metamoji/nt/NtCommand;II)V

    const/16 v2, 0x39

    aput-object v1, v0, v2

    new-instance v1, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_TAKE_A_PICTURE:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    sget-object v3, Lcom/metamoji/nt/NtCommand;->CMD_TAKE_A_PICTURE:Lcom/metamoji/nt/NtCommand;

    sget v5, Lcom/metamoji/noteanytime/R$string;->Library_Capture_Camera:I

    sget v6, Lcom/metamoji/noteanytime/R$drawable;->menuicon_add_icon_camera_n:I

    invoke-direct {v1, v2, v3, v5, v6}, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;-><init>(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;Lcom/metamoji/nt/NtCommand;II)V

    const/16 v2, 0x3a

    aput-object v1, v0, v2

    new-instance v1, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_PUTIN_SHAPE:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    sget-object v3, Lcom/metamoji/nt/NtCommand;->CMD_PUTIN_SHAPE:Lcom/metamoji/nt/NtCommand;

    sget v5, Lcom/metamoji/noteanytime/R$string;->Menu_AddShape:I

    sget v6, Lcom/metamoji/noteanytime/R$drawable;->menuicon_add_icon_shape_n:I

    invoke-direct {v1, v2, v3, v5, v6}, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;-><init>(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;Lcom/metamoji/nt/NtCommand;II)V

    const/16 v2, 0x3b

    aput-object v1, v0, v2

    new-instance v1, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_PUTIN_PARTS:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    sget-object v3, Lcom/metamoji/nt/NtCommand;->CMD_PUTIN_PARTS:Lcom/metamoji/nt/NtCommand;

    sget v5, Lcom/metamoji/noteanytime/R$string;->Menu_AddItem:I

    sget v6, Lcom/metamoji/noteanytime/R$drawable;->menuicon_add_icon_library_n:I

    invoke-direct {v1, v2, v3, v5, v6}, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;-><init>(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;Lcom/metamoji/nt/NtCommand;II)V

    const/16 v2, 0x3c

    aput-object v1, v0, v2

    new-instance v1, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_READ_WEBPAGE:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    sget-object v3, Lcom/metamoji/nt/NtCommand;->CMD_READ_WEBPAGE:Lcom/metamoji/nt/NtCommand;

    sget v5, Lcom/metamoji/noteanytime/R$string;->Library_AddWebPage:I

    sget v6, Lcom/metamoji/noteanytime/R$drawable;->menuicon_web_n:I

    invoke-direct {v1, v2, v3, v5, v6}, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;-><init>(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;Lcom/metamoji/nt/NtCommand;II)V

    const/16 v2, 0x3d

    aput-object v1, v0, v2

    new-instance v1, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_NOTE_MENU:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    sget-object v3, Lcom/metamoji/nt/NtCommand;->CMD_INVALID:Lcom/metamoji/nt/NtCommand;

    sget v5, Lcom/metamoji/noteanytime/R$string;->Menu_Note:I

    sget v6, Lcom/metamoji/noteanytime/R$drawable;->menuicon_newdoc_n:I

    invoke-direct {v1, v2, v3, v5, v6}, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;-><init>(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;Lcom/metamoji/nt/NtCommand;II)V

    const/16 v2, 0x3e

    aput-object v1, v0, v2

    new-instance v1, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_NEW_DOCUMENT:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    sget-object v3, Lcom/metamoji/nt/NtCommand;->CMD_NEW_DOCUMENT:Lcom/metamoji/nt/NtCommand;

    sget v5, Lcom/metamoji/noteanytime/R$string;->Cabinet_CreateNote:I

    sget v6, Lcom/metamoji/noteanytime/R$drawable;->design1_mnu_icon_newdoc_n:I

    invoke-direct {v1, v2, v3, v5, v6}, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;-><init>(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;Lcom/metamoji/nt/NtCommand;II)V

    const/16 v2, 0x3f

    aput-object v1, v0, v2

    new-instance v1, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_COLLABO_NEW_DOCUMENT_FOR_STUDENT:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    sget-object v3, Lcom/metamoji/nt/NtCommand;->CMD_COLLABO_NEW_DOCUMENT_FOR_STUDENT:Lcom/metamoji/nt/NtCommand;

    sget v5, Lcom/metamoji/noteanytime/R$string;->ShareMenu_New_ShareNote:I

    sget v6, Lcom/metamoji/noteanytime/R$drawable;->menuicon_newdoc_n:I

    invoke-direct {v1, v2, v3, v5, v6}, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;-><init>(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;Lcom/metamoji/nt/NtCommand;II)V

    const/16 v2, 0x40

    aput-object v1, v0, v2

    new-instance v1, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_NEW_DOCUMENT_SELECT_PAPER:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    sget-object v3, Lcom/metamoji/nt/NtCommand;->CMD_NEW_DOCUMENT_SELECT_PAPER:Lcom/metamoji/nt/NtCommand;

    sget v5, Lcom/metamoji/noteanytime/R$string;->Menu_NewNote_SelectForm:I

    sget v6, Lcom/metamoji/noteanytime/R$drawable;->design1_mnu_icon_newdoc_select_n:I

    invoke-direct {v1, v2, v3, v5, v6}, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;-><init>(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;Lcom/metamoji/nt/NtCommand;II)V

    const/16 v2, 0x41

    aput-object v1, v0, v2

    new-instance v1, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_EDIT_AND_DUPLICATE_DOCUMENT_BY_CURRENT:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    sget-object v3, Lcom/metamoji/nt/NtCommand;->CMD_COPY_CURRENT_DOC:Lcom/metamoji/nt/NtCommand;

    sget v5, Lcom/metamoji/noteanytime/R$string;->NewDocument_CopyDoc:I

    sget v6, Lcom/metamoji/noteanytime/R$drawable;->design1_mnu_icon_copydoc_n:I

    invoke-direct {v1, v2, v3, v5, v6}, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;-><init>(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;Lcom/metamoji/nt/NtCommand;II)V

    const/16 v2, 0x42

    aput-object v1, v0, v2

    new-instance v1, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_LOOK_MANUAL:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    sget-object v3, Lcom/metamoji/nt/NtCommand;->CMD_LOOK_MANUAL:Lcom/metamoji/nt/NtCommand;

    sget v5, Lcom/metamoji/noteanytime/R$string;->Menu_Manual:I

    sget v6, Lcom/metamoji/noteanytime/R$drawable;->menu_anytime_about_manual:I

    invoke-direct {v1, v2, v3, v5, v6}, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;-><init>(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;Lcom/metamoji/nt/NtCommand;II)V

    const/16 v2, 0x43

    aput-object v1, v0, v2

    new-instance v1, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_SHOW_SEARCH_TEXT_BAR:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    sget-object v3, Lcom/metamoji/nt/NtCommand;->CMD_SHOW_SEARCH_TEXT_BAR:Lcom/metamoji/nt/NtCommand;

    sget v5, Lcom/metamoji/noteanytime/R$string;->SEARCH_TEXT_MENU:I

    sget v6, Lcom/metamoji/noteanytime/R$drawable;->menuicon_textsearch:I

    invoke-direct {v1, v2, v3, v5, v6}, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;-><init>(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;Lcom/metamoji/nt/NtCommand;II)V

    const/16 v2, 0x44

    aput-object v1, v0, v2

    new-instance v1, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_ACCOUNT:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    sget-object v3, Lcom/metamoji/nt/NtCommand;->CMD_FORBIZ_ACCOUNT:Lcom/metamoji/nt/NtCommand;

    sget v5, Lcom/metamoji/noteanytime/R$string;->ForBiz_Account:I

    sget v6, Lcom/metamoji/noteanytime/R$drawable;->user_account:I

    invoke-direct {v1, v2, v3, v5, v6}, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;-><init>(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;Lcom/metamoji/nt/NtCommand;II)V

    const/16 v2, 0x45

    aput-object v1, v0, v2

    new-instance v1, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_SUPPORT_LOG_START:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    sget-object v3, Lcom/metamoji/nt/NtCommand;->CMD_SUPPORT_LOG_START:Lcom/metamoji/nt/NtCommand;

    sget v5, Lcom/metamoji/noteanytime/R$string;->APP_SUPPORT_LOG_BEGIN:I

    invoke-direct {v1, v2, v3, v5, v4}, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;-><init>(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;Lcom/metamoji/nt/NtCommand;II)V

    const/16 v2, 0x46

    aput-object v1, v0, v2

    new-instance v1, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_SUPPORT_LOG_END:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    sget-object v3, Lcom/metamoji/nt/NtCommand;->CMD_SUPPORT_LOG_END:Lcom/metamoji/nt/NtCommand;

    sget v5, Lcom/metamoji/noteanytime/R$string;->APP_SUPPORT_LOG_END:I

    invoke-direct {v1, v2, v3, v5, v4}, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;-><init>(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;Lcom/metamoji/nt/NtCommand;II)V

    const/16 v2, 0x47

    aput-object v1, v0, v2

    new-instance v1, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_LOGOUT:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    sget-object v3, Lcom/metamoji/nt/NtCommand;->CMD_FORBIZ_LOGOUT:Lcom/metamoji/nt/NtCommand;

    sget v5, Lcom/metamoji/noteanytime/R$string;->ForBiz_Logout:I

    sget v6, Lcom/metamoji/noteanytime/R$drawable;->user_signout:I

    invoke-direct {v1, v2, v3, v5, v6}, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;-><init>(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;Lcom/metamoji/nt/NtCommand;II)V

    const/16 v2, 0x48

    aput-object v1, v0, v2

    new-instance v1, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_SYSTEM_OPTION:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    sget-object v3, Lcom/metamoji/nt/NtCommand;->CMD_SYSTEM_OPTION:Lcom/metamoji/nt/NtCommand;

    sget v5, Lcom/metamoji/noteanytime/R$string;->Menu_SystemOption:I

    sget v6, Lcom/metamoji/noteanytime/R$drawable;->menuicon_system_n:I

    invoke-direct {v1, v2, v3, v5, v6}, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;-><init>(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;Lcom/metamoji/nt/NtCommand;II)V

    const/16 v2, 0x49

    aput-object v1, v0, v2

    new-instance v1, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_UNDO_REDO_COMB:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    sget-object v3, Lcom/metamoji/nt/NtCommand;->CMD_INVALID:Lcom/metamoji/nt/NtCommand;

    sget v5, Lcom/metamoji/noteanytime/R$drawable;->bar_btn_undo:I

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;-><init>(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;Lcom/metamoji/nt/NtCommand;II)V

    const/16 v2, 0x4a

    aput-object v1, v0, v2

    new-instance v1, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_CABINET_COMMAND_MENU:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    sget-object v3, Lcom/metamoji/nt/NtCommand;->CMD_INVALID:Lcom/metamoji/nt/NtCommand;

    invoke-direct {v1, v2, v3, v4}, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;-><init>(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;Lcom/metamoji/nt/NtCommand;I)V

    const/16 v2, 0x4b

    aput-object v1, v0, v2

    new-instance v1, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_CABINET_SEARCH_MENU:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    sget-object v3, Lcom/metamoji/nt/NtCommand;->CMD_INVALID:Lcom/metamoji/nt/NtCommand;

    sget v5, Lcom/metamoji/noteanytime/R$string;->Cabinet_Search_Button:I

    sget v6, Lcom/metamoji/noteanytime/R$drawable;->menuicon_textsearch:I

    invoke-direct {v1, v2, v3, v5, v6}, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;-><init>(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;Lcom/metamoji/nt/NtCommand;II)V

    const/16 v2, 0x4c

    aput-object v1, v0, v2

    new-instance v1, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_CABINET_SEARCHING_STRING:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    sget-object v3, Lcom/metamoji/nt/NtCommand;->CMD_CABINET_SEARCHING_STRING:Lcom/metamoji/nt/NtCommand;

    sget v5, Lcom/metamoji/noteanytime/R$string;->Cabinet_Search_String_Title:I

    sget v6, Lcom/metamoji/noteanytime/R$drawable;->cabinet_menu_icon_text_n:I

    invoke-direct {v1, v2, v3, v5, v6}, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;-><init>(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;Lcom/metamoji/nt/NtCommand;II)V

    const/16 v2, 0x4d

    aput-object v1, v0, v2

    new-instance v1, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_CABINET_SEARCHING_RELEASE:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    sget-object v3, Lcom/metamoji/nt/NtCommand;->CMD_CABINET_SEARCHING_RELEASE:Lcom/metamoji/nt/NtCommand;

    sget v5, Lcom/metamoji/noteanytime/R$string;->Search_Menu_Lift:I

    sget v6, Lcom/metamoji/noteanytime/R$drawable;->cabinet_menu_icon_lifting_n:I

    invoke-direct {v1, v2, v3, v5, v6}, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;-><init>(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;Lcom/metamoji/nt/NtCommand;II)V

    const/16 v2, 0x4e

    aput-object v1, v0, v2

    new-instance v1, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_ABOUT_MENU:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    sget-object v3, Lcom/metamoji/nt/NtCommand;->CMD_INVALID:Lcom/metamoji/nt/NtCommand;

    sget v5, Lcom/metamoji/noteanytime/R$string;->Menu_About:I

    sget v6, Lcom/metamoji/noteanytime/R$drawable;->mnu_icon_about:I

    invoke-direct {v1, v2, v3, v5, v6}, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;-><init>(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;Lcom/metamoji/nt/NtCommand;II)V

    const/16 v2, 0x4f

    aput-object v1, v0, v2

    new-instance v1, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_CABINET_MAKE_FOLDER:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    sget-object v3, Lcom/metamoji/nt/NtCommand;->CMD_CABINET_MAKE_FOLDER:Lcom/metamoji/nt/NtCommand;

    sget v5, Lcom/metamoji/noteanytime/R$string;->Cabinet_ContextMenu_CreateFolder:I

    sget v6, Lcom/metamoji/noteanytime/R$drawable;->cabinet_menu_icon_add_folder:I

    invoke-direct {v1, v2, v3, v5, v6}, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;-><init>(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;Lcom/metamoji/nt/NtCommand;II)V

    const/16 v2, 0x50

    aput-object v1, v0, v2

    new-instance v1, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_CABINET_SHOW_FOLDERTREE:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    sget-object v3, Lcom/metamoji/nt/NtCommand;->CMD_INVALID:Lcom/metamoji/nt/NtCommand;

    invoke-direct {v1, v2, v3, v4}, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;-><init>(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;Lcom/metamoji/nt/NtCommand;I)V

    const/16 v2, 0x51

    aput-object v1, v0, v2

    new-instance v1, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_CABINET_SORT_CHG:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    sget-object v3, Lcom/metamoji/nt/NtCommand;->CMD_CABINET_SORT_CHG:Lcom/metamoji/nt/NtCommand;

    sget v5, Lcom/metamoji/noteanytime/R$string;->Cabinet_Sort_Dialog_Title:I

    sget v6, Lcom/metamoji/noteanytime/R$drawable;->cabinet_menu_icon_sort_n:I

    invoke-direct {v1, v2, v3, v5, v6}, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;-><init>(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;Lcom/metamoji/nt/NtCommand;II)V

    const/16 v2, 0x52

    aput-object v1, v0, v2

    new-instance v1, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_CABINET_SD_MAKE_DRIVE:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    sget-object v3, Lcom/metamoji/nt/NtCommand;->CMD_CABINET_SD_MAKE_DRIVE:Lcom/metamoji/nt/NtCommand;

    sget v5, Lcom/metamoji/noteanytime/R$string;->CabinetSdMenu_MakeDrive:I

    sget v6, Lcom/metamoji/noteanytime/R$drawable;->create_share_drive:I

    invoke-direct {v1, v2, v3, v5, v6}, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;-><init>(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;Lcom/metamoji/nt/NtCommand;II)V

    const/16 v2, 0x53

    aput-object v1, v0, v2

    new-instance v1, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_CABINET_SD_ADD_MEMBER:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    sget-object v3, Lcom/metamoji/nt/NtCommand;->CMD_CABINET_SD_ADD_MEMBER:Lcom/metamoji/nt/NtCommand;

    sget v5, Lcom/metamoji/noteanytime/R$string;->CabinetSdMenu_AddMember:I

    sget v6, Lcom/metamoji/noteanytime/R$drawable;->mnu_icon_school_sd_add_member:I

    invoke-direct {v1, v2, v3, v5, v6}, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;-><init>(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;Lcom/metamoji/nt/NtCommand;II)V

    const/16 v2, 0x54

    aput-object v1, v0, v2

    new-instance v1, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_COLLABO_BROWSE_OWNER_SITE:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    sget-object v3, Lcom/metamoji/nt/NtCommand;->CMD_COLLABO_BROWSE_OWNER_SITE:Lcom/metamoji/nt/NtCommand;

    sget v5, Lcom/metamoji/noteanytime/R$string;->ShareMenu_Browse_Owner_Site:I

    sget v6, Lcom/metamoji/noteanytime/R$drawable;->menu_icon_share_mng_n:I

    invoke-direct {v1, v2, v3, v5, v6}, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;-><init>(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;Lcom/metamoji/nt/NtCommand;II)V

    const/16 v2, 0x55

    aput-object v1, v0, v2

    new-instance v1, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_LASER_MODE:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    sget-object v3, Lcom/metamoji/nt/NtCommand;->CMD_CAN_NOTEMODE_LASER:Lcom/metamoji/nt/NtCommand;

    invoke-direct {v1, v2, v3, v4}, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;-><init>(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;Lcom/metamoji/nt/NtCommand;I)V

    const/16 v2, 0x56

    aput-object v1, v0, v2

    new-instance v1, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_ERASER_MODE:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    sget-object v3, Lcom/metamoji/nt/NtCommand;->CMD_INVALID:Lcom/metamoji/nt/NtCommand;

    invoke-direct {v1, v2, v3, v4}, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;-><init>(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;Lcom/metamoji/nt/NtCommand;I)V

    const/16 v2, 0x57

    aput-object v1, v0, v2

    new-instance v1, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_SELECT_MODE:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    sget-object v3, Lcom/metamoji/nt/NtCommand;->CMD_INVALID:Lcom/metamoji/nt/NtCommand;

    invoke-direct {v1, v2, v3, v4}, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;-><init>(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;Lcom/metamoji/nt/NtCommand;I)V

    const/16 v2, 0x58

    aput-object v1, v0, v2

    new-instance v1, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_VIEW_LASER_COMB:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    sget-object v3, Lcom/metamoji/nt/NtCommand;->CMD_INVALID:Lcom/metamoji/nt/NtCommand;

    invoke-direct {v1, v2, v3, v4}, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;-><init>(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;Lcom/metamoji/nt/NtCommand;I)V

    const/16 v2, 0x59

    aput-object v1, v0, v2

    new-instance v1, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_MEDIA_FILES:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    sget-object v3, Lcom/metamoji/nt/NtCommand;->CMD_MEDIA_SERVER_UPLOADED_FILES:Lcom/metamoji/nt/NtCommand;

    sget v5, Lcom/metamoji/noteanytime/R$string;->Voice_UploadedFiles_Title:I

    sget v6, Lcom/metamoji/noteanytime/R$drawable;->vc_mediafiles:I

    invoke-direct {v1, v2, v3, v5, v6}, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;-><init>(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;Lcom/metamoji/nt/NtCommand;II)V

    const/16 v2, 0x5a

    aput-object v1, v0, v2

    new-instance v1, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_VC_NAVIGATION:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    sget-object v3, Lcom/metamoji/nt/NtCommand;->CMD_VC_NAVIGATION:Lcom/metamoji/nt/NtCommand;

    sget v5, Lcom/metamoji/noteanytime/R$drawable;->bar_hover_voice:I

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;-><init>(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;Lcom/metamoji/nt/NtCommand;II)V

    const/16 v2, 0x5b

    aput-object v1, v0, v2

    new-instance v1, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_LOOK_LEGAL_NOTICES:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    sget-object v3, Lcom/metamoji/nt/NtCommand;->CMD_LOOK_LEGAL_NOTICES:Lcom/metamoji/nt/NtCommand;

    sget v5, Lcom/metamoji/noteanytime/R$string;->SystemOption_LegalNotices:I

    sget v6, Lcom/metamoji/noteanytime/R$drawable;->menu_icon_notice:I

    invoke-direct {v1, v2, v3, v5, v6}, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;-><init>(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;Lcom/metamoji/nt/NtCommand;II)V

    const/16 v2, 0x5c

    aput-object v1, v0, v2

    new-instance v1, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_CABINET_SYNC_ALL:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    sget-object v3, Lcom/metamoji/nt/NtCommand;->CMD_CABINET_SYNC:Lcom/metamoji/nt/NtCommand;

    sget v5, Lcom/metamoji/noteanytime/R$string;->CabinetSdMenu_FullSync:I

    invoke-direct {v1, v2, v3, v5}, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;-><init>(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;Lcom/metamoji/nt/NtCommand;I)V

    const/16 v2, 0x5d

    aput-object v1, v0, v2

    new-instance v1, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_CABINET_SYNC_CURRENT:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    sget-object v3, Lcom/metamoji/nt/NtCommand;->CMD_CABINET_CURRENT_SYNC:Lcom/metamoji/nt/NtCommand;

    sget v5, Lcom/metamoji/noteanytime/R$string;->CabinetSdMenu_CurrentSync:I

    invoke-direct {v1, v2, v3, v5}, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;-><init>(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;Lcom/metamoji/nt/NtCommand;I)V

    const/16 v2, 0x5e

    aput-object v1, v0, v2

    new-instance v1, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_CABINET_SYNC_BTN:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    sget-object v3, Lcom/metamoji/nt/NtCommand;->CMD_INVALID:Lcom/metamoji/nt/NtCommand;

    invoke-direct {v1, v2, v3, v4}, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;-><init>(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;Lcom/metamoji/nt/NtCommand;I)V

    const/16 v2, 0x5f

    aput-object v1, v0, v2

    new-instance v1, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_CABINET_SYNC_CANCEL_BTN:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    sget-object v3, Lcom/metamoji/nt/NtCommand;->CMD_INVALID:Lcom/metamoji/nt/NtCommand;

    invoke-direct {v1, v2, v3, v4}, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;-><init>(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;Lcom/metamoji/nt/NtCommand;I)V

    const/16 v2, 0x60

    aput-object v1, v0, v2

    new-instance v1, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_CABINET_ADD_MENU:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    sget-object v3, Lcom/metamoji/nt/NtCommand;->CMD_INVALID:Lcom/metamoji/nt/NtCommand;

    invoke-direct {v1, v2, v3, v4}, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;-><init>(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;Lcom/metamoji/nt/NtCommand;I)V

    const/16 v2, 0x61

    aput-object v1, v0, v2

    new-instance v1, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_JUMP_LOCATION_ADD:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    sget-object v3, Lcom/metamoji/nt/NtCommand;->CMD_MEMORY_LOCATION:Lcom/metamoji/nt/NtCommand;

    invoke-direct {v1, v2, v3, v4}, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;-><init>(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;Lcom/metamoji/nt/NtCommand;I)V

    const/16 v2, 0x62

    aput-object v1, v0, v2

    new-instance v1, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_HISTORY_MENU:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    sget-object v3, Lcom/metamoji/nt/NtCommand;->CMD_INVALID:Lcom/metamoji/nt/NtCommand;

    sget v5, Lcom/metamoji/noteanytime/R$string;->Menu_MRU_Notes:I

    sget v6, Lcom/metamoji/noteanytime/R$drawable;->menu_icon_history:I

    invoke-direct {v1, v2, v3, v5, v6}, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;-><init>(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;Lcom/metamoji/nt/NtCommand;II)V

    const/16 v2, 0x63

    aput-object v1, v0, v2

    new-instance v1, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_DRAW_MENU:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    sget-object v3, Lcom/metamoji/nt/NtCommand;->CMD_INVALID:Lcom/metamoji/nt/NtCommand;

    invoke-direct {v1, v2, v3, v4}, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;-><init>(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;Lcom/metamoji/nt/NtCommand;I)V

    const/16 v2, 0x64

    aput-object v1, v0, v2

    new-instance v1, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_DRAW_PHONE_MENU:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    sget-object v3, Lcom/metamoji/nt/NtCommand;->CMD_INVALID:Lcom/metamoji/nt/NtCommand;

    invoke-direct {v1, v2, v3, v4}, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;-><init>(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;Lcom/metamoji/nt/NtCommand;I)V

    const/16 v2, 0x65

    aput-object v1, v0, v2

    new-instance v1, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_COLLABO_MOVE_TO_SHARELAYER:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    sget-object v3, Lcom/metamoji/nt/NtCommand;->CMD_COLLABO_MOVE_TO_SHARELAYER:Lcom/metamoji/nt/NtCommand;

    sget v5, Lcom/metamoji/noteanytime/R$string;->ShareMenu_Move_To_ShareLayer:I

    invoke-direct {v1, v2, v3, v5}, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;-><init>(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;Lcom/metamoji/nt/NtCommand;I)V

    const/16 v2, 0x66

    aput-object v1, v0, v2

    new-instance v1, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_EDIT_MENU:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    sget-object v3, Lcom/metamoji/nt/NtCommand;->CMD_INVALID:Lcom/metamoji/nt/NtCommand;

    invoke-direct {v1, v2, v3, v4}, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;-><init>(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;Lcom/metamoji/nt/NtCommand;I)V

    const/16 v2, 0x67

    aput-object v1, v0, v2

    new-instance v1, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_CUT:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    sget-object v3, Lcom/metamoji/nt/NtCommand;->CMD_CUT:Lcom/metamoji/nt/NtCommand;

    sget v5, Lcom/metamoji/noteanytime/R$string;->ContextMenu_Cut:I

    invoke-direct {v1, v2, v3, v5}, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;-><init>(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;Lcom/metamoji/nt/NtCommand;I)V

    const/16 v2, 0x68

    aput-object v1, v0, v2

    new-instance v1, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_COPY:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    sget-object v3, Lcom/metamoji/nt/NtCommand;->CMD_COPY:Lcom/metamoji/nt/NtCommand;

    sget v5, Lcom/metamoji/noteanytime/R$string;->ContextMenu_Copy:I

    invoke-direct {v1, v2, v3, v5}, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;-><init>(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;Lcom/metamoji/nt/NtCommand;I)V

    const/16 v2, 0x69

    aput-object v1, v0, v2

    new-instance v1, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_PASTE:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    sget-object v3, Lcom/metamoji/nt/NtCommand;->CMD_PASTE:Lcom/metamoji/nt/NtCommand;

    sget v5, Lcom/metamoji/noteanytime/R$string;->ContextMenu_Paste:I

    invoke-direct {v1, v2, v3, v5}, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;-><init>(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;Lcom/metamoji/nt/NtCommand;I)V

    const/16 v2, 0x6a

    aput-object v1, v0, v2

    new-instance v1, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_REMOVE:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    sget-object v3, Lcom/metamoji/nt/NtCommand;->CMD_REMOVE:Lcom/metamoji/nt/NtCommand;

    sget v5, Lcom/metamoji/noteanytime/R$string;->ContextMenu_Remove:I

    invoke-direct {v1, v2, v3, v5}, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;-><init>(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;Lcom/metamoji/nt/NtCommand;I)V

    const/16 v2, 0x6b

    aput-object v1, v0, v2

    new-instance v1, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_ADD_TEXT_UNIT:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    sget-object v3, Lcom/metamoji/nt/NtCommand;->CMD_ADD_TEXT_UNIT:Lcom/metamoji/nt/NtCommand;

    sget v5, Lcom/metamoji/noteanytime/R$string;->ContextMenu_Add_Text:I

    invoke-direct {v1, v2, v3, v5}, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;-><init>(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;Lcom/metamoji/nt/NtCommand;I)V

    const/16 v2, 0x6c

    aput-object v1, v0, v2

    new-instance v1, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_INSERT_SHAPE:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    sget-object v3, Lcom/metamoji/nt/NtCommand;->CMD_PUTIN_SHAPE:Lcom/metamoji/nt/NtCommand;

    invoke-direct {v1, v2, v3, v4}, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;-><init>(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;Lcom/metamoji/nt/NtCommand;I)V

    const/16 v2, 0x6d

    aput-object v1, v0, v2

    new-instance v1, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_OPERATION_MENU:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    sget-object v3, Lcom/metamoji/nt/NtCommand;->CMD_INVALID:Lcom/metamoji/nt/NtCommand;

    sget v5, Lcom/metamoji/noteanytime/R$string;->ContextMenu_Operation:I

    invoke-direct {v1, v2, v3, v5}, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;-><init>(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;Lcom/metamoji/nt/NtCommand;I)V

    const/16 v2, 0x6e

    aput-object v1, v0, v2

    new-instance v1, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_GROUPING:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    sget-object v3, Lcom/metamoji/nt/NtCommand;->CMD_GROUP:Lcom/metamoji/nt/NtCommand;

    sget v5, Lcom/metamoji/noteanytime/R$string;->ContextMenu_Group:I

    invoke-direct {v1, v2, v3, v5}, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;-><init>(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;Lcom/metamoji/nt/NtCommand;I)V

    const/16 v2, 0x6f

    aput-object v1, v0, v2

    new-instance v1, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_UNGROUP:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    sget-object v3, Lcom/metamoji/nt/NtCommand;->CMD_UNGROUP:Lcom/metamoji/nt/NtCommand;

    sget v5, Lcom/metamoji/noteanytime/R$string;->ContextMenu_Ungroup:I

    invoke-direct {v1, v2, v3, v5}, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;-><init>(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;Lcom/metamoji/nt/NtCommand;I)V

    const/16 v2, 0x70

    aput-object v1, v0, v2

    new-instance v1, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_CHANGE_STYLE:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    sget-object v3, Lcom/metamoji/nt/NtCommand;->CMD_CHANGE_STYLE:Lcom/metamoji/nt/NtCommand;

    sget v5, Lcom/metamoji/noteanytime/R$string;->ContextMenu_Change_Style:I

    invoke-direct {v1, v2, v3, v5}, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;-><init>(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;Lcom/metamoji/nt/NtCommand;I)V

    const/16 v2, 0x71

    aput-object v1, v0, v2

    new-instance v1, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_CHANGE_SHAPE_STYLE:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    sget-object v3, Lcom/metamoji/nt/NtCommand;->CMD_CHANGE_SHAPE_STYLE:Lcom/metamoji/nt/NtCommand;

    sget v5, Lcom/metamoji/noteanytime/R$string;->ShapeChangeStyle:I

    invoke-direct {v1, v2, v3, v5}, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;-><init>(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;Lcom/metamoji/nt/NtCommand;I)V

    const/16 v2, 0x72

    aput-object v1, v0, v2

    new-instance v1, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_BRING_TO_FRONT:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    sget-object v3, Lcom/metamoji/nt/NtCommand;->CMD_BRING_TO_FRONT:Lcom/metamoji/nt/NtCommand;

    sget v5, Lcom/metamoji/noteanytime/R$string;->ContextMenu_Bring_To_Front:I

    invoke-direct {v1, v2, v3, v5}, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;-><init>(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;Lcom/metamoji/nt/NtCommand;I)V

    const/16 v2, 0x73

    aput-object v1, v0, v2

    new-instance v1, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_BRING_TO_BACK:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    sget-object v3, Lcom/metamoji/nt/NtCommand;->CMD_SEND_TO_BACK:Lcom/metamoji/nt/NtCommand;

    sget v5, Lcom/metamoji/noteanytime/R$string;->ContextMenu_Send_To_Back:I

    invoke-direct {v1, v2, v3, v5}, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;-><init>(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;Lcom/metamoji/nt/NtCommand;I)V

    const/16 v2, 0x74

    aput-object v1, v0, v2

    new-instance v1, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_SELECT_BELOW:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    sget-object v3, Lcom/metamoji/nt/NtCommand;->CMD_SELECT_BELOW:Lcom/metamoji/nt/NtCommand;

    sget v5, Lcom/metamoji/noteanytime/R$string;->ContextMenu_Select_Below:I

    invoke-direct {v1, v2, v3, v5}, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;-><init>(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;Lcom/metamoji/nt/NtCommand;I)V

    const/16 v2, 0x75

    aput-object v1, v0, v2

    new-instance v1, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_REGISTERMYITEM:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    sget-object v3, Lcom/metamoji/nt/NtCommand;->CMD_REGISTERMYITEM:Lcom/metamoji/nt/NtCommand;

    sget v5, Lcom/metamoji/noteanytime/R$string;->ContextMenu_Register_Item:I

    invoke-direct {v1, v2, v3, v5}, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;-><init>(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;Lcom/metamoji/nt/NtCommand;I)V

    const/16 v2, 0x76

    aput-object v1, v0, v2

    new-instance v1, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_SHOW_OBJECT_INFO_VIEW:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    sget-object v3, Lcom/metamoji/nt/NtCommand;->CMD_SHOW_OBJECT_INFO_VIEW:Lcom/metamoji/nt/NtCommand;

    sget v5, Lcom/metamoji/noteanytime/R$string;->CONTEXT_SHARE_OBJECT_INFO_VIEW:I

    invoke-direct {v1, v2, v3, v5}, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;-><init>(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;Lcom/metamoji/nt/NtCommand;I)V

    const/16 v2, 0x77

    aput-object v1, v0, v2

    new-instance v1, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_ORDER_MENU:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    sget-object v3, Lcom/metamoji/nt/NtCommand;->CMD_INVALID:Lcom/metamoji/nt/NtCommand;

    sget v5, Lcom/metamoji/noteanytime/R$string;->CONTEXTMENU_ORDER:I

    invoke-direct {v1, v2, v3, v5}, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;-><init>(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;Lcom/metamoji/nt/NtCommand;I)V

    const/16 v2, 0x78

    aput-object v1, v0, v2

    new-instance v1, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_ORDER_LEFT:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    sget-object v3, Lcom/metamoji/nt/NtCommand;->CMD_ORDER_LEFT:Lcom/metamoji/nt/NtCommand;

    sget v5, Lcom/metamoji/noteanytime/R$string;->CONTEXTMENU_ORDER_LEFT:I

    invoke-direct {v1, v2, v3, v5}, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;-><init>(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;Lcom/metamoji/nt/NtCommand;I)V

    const/16 v2, 0x79

    aput-object v1, v0, v2

    new-instance v1, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_ORDER_HORIZONTAL:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    sget-object v3, Lcom/metamoji/nt/NtCommand;->CMD_ORDER_HORIZONTAL:Lcom/metamoji/nt/NtCommand;

    sget v5, Lcom/metamoji/noteanytime/R$string;->CONTEXTMENU_ORDER_HORIZONTAL:I

    invoke-direct {v1, v2, v3, v5}, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;-><init>(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;Lcom/metamoji/nt/NtCommand;I)V

    const/16 v2, 0x7a

    aput-object v1, v0, v2

    new-instance v1, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_ORDER_RIGHT:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    sget-object v3, Lcom/metamoji/nt/NtCommand;->CMD_ORDER_RIGHT:Lcom/metamoji/nt/NtCommand;

    sget v5, Lcom/metamoji/noteanytime/R$string;->CONTEXTMENU_ORDER_RIGHT:I

    invoke-direct {v1, v2, v3, v5}, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;-><init>(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;Lcom/metamoji/nt/NtCommand;I)V

    const/16 v2, 0x7b

    aput-object v1, v0, v2

    new-instance v1, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_ORDER_TOP:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    sget-object v3, Lcom/metamoji/nt/NtCommand;->CMD_ORDER_TOP:Lcom/metamoji/nt/NtCommand;

    sget v5, Lcom/metamoji/noteanytime/R$string;->CONTEXTMENU_ORDER_TOP:I

    invoke-direct {v1, v2, v3, v5}, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;-><init>(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;Lcom/metamoji/nt/NtCommand;I)V

    const/16 v2, 0x7c

    aput-object v1, v0, v2

    new-instance v1, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_ORDER_BOTOTM:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    sget-object v3, Lcom/metamoji/nt/NtCommand;->CMD_ORDER_BOTTOM:Lcom/metamoji/nt/NtCommand;

    sget v5, Lcom/metamoji/noteanytime/R$string;->CONTEXTMENU_ORDER_BOTTOM:I

    invoke-direct {v1, v2, v3, v5}, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;-><init>(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;Lcom/metamoji/nt/NtCommand;I)V

    const/16 v2, 0x7d

    aput-object v1, v0, v2

    new-instance v1, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_ORDER_VERTICAL:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    sget-object v3, Lcom/metamoji/nt/NtCommand;->CMD_ORDER_VERTICAL:Lcom/metamoji/nt/NtCommand;

    sget v5, Lcom/metamoji/noteanytime/R$string;->CONTEXTMENU_ORDER_VERTICAL:I

    invoke-direct {v1, v2, v3, v5}, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;-><init>(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;Lcom/metamoji/nt/NtCommand;I)V

    const/16 v2, 0x7e

    aput-object v1, v0, v2

    new-instance v1, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_ORDER_HORIZONTAL_ADJUST:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    sget-object v3, Lcom/metamoji/nt/NtCommand;->CMD_ORDER_HORIZONTAL_ADJUST:Lcom/metamoji/nt/NtCommand;

    sget v5, Lcom/metamoji/noteanytime/R$string;->CONTEXTMENU_ORDER_HORIZONTAL_ADJUST:I

    invoke-direct {v1, v2, v3, v5}, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;-><init>(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;Lcom/metamoji/nt/NtCommand;I)V

    const/16 v2, 0x7f

    aput-object v1, v0, v2

    new-instance v1, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_ORDER_VERTICAL_ADJUST:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    sget-object v3, Lcom/metamoji/nt/NtCommand;->CMD_ORDER_VERTICAL_ADJUST:Lcom/metamoji/nt/NtCommand;

    sget v5, Lcom/metamoji/noteanytime/R$string;->CONTEXTMENU_ORDER_VERTICAL_ADJUST:I

    invoke-direct {v1, v2, v3, v5}, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;-><init>(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;Lcom/metamoji/nt/NtCommand;I)V

    const/16 v2, 0x80

    aput-object v1, v0, v2

    new-instance v1, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_ORDER_LATTICE:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    sget-object v3, Lcom/metamoji/nt/NtCommand;->CMD_ORDER_LATTICE:Lcom/metamoji/nt/NtCommand;

    invoke-direct {v1, v2, v3, v4}, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;-><init>(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;Lcom/metamoji/nt/NtCommand;I)V

    const/16 v2, 0x81

    aput-object v1, v0, v2

    new-instance v1, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_TRANS_TEXT_MENU:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    sget-object v3, Lcom/metamoji/nt/NtCommand;->CMD_INVALID:Lcom/metamoji/nt/NtCommand;

    invoke-direct {v1, v2, v3, v4}, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;-><init>(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;Lcom/metamoji/nt/NtCommand;I)V

    const/16 v2, 0x82

    aput-object v1, v0, v2

    new-instance v1, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_TEXTUNIT_COMBINE:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    sget-object v3, Lcom/metamoji/nt/NtCommand;->CMD_TEXTUNIT_COMBINE:Lcom/metamoji/nt/NtCommand;

    sget v5, Lcom/metamoji/noteanytime/R$string;->COMBINE_TEXTUNIT:I

    invoke-direct {v1, v2, v3, v5}, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;-><init>(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;Lcom/metamoji/nt/NtCommand;I)V

    const/16 v2, 0x83

    aput-object v1, v0, v2

    new-instance v1, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_EDIT_CONVERTTEXT_TOFONT:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    sget-object v3, Lcom/metamoji/nt/NtCommand;->CMD_EDIT_CONVERTTEXT_TOFONT:Lcom/metamoji/nt/NtCommand;

    sget v5, Lcom/metamoji/noteanytime/R$string;->CONVERT_TEXT_TO_FONTTEXT:I

    invoke-direct {v1, v2, v3, v5}, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;-><init>(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;Lcom/metamoji/nt/NtCommand;I)V

    const/16 v2, 0x84

    aput-object v1, v0, v2

    new-instance v1, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_EDIT_CONVERTTEXT_TOSTROKE:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    sget-object v3, Lcom/metamoji/nt/NtCommand;->CMD_EDIT_CONVERTTEXT_TOSTROKE:Lcom/metamoji/nt/NtCommand;

    sget v5, Lcom/metamoji/noteanytime/R$string;->CONVERT_TEXT_TO_STROKETEXT:I

    invoke-direct {v1, v2, v3, v5}, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;-><init>(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;Lcom/metamoji/nt/NtCommand;I)V

    const/16 v2, 0x85

    aput-object v1, v0, v2

    new-instance v1, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_EDIT_IMAGE:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    sget-object v3, Lcom/metamoji/nt/NtCommand;->CMD_EDIT_PHOTO:Lcom/metamoji/nt/NtCommand;

    sget v5, Lcom/metamoji/noteanytime/R$string;->ContextMenu_EditImage:I

    invoke-direct {v1, v2, v3, v5}, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;-><init>(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;Lcom/metamoji/nt/NtCommand;I)V

    const/16 v2, 0x86

    aput-object v1, v0, v2

    new-instance v1, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_SAVE_IMAGE_TO_ALBUM:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    sget-object v3, Lcom/metamoji/nt/NtCommand;->CMD_SAVE_IMAGE_TO_ALBUM:Lcom/metamoji/nt/NtCommand;

    invoke-direct {v1, v2, v3, v4}, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;-><init>(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;Lcom/metamoji/nt/NtCommand;I)V

    const/16 v2, 0x87

    aput-object v1, v0, v2

    new-instance v1, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_CHANGE_WEBPAGE:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    sget-object v3, Lcom/metamoji/nt/NtCommand;->CMD_CHANGE_WEBPAGE:Lcom/metamoji/nt/NtCommand;

    sget v5, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_OPEN_IN_BROWSER:I

    invoke-direct {v1, v2, v3, v5}, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;-><init>(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;Lcom/metamoji/nt/NtCommand;I)V

    const/16 v2, 0x88

    aput-object v1, v0, v2

    new-instance v1, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_EDIT_WEBIMAGE:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    sget-object v3, Lcom/metamoji/nt/NtCommand;->CMD_EDIT_WEBIMAGE:Lcom/metamoji/nt/NtCommand;

    sget v5, Lcom/metamoji/noteanytime/R$string;->ContextMenu_EditWebPage:I

    invoke-direct {v1, v2, v3, v5}, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;-><init>(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;Lcom/metamoji/nt/NtCommand;I)V

    const/16 v2, 0x89

    aput-object v1, v0, v2

    new-instance v1, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_VOICE_MENU:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    sget-object v3, Lcom/metamoji/nt/NtCommand;->CMD_INVALID:Lcom/metamoji/nt/NtCommand;

    sget v5, Lcom/metamoji/noteanytime/R$string;->Voice_Menu:I

    invoke-direct {v1, v2, v3, v5}, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;-><init>(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;Lcom/metamoji/nt/NtCommand;I)V

    const/16 v2, 0x8a

    aput-object v1, v0, v2

    new-instance v1, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_VC_PLAY_FROM_AUTHOR_INFO:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    sget-object v3, Lcom/metamoji/nt/NtCommand;->CMD_VC_PLAY_FROM_AUTHOR_INFO:Lcom/metamoji/nt/NtCommand;

    sget v5, Lcom/metamoji/noteanytime/R$string;->Voice_PlayFromCreateTime:I

    invoke-direct {v1, v2, v3, v5}, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;-><init>(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;Lcom/metamoji/nt/NtCommand;I)V

    const/16 v2, 0x8b

    aput-object v1, v0, v2

    new-instance v1, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_VC_PLAY_FROM_VOICE_TAG:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    sget-object v3, Lcom/metamoji/nt/NtCommand;->CMD_VC_PLAY_FROM_VOICE_TAG:Lcom/metamoji/nt/NtCommand;

    sget v5, Lcom/metamoji/noteanytime/R$string;->Voice_PlayTag:I

    invoke-direct {v1, v2, v3, v5}, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;-><init>(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;Lcom/metamoji/nt/NtCommand;I)V

    const/16 v2, 0x8c

    aput-object v1, v0, v2

    new-instance v1, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_VC_DETACH_VOICE_TAG_SELECTED_OBJECTS:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    sget-object v3, Lcom/metamoji/nt/NtCommand;->CMD_VC_DETACH_VOICE_TAG_SELECTED_OBJECTS:Lcom/metamoji/nt/NtCommand;

    sget v5, Lcom/metamoji/noteanytime/R$string;->Voice_DetachLink:I

    invoke-direct {v1, v2, v3, v5}, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;-><init>(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;Lcom/metamoji/nt/NtCommand;I)V

    const/16 v2, 0x8d

    aput-object v1, v0, v2

    new-instance v1, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_VC_SHOW_PLAYLIST:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    sget-object v3, Lcom/metamoji/nt/NtCommand;->CMD_VC_SHOW_PLAYLIST:Lcom/metamoji/nt/NtCommand;

    sget v5, Lcom/metamoji/noteanytime/R$string;->Voice_ShowPlaylist:I

    invoke-direct {v1, v2, v3, v5}, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;-><init>(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;Lcom/metamoji/nt/NtCommand;I)V

    const/16 v2, 0x8e

    aput-object v1, v0, v2

    new-instance v1, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_VC_SHOW_WAVE_VIEW:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    sget-object v3, Lcom/metamoji/nt/NtCommand;->CMD_VC_SHOW_WAVE_VIEW:Lcom/metamoji/nt/NtCommand;

    sget v5, Lcom/metamoji/noteanytime/R$string;->Voice_SshowWaveView:I

    invoke-direct {v1, v2, v3, v5}, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;-><init>(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;Lcom/metamoji/nt/NtCommand;I)V

    const/16 v2, 0x8f

    aput-object v1, v0, v2

    new-instance v1, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_VC_ADD_INDEX:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    sget-object v3, Lcom/metamoji/nt/NtCommand;->CMD_VC_ADD_INDEX:Lcom/metamoji/nt/NtCommand;

    sget v5, Lcom/metamoji/noteanytime/R$string;->Voice_AddLabel:I

    invoke-direct {v1, v2, v3, v5}, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;-><init>(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;Lcom/metamoji/nt/NtCommand;I)V

    const/16 v2, 0x90

    aput-object v1, v0, v2

    new-instance v1, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_VC_PALLET_REC_STOP:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    sget-object v3, Lcom/metamoji/nt/NtCommand;->CMD_VC_START_RECORDING:Lcom/metamoji/nt/NtCommand;

    invoke-direct {v1, v2, v3, v4}, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;-><init>(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;Lcom/metamoji/nt/NtCommand;I)V

    const/16 v2, 0x91

    aput-object v1, v0, v2

    new-instance v1, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_VC_PALLET_PLAY_PAUSE_INDEX:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    sget-object v3, Lcom/metamoji/nt/NtCommand;->CMD_VC_PLAY_AND_SHOW_PLAYER_BAR:Lcom/metamoji/nt/NtCommand;

    invoke-direct {v1, v2, v3, v4}, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;-><init>(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;Lcom/metamoji/nt/NtCommand;I)V

    const/16 v2, 0x92

    aput-object v1, v0, v2

    new-instance v1, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_VC_PALLET_SETTING:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    sget-object v3, Lcom/metamoji/nt/NtCommand;->CMD_VC_PREFERENCES:Lcom/metamoji/nt/NtCommand;

    invoke-direct {v1, v2, v3, v4}, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;-><init>(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;Lcom/metamoji/nt/NtCommand;I)V

    const/16 v2, 0x93

    aput-object v1, v0, v2

    new-instance v1, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_TEXTUNIT_STYLE:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    sget-object v3, Lcom/metamoji/nt/NtCommand;->CMD_TEXTUNIT_STYLE:Lcom/metamoji/nt/NtCommand;

    sget v5, Lcom/metamoji/noteanytime/R$string;->ContextMenu_TextUnitStyle:I

    invoke-direct {v1, v2, v3, v5}, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;-><init>(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;Lcom/metamoji/nt/NtCommand;I)V

    const/16 v2, 0x94

    aput-object v1, v0, v2

    new-instance v1, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_TEXTUNIT_STYLE_TO_SYSTEM:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    sget-object v3, Lcom/metamoji/nt/NtCommand;->CMD_TEXTUNIT_STYLE_TO_SYSTEM:Lcom/metamoji/nt/NtCommand;

    sget v5, Lcom/metamoji/noteanytime/R$string;->ContextMenu_TextUnitStyle_To_System:I

    invoke-direct {v1, v2, v3, v5}, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;-><init>(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;Lcom/metamoji/nt/NtCommand;I)V

    const/16 v2, 0x95

    aput-object v1, v0, v2

    new-instance v1, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_TEXT_CTX_MENU:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    sget-object v3, Lcom/metamoji/nt/NtCommand;->CMD_INVALID:Lcom/metamoji/nt/NtCommand;

    invoke-direct {v1, v2, v3, v4}, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;-><init>(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;Lcom/metamoji/nt/NtCommand;I)V

    const/16 v2, 0x96

    aput-object v1, v0, v2

    new-instance v1, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_TEXT_CTX_SELECT:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    sget-object v3, Lcom/metamoji/nt/NtCommand;->CMD_INVALID:Lcom/metamoji/nt/NtCommand;

    sget v5, Lcom/metamoji/noteanytime/R$string;->ContextMenu_Select:I

    invoke-direct {v1, v2, v3, v5}, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;-><init>(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;Lcom/metamoji/nt/NtCommand;I)V

    const/16 v2, 0x97

    aput-object v1, v0, v2

    new-instance v1, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_TEXT_CTX_SELECTALL:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    sget-object v3, Lcom/metamoji/nt/NtCommand;->CMD_INVALID:Lcom/metamoji/nt/NtCommand;

    sget v5, Lcom/metamoji/noteanytime/R$string;->ContextMenu_SelectAll:I

    invoke-direct {v1, v2, v3, v5}, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;-><init>(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;Lcom/metamoji/nt/NtCommand;I)V

    const/16 v2, 0x98

    aput-object v1, v0, v2

    new-instance v1, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_TEXT_CTX_EDIT_MENU:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    sget-object v3, Lcom/metamoji/nt/NtCommand;->CMD_INVALID:Lcom/metamoji/nt/NtCommand;

    invoke-direct {v1, v2, v3, v4}, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;-><init>(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;Lcom/metamoji/nt/NtCommand;I)V

    const/16 v2, 0x99

    aput-object v1, v0, v2

    new-instance v1, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_TEXT_CTX_CUT:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    sget-object v3, Lcom/metamoji/nt/NtCommand;->CMD_INVALID:Lcom/metamoji/nt/NtCommand;

    sget v5, Lcom/metamoji/noteanytime/R$string;->ContextMenu_Cut:I

    invoke-direct {v1, v2, v3, v5}, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;-><init>(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;Lcom/metamoji/nt/NtCommand;I)V

    const/16 v2, 0x9a

    aput-object v1, v0, v2

    new-instance v1, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_TEXT_CTX_COPY:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    sget-object v3, Lcom/metamoji/nt/NtCommand;->CMD_INVALID:Lcom/metamoji/nt/NtCommand;

    sget v5, Lcom/metamoji/noteanytime/R$string;->ContextMenu_Copy:I

    invoke-direct {v1, v2, v3, v5}, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;-><init>(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;Lcom/metamoji/nt/NtCommand;I)V

    const/16 v2, 0x9b

    aput-object v1, v0, v2

    new-instance v1, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_TEXT_CTX_PASTE:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    sget-object v3, Lcom/metamoji/nt/NtCommand;->CMD_INVALID:Lcom/metamoji/nt/NtCommand;

    sget v5, Lcom/metamoji/noteanytime/R$string;->ContextMenu_Paste:I

    invoke-direct {v1, v2, v3, v5}, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;-><init>(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;Lcom/metamoji/nt/NtCommand;I)V

    const/16 v2, 0x9c

    aput-object v1, v0, v2

    new-instance v1, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_TEXT_CTX_REMOVE:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    sget-object v3, Lcom/metamoji/nt/NtCommand;->CMD_INVALID:Lcom/metamoji/nt/NtCommand;

    sget v5, Lcom/metamoji/noteanytime/R$string;->ContextMenu_Remove:I

    invoke-direct {v1, v2, v3, v5}, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;-><init>(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;Lcom/metamoji/nt/NtCommand;I)V

    const/16 v2, 0x9d

    aput-object v1, v0, v2

    new-instance v1, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_TEXT_CTX_DECO_MENU:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    sget-object v3, Lcom/metamoji/nt/NtCommand;->CMD_INVALID:Lcom/metamoji/nt/NtCommand;

    sget v5, Lcom/metamoji/noteanytime/R$string;->ContextMenu_CharDeco:I

    invoke-direct {v1, v2, v3, v5}, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;-><init>(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;Lcom/metamoji/nt/NtCommand;I)V

    const/16 v2, 0x9e

    aput-object v1, v0, v2

    new-instance v1, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_TEXT_CTX_TEXTSTROKE_PEN:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    sget-object v3, Lcom/metamoji/nt/NtCommand;->CMD_INVALID:Lcom/metamoji/nt/NtCommand;

    sget v5, Lcom/metamoji/noteanytime/R$string;->ContextMenu_TextStroke_Pen:I

    invoke-direct {v1, v2, v3, v5}, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;-><init>(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;Lcom/metamoji/nt/NtCommand;I)V

    const/16 v2, 0x9f

    aput-object v1, v0, v2

    new-instance v1, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_TEXT_CTX_TEXTFONT:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    sget-object v3, Lcom/metamoji/nt/NtCommand;->CMD_INVALID:Lcom/metamoji/nt/NtCommand;

    sget v5, Lcom/metamoji/noteanytime/R$string;->ContextMenu_TextFont:I

    invoke-direct {v1, v2, v3, v5}, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;-><init>(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;Lcom/metamoji/nt/NtCommand;I)V

    const/16 v2, 0xa0

    aput-object v1, v0, v2

    new-instance v1, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_TEXT_CTX_TEXTSIZE:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    sget-object v3, Lcom/metamoji/nt/NtCommand;->CMD_INVALID:Lcom/metamoji/nt/NtCommand;

    sget v5, Lcom/metamoji/noteanytime/R$string;->ContextMenu_TextSize:I

    invoke-direct {v1, v2, v3, v5}, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;-><init>(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;Lcom/metamoji/nt/NtCommand;I)V

    const/16 v2, 0xa1

    aput-object v1, v0, v2

    new-instance v1, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_TEXT_CTX_TEXTCOLOR:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    sget-object v3, Lcom/metamoji/nt/NtCommand;->CMD_INVALID:Lcom/metamoji/nt/NtCommand;

    sget v5, Lcom/metamoji/noteanytime/R$string;->ContextMenu_TextColor:I

    invoke-direct {v1, v2, v3, v5}, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;-><init>(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;Lcom/metamoji/nt/NtCommand;I)V

    const/16 v2, 0xa2

    aput-object v1, v0, v2

    new-instance v1, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_TEXT_CTX_BACKGROUNDCOLOR:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    sget-object v3, Lcom/metamoji/nt/NtCommand;->CMD_INVALID:Lcom/metamoji/nt/NtCommand;

    sget v5, Lcom/metamoji/noteanytime/R$string;->ContextMenu_TextBold:I

    invoke-direct {v1, v2, v3, v5}, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;-><init>(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;Lcom/metamoji/nt/NtCommand;I)V

    const/16 v2, 0xa3

    aput-object v1, v0, v2

    new-instance v1, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_TEXT_CTX_TEXTBOLD:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    sget-object v3, Lcom/metamoji/nt/NtCommand;->CMD_INVALID:Lcom/metamoji/nt/NtCommand;

    sget v5, Lcom/metamoji/noteanytime/R$string;->ContextMenu_TextBold:I

    invoke-direct {v1, v2, v3, v5}, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;-><init>(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;Lcom/metamoji/nt/NtCommand;I)V

    const/16 v2, 0xa4

    aput-object v1, v0, v2

    new-instance v1, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_TEXT_CTX_TEXTITALIC:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    sget-object v3, Lcom/metamoji/nt/NtCommand;->CMD_INVALID:Lcom/metamoji/nt/NtCommand;

    sget v5, Lcom/metamoji/noteanytime/R$string;->CONTEXTMENU_TEXTITALIC:I

    invoke-direct {v1, v2, v3, v5}, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;-><init>(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;Lcom/metamoji/nt/NtCommand;I)V

    const/16 v2, 0xa5

    aput-object v1, v0, v2

    new-instance v1, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_TEXT_CTX_TEXTUNDERLINE:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    sget-object v3, Lcom/metamoji/nt/NtCommand;->CMD_INVALID:Lcom/metamoji/nt/NtCommand;

    sget v5, Lcom/metamoji/noteanytime/R$string;->ContextMenu_TextUnderline:I

    invoke-direct {v1, v2, v3, v5}, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;-><init>(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;Lcom/metamoji/nt/NtCommand;I)V

    const/16 v2, 0xa6

    aput-object v1, v0, v2

    new-instance v1, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_TEXT_CTX_TEXTSTRIKETROUGH:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    sget-object v3, Lcom/metamoji/nt/NtCommand;->CMD_INVALID:Lcom/metamoji/nt/NtCommand;

    sget v5, Lcom/metamoji/noteanytime/R$string;->ContextMenu_TextStriketrough:I

    invoke-direct {v1, v2, v3, v5}, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;-><init>(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;Lcom/metamoji/nt/NtCommand;I)V

    const/16 v2, 0xa7

    aput-object v1, v0, v2

    new-instance v1, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_TEXT_CTX_TEXTALIGN:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    sget-object v3, Lcom/metamoji/nt/NtCommand;->CMD_INVALID:Lcom/metamoji/nt/NtCommand;

    sget v5, Lcom/metamoji/noteanytime/R$string;->ContextMenu_TextAlign:I

    invoke-direct {v1, v2, v3, v5}, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;-><init>(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;Lcom/metamoji/nt/NtCommand;I)V

    const/16 v2, 0xa8

    aput-object v1, v0, v2

    new-instance v1, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_TEXT_CTX_TEXTALIGN_LEFT:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    sget-object v3, Lcom/metamoji/nt/NtCommand;->CMD_INVALID:Lcom/metamoji/nt/NtCommand;

    sget v5, Lcom/metamoji/noteanytime/R$string;->ContextMenu_TextAlign_Left:I

    invoke-direct {v1, v2, v3, v5}, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;-><init>(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;Lcom/metamoji/nt/NtCommand;I)V

    const/16 v2, 0xa9

    aput-object v1, v0, v2

    new-instance v1, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_TEXT_CTX_TEXTALIGN_CENTER:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    sget-object v3, Lcom/metamoji/nt/NtCommand;->CMD_INVALID:Lcom/metamoji/nt/NtCommand;

    sget v5, Lcom/metamoji/noteanytime/R$string;->ContextMenu_TextAlign_Center:I

    invoke-direct {v1, v2, v3, v5}, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;-><init>(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;Lcom/metamoji/nt/NtCommand;I)V

    const/16 v2, 0xaa

    aput-object v1, v0, v2

    new-instance v1, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_TEXT_CTX_TEXTALIGN_RIGHT:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    sget-object v3, Lcom/metamoji/nt/NtCommand;->CMD_INVALID:Lcom/metamoji/nt/NtCommand;

    sget v5, Lcom/metamoji/noteanytime/R$string;->ContextMenu_TextAlign_Right:I

    invoke-direct {v1, v2, v3, v5}, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;-><init>(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;Lcom/metamoji/nt/NtCommand;I)V

    const/16 v2, 0xab

    aput-object v1, v0, v2

    new-instance v1, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_TEXT_CTX_BULLETEDLIST_MENU:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    sget-object v3, Lcom/metamoji/nt/NtCommand;->CMD_INVALID:Lcom/metamoji/nt/NtCommand;

    sget v5, Lcom/metamoji/noteanytime/R$string;->CONTEXTMENU_TEXT_BULLETEDLIST_COMMAND:I

    invoke-direct {v1, v2, v3, v5}, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;-><init>(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;Lcom/metamoji/nt/NtCommand;I)V

    const/16 v2, 0xac

    aput-object v1, v0, v2

    new-instance v1, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_TEXT_CTX_TEXT_BULLETEDLIST:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    sget-object v3, Lcom/metamoji/nt/NtCommand;->CMD_INVALID:Lcom/metamoji/nt/NtCommand;

    sget v5, Lcom/metamoji/noteanytime/R$string;->CONTEXTMENU_TEXT_BULLETEDLIST:I

    invoke-direct {v1, v2, v3, v5}, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;-><init>(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;Lcom/metamoji/nt/NtCommand;I)V

    const/16 v2, 0xad

    aput-object v1, v0, v2

    new-instance v1, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_TEXT_CTX_TEXT_NUMBEREDLIST:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    sget-object v3, Lcom/metamoji/nt/NtCommand;->CMD_INVALID:Lcom/metamoji/nt/NtCommand;

    sget v5, Lcom/metamoji/noteanytime/R$string;->CONTEXTMENU_TEXT_NUMBEREDLIST:I

    invoke-direct {v1, v2, v3, v5}, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;-><init>(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;Lcom/metamoji/nt/NtCommand;I)V

    const/16 v2, 0xae

    aput-object v1, v0, v2

    new-instance v1, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_TEXT_CTX_TEXT_DEMOTE_LISTLEVEL:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    sget-object v3, Lcom/metamoji/nt/NtCommand;->CMD_INVALID:Lcom/metamoji/nt/NtCommand;

    sget v5, Lcom/metamoji/noteanytime/R$string;->CONTEXTMENU_TEXT_DEMOTE_LISTLEVEL:I

    invoke-direct {v1, v2, v3, v5}, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;-><init>(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;Lcom/metamoji/nt/NtCommand;I)V

    const/16 v2, 0xaf

    aput-object v1, v0, v2

    new-instance v1, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_TEXT_CTX_TEXT_PROMOTE_LISTLEVEL:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    sget-object v3, Lcom/metamoji/nt/NtCommand;->CMD_INVALID:Lcom/metamoji/nt/NtCommand;

    sget v5, Lcom/metamoji/noteanytime/R$string;->CONTEXTMENU_TEXT_PROMOTE_LISTLEVEL:I

    invoke-direct {v1, v2, v3, v5}, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;-><init>(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;Lcom/metamoji/nt/NtCommand;I)V

    const/16 v2, 0xb0

    aput-object v1, v0, v2

    new-instance v1, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_TEXT_CTX_TEXT_REMOVE_LISTFORMAT:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    sget-object v3, Lcom/metamoji/nt/NtCommand;->CMD_INVALID:Lcom/metamoji/nt/NtCommand;

    sget v5, Lcom/metamoji/noteanytime/R$string;->CONTEXTMENU_TEXT_REMOVE_LISTFORMAT:I

    invoke-direct {v1, v2, v3, v5}, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;-><init>(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;Lcom/metamoji/nt/NtCommand;I)V

    const/16 v2, 0xb1

    aput-object v1, v0, v2

    new-instance v1, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_TEXT_CTX_VOICE_MENU:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    sget-object v3, Lcom/metamoji/nt/NtCommand;->CMD_INVALID:Lcom/metamoji/nt/NtCommand;

    sget v5, Lcom/metamoji/noteanytime/R$string;->Voice_Menu:I

    invoke-direct {v1, v2, v3, v5}, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;-><init>(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;Lcom/metamoji/nt/NtCommand;I)V

    const/16 v2, 0xb2

    aput-object v1, v0, v2

    new-instance v1, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_TEXT_CTX_VOICE_PLAY_FROM_CREATE_TIME:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    sget-object v3, Lcom/metamoji/nt/NtCommand;->CMD_INVALID:Lcom/metamoji/nt/NtCommand;

    invoke-direct {v1, v2, v3, v4}, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;-><init>(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;Lcom/metamoji/nt/NtCommand;I)V

    const/16 v2, 0xb3

    aput-object v1, v0, v2

    new-instance v1, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_TEXT_CTX_VOICE_PLAY_TAG:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    sget-object v3, Lcom/metamoji/nt/NtCommand;->CMD_INVALID:Lcom/metamoji/nt/NtCommand;

    invoke-direct {v1, v2, v3, v4}, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;-><init>(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;Lcom/metamoji/nt/NtCommand;I)V

    const/16 v2, 0xb4

    aput-object v1, v0, v2

    new-instance v1, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_TEXT_CTX_VOICE_ASSOCIATE_TAG:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    sget-object v3, Lcom/metamoji/nt/NtCommand;->CMD_INVALID:Lcom/metamoji/nt/NtCommand;

    invoke-direct {v1, v2, v3, v4}, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;-><init>(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;Lcom/metamoji/nt/NtCommand;I)V

    const/16 v2, 0xb5

    aput-object v1, v0, v2

    new-instance v1, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_TEXT_CTX_VOICE_DETACH_TAG_SELECTED_OBJECTS:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    sget-object v3, Lcom/metamoji/nt/NtCommand;->CMD_INVALID:Lcom/metamoji/nt/NtCommand;

    invoke-direct {v1, v2, v3, v4}, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;-><init>(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;Lcom/metamoji/nt/NtCommand;I)V

    const/16 v2, 0xb6

    aput-object v1, v0, v2

    new-instance v1, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_TEXT_CTX_OTHER_MENU:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    sget-object v3, Lcom/metamoji/nt/NtCommand;->CMD_INVALID:Lcom/metamoji/nt/NtCommand;

    sget v5, Lcom/metamoji/noteanytime/R$string;->ContextMenu_TextUnitOthers:I

    invoke-direct {v1, v2, v3, v5}, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;-><init>(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;Lcom/metamoji/nt/NtCommand;I)V

    const/16 v2, 0xb7

    aput-object v1, v0, v2

    new-instance v1, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_TEXT_CTX_REEDIT:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    sget-object v3, Lcom/metamoji/nt/NtCommand;->CMD_INVALID:Lcom/metamoji/nt/NtCommand;

    sget v5, Lcom/metamoji/noteanytime/R$string;->ContextMenu_ReEdit:I

    invoke-direct {v1, v2, v3, v5}, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;-><init>(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;Lcom/metamoji/nt/NtCommand;I)V

    const/16 v2, 0xb8

    aput-object v1, v0, v2

    new-instance v1, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_TEXT_CTX_RECONVERT:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    sget-object v3, Lcom/metamoji/nt/NtCommand;->CMD_INVALID:Lcom/metamoji/nt/NtCommand;

    sget v5, Lcom/metamoji/noteanytime/R$string;->CONTEXTMENU_RECONVERT:I

    invoke-direct {v1, v2, v3, v5}, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;-><init>(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;Lcom/metamoji/nt/NtCommand;I)V

    const/16 v2, 0xb9

    aput-object v1, v0, v2

    new-instance v1, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_TEXT_CTX_INSERTDATE:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    sget-object v3, Lcom/metamoji/nt/NtCommand;->CMD_INVALID:Lcom/metamoji/nt/NtCommand;

    sget v5, Lcom/metamoji/noteanytime/R$string;->ContextMenu_InsertDate:I

    invoke-direct {v1, v2, v3, v5}, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;-><init>(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;Lcom/metamoji/nt/NtCommand;I)V

    const/16 v2, 0xba

    aput-object v1, v0, v2

    new-instance v1, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_TEXT_CTX_INSERTLINESEPARATOR:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    sget-object v3, Lcom/metamoji/nt/NtCommand;->CMD_INVALID:Lcom/metamoji/nt/NtCommand;

    sget v5, Lcom/metamoji/noteanytime/R$string;->ContextMenu_InsertLineSeparator:I

    invoke-direct {v1, v2, v3, v5}, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;-><init>(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;Lcom/metamoji/nt/NtCommand;I)V

    const/16 v2, 0xbb

    aput-object v1, v0, v2

    new-instance v1, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_TEXT_CTX_TEXTUNITSTYLE:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    sget-object v3, Lcom/metamoji/nt/NtCommand;->CMD_INVALID:Lcom/metamoji/nt/NtCommand;

    sget v5, Lcom/metamoji/noteanytime/R$string;->ContextMenu_TextUnitStyle:I

    invoke-direct {v1, v2, v3, v5}, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;-><init>(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;Lcom/metamoji/nt/NtCommand;I)V

    const/16 v2, 0xbc

    aput-object v1, v0, v2

    new-instance v1, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_TEXT_CTX_TEXTUNITSTYLE_TO_SYSTEM:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    sget-object v3, Lcom/metamoji/nt/NtCommand;->CMD_INVALID:Lcom/metamoji/nt/NtCommand;

    sget v5, Lcom/metamoji/noteanytime/R$string;->ContextMenu_TextUnitStyle_To_System:I

    invoke-direct {v1, v2, v3, v5}, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;-><init>(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;Lcom/metamoji/nt/NtCommand;I)V

    const/16 v2, 0xbd

    aput-object v1, v0, v2

    new-instance v1, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_TEXT_CTX_SEPARATE_TEXTUNIT:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    sget-object v3, Lcom/metamoji/nt/NtCommand;->CMD_INVALID:Lcom/metamoji/nt/NtCommand;

    sget v5, Lcom/metamoji/noteanytime/R$string;->SEPARATE_TEXTUNIT:I

    invoke-direct {v1, v2, v3, v5}, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;-><init>(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;Lcom/metamoji/nt/NtCommand;I)V

    const/16 v2, 0xbe

    aput-object v1, v0, v2

    new-instance v1, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_TEXT_CTX_SHARE_OBJECT_INFO_VIEW:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    sget-object v3, Lcom/metamoji/nt/NtCommand;->CMD_INVALID:Lcom/metamoji/nt/NtCommand;

    sget v5, Lcom/metamoji/noteanytime/R$string;->CONTEXT_SHARE_OBJECT_INFO_VIEW:I

    invoke-direct {v1, v2, v3, v5}, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;-><init>(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;Lcom/metamoji/nt/NtCommand;I)V

    const/16 v2, 0xbf

    aput-object v1, v0, v2

    new-instance v1, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_TEXT_CTX_WORDREGISTRATION:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    sget-object v3, Lcom/metamoji/nt/NtCommand;->CMD_INVALID:Lcom/metamoji/nt/NtCommand;

    sget v5, Lcom/metamoji/noteanytime/R$string;->ContextMenu_WordRegistration:I

    invoke-direct {v1, v2, v3, v5}, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;-><init>(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;Lcom/metamoji/nt/NtCommand;I)V

    const/16 v2, 0xc0

    aput-object v1, v0, v2

    new-instance v1, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_TEXT_CTX_DISPLAY_QR_CODE:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    sget-object v3, Lcom/metamoji/nt/NtCommand;->CMD_INVALID:Lcom/metamoji/nt/NtCommand;

    sget v5, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_DISPLAY_QR_CODE:I

    invoke-direct {v1, v2, v3, v5}, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;-><init>(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;Lcom/metamoji/nt/NtCommand;I)V

    const/16 v2, 0xc1

    aput-object v1, v0, v2

    new-instance v1, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_LASER_SETTING:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    sget-object v3, Lcom/metamoji/nt/NtCommand;->CMD_LASER_SETTING:Lcom/metamoji/nt/NtCommand;

    invoke-direct {v1, v2, v3, v4}, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;-><init>(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;Lcom/metamoji/nt/NtCommand;I)V

    const/16 v2, 0xc2

    aput-object v1, v0, v2

    new-instance v1, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_JUMP_BACK:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    sget-object v3, Lcom/metamoji/nt/NtCommand;->CMD_JUMP_BACK:Lcom/metamoji/nt/NtCommand;

    invoke-direct {v1, v2, v3, v4}, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;-><init>(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;Lcom/metamoji/nt/NtCommand;I)V

    const/16 v2, 0xc3

    aput-object v1, v0, v2

    new-instance v1, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_IMPORT_FILE_MENU:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    sget-object v3, Lcom/metamoji/nt/NtCommand;->CMD_INVALID:Lcom/metamoji/nt/NtCommand;

    sget v5, Lcom/metamoji/noteanytime/R$string;->Menu_ReadFile:I

    sget v6, Lcom/metamoji/noteanytime/R$drawable;->menuicon_import_n:I

    invoke-direct {v1, v2, v3, v5, v6}, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;-><init>(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;Lcom/metamoji/nt/NtCommand;II)V

    const/16 v2, 0xc4

    aput-object v1, v0, v2

    new-instance v1, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_IMPORT_DOC:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    sget-object v3, Lcom/metamoji/nt/NtCommand;->CMD_IMPORT_DOCUMENT:Lcom/metamoji/nt/NtCommand;

    sget v5, Lcom/metamoji/noteanytime/R$string;->Share_Format_Doc:I

    sget v6, Lcom/metamoji/noteanytime/R$drawable;->cabinet_menu_icon_note_anytime:I

    invoke-direct {v1, v2, v3, v5, v6}, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;-><init>(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;Lcom/metamoji/nt/NtCommand;II)V

    const/16 v2, 0xc5

    aput-object v1, v0, v2

    new-instance v1, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_IMPORT_PDF:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    sget-object v3, Lcom/metamoji/nt/NtCommand;->CMD_IMPORT_PDF:Lcom/metamoji/nt/NtCommand;

    sget v5, Lcom/metamoji/noteanytime/R$string;->Share_Format_PDF:I

    sget v6, Lcom/metamoji/noteanytime/R$drawable;->cabinet_menu_icon_pdf:I

    invoke-direct {v1, v2, v3, v5, v6}, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;-><init>(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;Lcom/metamoji/nt/NtCommand;II)V

    const/16 v2, 0xc6

    aput-object v1, v0, v2

    new-instance v1, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_IMPORT_AUDIO:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    sget-object v3, Lcom/metamoji/nt/NtCommand;->CMD_IMPORT_AUDIO:Lcom/metamoji/nt/NtCommand;

    sget v5, Lcom/metamoji/noteanytime/R$string;->Voice_Menu:I

    sget v6, Lcom/metamoji/noteanytime/R$drawable;->bar_hover_voice:I

    invoke-direct {v1, v2, v3, v5, v6}, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;-><init>(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;Lcom/metamoji/nt/NtCommand;II)V

    const/16 v2, 0xc7

    aput-object v1, v0, v2

    new-instance v1, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_DEBUG_RESET_HELPCOUNT:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    sget-object v3, Lcom/metamoji/nt/NtCommand;->CMD_INVALID:Lcom/metamoji/nt/NtCommand;

    invoke-direct {v1, v2, v3, v4}, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;-><init>(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;Lcom/metamoji/nt/NtCommand;I)V

    const/16 v2, 0xc8

    aput-object v1, v0, v2

    new-instance v1, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_COLLABO_CONTEXTMENU_USERLIST_BECOME_PRESENTER:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    sget-object v3, Lcom/metamoji/nt/NtCommand;->CMD_COLLABO_CONTEXTMENU_USERLIST_BECOME_PRESENTER:Lcom/metamoji/nt/NtCommand;

    sget v5, Lcom/metamoji/noteanytime/R$string;->ShareMenu_Context_UserList_Become_Presenter:I

    sget v6, Lcom/metamoji/noteanytime/R$drawable;->menu_icon_share_chair_mode_n:I

    invoke-direct {v1, v2, v3, v5, v6}, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;-><init>(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;Lcom/metamoji/nt/NtCommand;II)V

    const/16 v2, 0xc9

    aput-object v1, v0, v2

    new-instance v1, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_COLLABO_CONTEXTMENU_USERLIST_RESIGN_PRESENTER:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    sget-object v3, Lcom/metamoji/nt/NtCommand;->CMD_COLLABO_CONTEXTMENU_USERLIST_RESIGN_PRESENTER:Lcom/metamoji/nt/NtCommand;

    sget v5, Lcom/metamoji/noteanytime/R$string;->ShareMenu_Context_UserList_Resign_Presenter:I

    sget v6, Lcom/metamoji/noteanytime/R$drawable;->menu_icon_share_chair_mode_n:I

    invoke-direct {v1, v2, v3, v5, v6}, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;-><init>(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;Lcom/metamoji/nt/NtCommand;II)V

    const/16 v2, 0xca

    aput-object v1, v0, v2

    new-instance v1, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_COLLABO_ROOM_EDIT:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    sget-object v3, Lcom/metamoji/nt/NtCommand;->CMD_COLLABO_ROOM_EDIT:Lcom/metamoji/nt/NtCommand;

    sget v5, Lcom/metamoji/noteanytime/R$string;->ShareView_Menu_RoomInfo:I

    sget v6, Lcom/metamoji/noteanytime/R$drawable;->menu_icon_share_roominfo_n:I

    invoke-direct {v1, v2, v3, v5, v6}, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;-><init>(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;Lcom/metamoji/nt/NtCommand;II)V

    const/16 v2, 0xcb

    aput-object v1, v0, v2

    new-instance v1, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_COLLABO_COMMAND_USE_SETTING:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    sget-object v3, Lcom/metamoji/nt/NtCommand;->CMD_COLLABO_COMMAND_USE_SETTING:Lcom/metamoji/nt/NtCommand;

    sget v5, Lcom/metamoji/noteanytime/R$string;->ShareMenu_Command_Use_Setting:I

    sget v6, Lcom/metamoji/noteanytime/R$drawable;->design1_mnu_icon_share_command_use_setting:I

    invoke-direct {v1, v2, v3, v5, v6}, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;-><init>(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;Lcom/metamoji/nt/NtCommand;II)V

    const/16 v2, 0xcc

    aput-object v1, v0, v2

    new-instance v1, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_SHAREDRIVE_DISPLAY_SETTINGS:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    sget-object v3, Lcom/metamoji/nt/NtCommand;->CMD_SCHOOL_CLASSBOX_DISPLAY_SETTINGS:Lcom/metamoji/nt/NtCommand;

    sget v5, Lcom/metamoji/noteanytime/R$string;->CABINET_VISIBLE_SELECT_CONTEXTMENU:I

    sget v6, Lcom/metamoji/noteanytime/R$drawable;->drive_display_settings:I

    invoke-direct {v1, v2, v3, v5, v6}, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;-><init>(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;Lcom/metamoji/nt/NtCommand;II)V

    const/16 v2, 0xcd

    aput-object v1, v0, v2

    new-instance v1, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_CABINET_VIEW_CHANGE:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    sget-object v3, Lcom/metamoji/nt/NtCommand;->CMD_CABINET_VIEW_CHANGE:Lcom/metamoji/nt/NtCommand;

    invoke-direct {v1, v2, v3, v4}, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;-><init>(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;Lcom/metamoji/nt/NtCommand;I)V

    const/16 v2, 0xce

    aput-object v1, v0, v2

    new-instance v1, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_IMPORT_FROM_WEBDAV:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    sget-object v3, Lcom/metamoji/nt/NtCommand;->CMD_IMPORT_WEBDAV:Lcom/metamoji/nt/NtCommand;

    sget v5, Lcom/metamoji/noteanytime/R$string;->Import_WebDAV:I

    sget v6, Lcom/metamoji/noteanytime/R$drawable;->icon_import_from_webdav:I

    invoke-direct {v1, v2, v3, v5, v6}, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;-><init>(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;Lcom/metamoji/nt/NtCommand;II)V

    const/16 v2, 0xcf

    aput-object v1, v0, v2

    new-instance v1, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_EXPORT_TO_WEBDAV:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    sget-object v3, Lcom/metamoji/nt/NtCommand;->CMD_SEND_TARGET_SERVICE_WEBDAV:Lcom/metamoji/nt/NtCommand;

    sget v5, Lcom/metamoji/noteanytime/R$string;->Export_WebDAV:I

    sget v6, Lcom/metamoji/noteanytime/R$drawable;->icon_export_to_webdav:I

    invoke-direct {v1, v2, v3, v5, v6}, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;-><init>(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;Lcom/metamoji/nt/NtCommand;II)V

    const/16 v2, 0xd0

    aput-object v1, v0, v2

    new-instance v1, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_SCHOOL_BTNMENU_PAGETYPE:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    sget-object v3, Lcom/metamoji/nt/NtCommand;->CMD_SCHOOL_BTNMENU_PAGETYPE:Lcom/metamoji/nt/NtCommand;

    invoke-direct {v1, v2, v3, v4}, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;-><init>(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;Lcom/metamoji/nt/NtCommand;I)V

    const/16 v2, 0xd1

    aput-object v1, v0, v2

    new-instance v1, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_SCHOOL_BTNMENU_EDITLAYER:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    sget-object v3, Lcom/metamoji/nt/NtCommand;->CMD_SCHOOL_BTNMENU_EDITLAYER:Lcom/metamoji/nt/NtCommand;

    invoke-direct {v1, v2, v3, v4}, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;-><init>(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;Lcom/metamoji/nt/NtCommand;I)V

    const/16 v2, 0xd2

    aput-object v1, v0, v2

    new-instance v1, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_SCHOOL_BTNMENU_TEACHERMODE:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    sget-object v3, Lcom/metamoji/nt/NtCommand;->CMD_SCHOOL_BTNMENU_TEACHERMODE:Lcom/metamoji/nt/NtCommand;

    invoke-direct {v1, v2, v3, v4}, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;-><init>(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;Lcom/metamoji/nt/NtCommand;I)V

    const/16 v2, 0xd3

    aput-object v1, v0, v2

    new-instance v1, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_SCHOOL_PAGETYPE_NORMAL:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    sget-object v3, Lcom/metamoji/nt/NtCommand;->CMD_SCHOOL_PAGETYPE_NORMAL:Lcom/metamoji/nt/NtCommand;

    sget v5, Lcom/metamoji/noteanytime/R$string;->SchoolMenu_PageType_Normal:I

    sget v6, Lcom/metamoji/noteanytime/R$drawable;->mnu_icon_school_pagetype_normal:I

    invoke-direct {v1, v2, v3, v5, v6}, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;-><init>(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;Lcom/metamoji/nt/NtCommand;II)V

    const/16 v2, 0xd4

    aput-object v1, v0, v2

    new-instance v1, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_SCHOOL_PAGETYPE_PERSONAL_USER:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    sget-object v3, Lcom/metamoji/nt/NtCommand;->CMD_SCHOOL_PAGETYPE_PERSONAL_USER:Lcom/metamoji/nt/NtCommand;

    sget v5, Lcom/metamoji/noteanytime/R$string;->SchoolMenu_PageType_Personal_User:I

    sget v6, Lcom/metamoji/noteanytime/R$drawable;->mnu_icon_school_pagetype_user:I

    invoke-direct {v1, v2, v3, v5, v6}, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;-><init>(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;Lcom/metamoji/nt/NtCommand;II)V

    const/16 v2, 0xd5

    aput-object v1, v0, v2

    new-instance v1, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_SCHOOL_PAGETYPE_PERSONAL_GROUP:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    sget-object v3, Lcom/metamoji/nt/NtCommand;->CMD_SCHOOL_PAGETYPE_PERSONAL_GROUP:Lcom/metamoji/nt/NtCommand;

    sget v5, Lcom/metamoji/noteanytime/R$string;->SchoolMenu_PageType_Personal_Group:I

    sget v6, Lcom/metamoji/noteanytime/R$drawable;->mnu_icon_school_pagetype_group:I

    invoke-direct {v1, v2, v3, v5, v6}, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;-><init>(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;Lcom/metamoji/nt/NtCommand;II)V

    const/16 v2, 0xd6

    aput-object v1, v0, v2

    new-instance v1, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_SCHOOL_PAGETYPE_PERSONAL_CLASS:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    sget-object v3, Lcom/metamoji/nt/NtCommand;->CMD_SCHOOL_PAGETYPE_PERSONAL_CLASS:Lcom/metamoji/nt/NtCommand;

    sget v5, Lcom/metamoji/noteanytime/R$string;->SchoolMenu_PageType_Personal_Class:I

    sget v6, Lcom/metamoji/noteanytime/R$drawable;->mnu_icon_school_pagetype_class:I

    invoke-direct {v1, v2, v3, v5, v6}, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;-><init>(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;Lcom/metamoji/nt/NtCommand;II)V

    const/16 v2, 0xd7

    aput-object v1, v0, v2

    new-instance v1, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_SCHOOL_EDITLAYER_COMMON:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    sget-object v3, Lcom/metamoji/nt/NtCommand;->CMD_SCHOOL_EDITLAYER_COMMON:Lcom/metamoji/nt/NtCommand;

    sget v5, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_EDIT_SHARED_LAYER:I

    sget v6, Lcom/metamoji/noteanytime/R$drawable;->mnu_icon_school_editlayer_common:I

    invoke-direct {v1, v2, v3, v5, v6}, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;-><init>(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;Lcom/metamoji/nt/NtCommand;II)V

    const/16 v2, 0xd8

    aput-object v1, v0, v2

    new-instance v1, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_SCHOOL_EDITLAYER_EDIT:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    sget-object v3, Lcom/metamoji/nt/NtCommand;->CMD_SCHOOL_EDITLAYER_EDIT:Lcom/metamoji/nt/NtCommand;

    sget v5, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_EDIT_BASIC_LAYER:I

    sget v6, Lcom/metamoji/noteanytime/R$drawable;->mnu_icon_school_editlayer_edit:I

    invoke-direct {v1, v2, v3, v5, v6}, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;-><init>(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;Lcom/metamoji/nt/NtCommand;II)V

    const/16 v2, 0xd9

    aput-object v1, v0, v2

    new-instance v1, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_SCHOOL_EDITLAYER_PERSONAL:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    sget-object v3, Lcom/metamoji/nt/NtCommand;->CMD_SCHOOL_EDITLAYER_PERSONAL:Lcom/metamoji/nt/NtCommand;

    sget v5, Lcom/metamoji/noteanytime/R$drawable;->mnu_icon_school_editlayer_personal:I

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;-><init>(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;Lcom/metamoji/nt/NtCommand;II)V

    const/16 v2, 0xda

    aput-object v1, v0, v2

    new-instance v1, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_SCHOOL_EDITLAYER_PERSONAL_TEMPLATE:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    sget-object v3, Lcom/metamoji/nt/NtCommand;->CMD_SCHOOL_EDITLAYER_PERSONAL_TEMPLATE:Lcom/metamoji/nt/NtCommand;

    sget v5, Lcom/metamoji/noteanytime/R$drawable;->mnu_icon_school_editlayer_personal:I

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;-><init>(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;Lcom/metamoji/nt/NtCommand;II)V

    const/16 v2, 0xdb

    aput-object v1, v0, v2

    new-instance v1, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_SCHOOL_EDITLAYER_TEACHER_PERSONAL:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    sget-object v3, Lcom/metamoji/nt/NtCommand;->CMD_SCHOOL_EDITLAYER_TEACHER_PERSONAL:Lcom/metamoji/nt/NtCommand;

    sget v5, Lcom/metamoji/noteanytime/R$drawable;->mnu_icon_school_editlayer_personal:I

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;-><init>(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;Lcom/metamoji/nt/NtCommand;II)V

    const/16 v2, 0xdc

    aput-object v1, v0, v2

    new-instance v1, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_SCHOOL_TEACHERMODE_FREE:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    sget-object v3, Lcom/metamoji/nt/NtCommand;->CMD_SCHOOL_TEACHERMODE_FREE:Lcom/metamoji/nt/NtCommand;

    sget v5, Lcom/metamoji/noteanytime/R$string;->SchoolMenu_TeacherMode_Free:I

    sget v6, Lcom/metamoji/noteanytime/R$drawable;->mnu_icon_school_teachermode_free:I

    invoke-direct {v1, v2, v3, v5, v6}, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;-><init>(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;Lcom/metamoji/nt/NtCommand;II)V

    const/16 v2, 0xdd

    aput-object v1, v0, v2

    new-instance v1, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_SCHOOL_TEACHERMODE_PRESENTER:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    sget-object v3, Lcom/metamoji/nt/NtCommand;->CMD_SCHOOL_TEACHERMODE_PRESENTER:Lcom/metamoji/nt/NtCommand;

    sget v5, Lcom/metamoji/noteanytime/R$string;->SchoolMenu_TeacherMode_Presenter:I

    sget v6, Lcom/metamoji/noteanytime/R$drawable;->mnu_icon_school_teachermode_presenter:I

    invoke-direct {v1, v2, v3, v5, v6}, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;-><init>(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;Lcom/metamoji/nt/NtCommand;II)V

    const/16 v2, 0xde

    aput-object v1, v0, v2

    new-instance v1, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_SCHOOL_TEACHERMODE_LOCK:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    sget-object v3, Lcom/metamoji/nt/NtCommand;->CMD_SCHOOL_TEACHERMODE_LOCK:Lcom/metamoji/nt/NtCommand;

    sget v5, Lcom/metamoji/noteanytime/R$string;->SchoolMenu_TeacherMode_Lock:I

    sget v6, Lcom/metamoji/noteanytime/R$drawable;->mnu_icon_school_teachermode_lock:I

    invoke-direct {v1, v2, v3, v5, v6}, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;-><init>(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;Lcom/metamoji/nt/NtCommand;II)V

    const/16 v2, 0xdf

    aput-object v1, v0, v2

    new-instance v1, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_SCHOOL_TEACHERMODE_MONITORING:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    sget-object v3, Lcom/metamoji/nt/NtCommand;->CMD_SCHOOL_TEACHERMODE_MONITORING:Lcom/metamoji/nt/NtCommand;

    sget v5, Lcom/metamoji/noteanytime/R$string;->SchoolMenu_TeacherMode_Monitoring:I

    sget v6, Lcom/metamoji/noteanytime/R$drawable;->mnu_icon_school_teachermode_monitoring:I

    invoke-direct {v1, v2, v3, v5, v6}, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;-><init>(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;Lcom/metamoji/nt/NtCommand;II)V

    const/16 v2, 0xe0

    aput-object v1, v0, v2

    new-instance v1, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_SCHOOL_EVERYONE_ANSWER:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    sget-object v3, Lcom/metamoji/nt/NtCommand;->CMD_SCHOOL_EVERYONE_ANSWER:Lcom/metamoji/nt/NtCommand;

    sget v5, Lcom/metamoji/noteanytime/R$string;->SchoolMenu_TeacherMode_Monitoring:I

    sget v6, Lcom/metamoji/noteanytime/R$drawable;->mnu_icon_school_teachermode_monitoring:I

    invoke-direct {v1, v2, v3, v5, v6}, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;-><init>(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;Lcom/metamoji/nt/NtCommand;II)V

    const/16 v2, 0xe1

    aput-object v1, v0, v2

    new-instance v1, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_SCHOOL_NEW_PAGE_FROM_PERSONAL_LAYER:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    sget-object v3, Lcom/metamoji/nt/NtCommand;->CMD_SCHOOL_NEW_PAGE_FROM_PERSONAL_LAYER:Lcom/metamoji/nt/NtCommand;

    sget v5, Lcom/metamoji/noteanytime/R$string;->SchoolMenu_New_Page_From_Personal_Layer:I

    sget v6, Lcom/metamoji/noteanytime/R$drawable;->mnu_icon_school_new_page_from_personal_layer:I

    invoke-direct {v1, v2, v3, v5, v6}, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;-><init>(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;Lcom/metamoji/nt/NtCommand;II)V

    const/16 v2, 0xe2

    aput-object v1, v0, v2

    new-instance v1, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_SCHOOL_MANAGE_CLASS_LIST:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    sget-object v3, Lcom/metamoji/nt/NtCommand;->CMD_SCHOOL_MANAGE_CLASS_LIST:Lcom/metamoji/nt/NtCommand;

    sget v5, Lcom/metamoji/noteanytime/R$string;->SchoolMenu_Manage_Class_List:I

    sget v6, Lcom/metamoji/noteanytime/R$drawable;->mnu_icon_school_manage_class_list:I

    invoke-direct {v1, v2, v3, v5, v6}, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;-><init>(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;Lcom/metamoji/nt/NtCommand;II)V

    const/16 v2, 0xe3

    aput-object v1, v0, v2

    new-instance v1, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_SCHOOL_CONTEXTMENU_USERLIST_START_PERSONAL_MODE_BY_USER:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    sget-object v3, Lcom/metamoji/nt/NtCommand;->CMD_SCHOOL_CONTEXTMENU_USERLIST_START_PERSONAL_MODE_BY_USER:Lcom/metamoji/nt/NtCommand;

    sget v5, Lcom/metamoji/noteanytime/R$drawable;->mnu_icon_school_contextmenu_userlist_start_personal_mode:I

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;-><init>(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;Lcom/metamoji/nt/NtCommand;II)V

    const/16 v2, 0xe4

    aput-object v1, v0, v2

    new-instance v1, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_SCHOOL_CONTEXTMENU_USERLIST_START_PERSONAL_MODE_BY_GROUP:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    sget-object v3, Lcom/metamoji/nt/NtCommand;->CMD_SCHOOL_CONTEXTMENU_USERLIST_START_PERSONAL_MODE_BY_GROUP:Lcom/metamoji/nt/NtCommand;

    sget v5, Lcom/metamoji/noteanytime/R$drawable;->mnu_icon_school_contextmenu_userlist_start_personal_mode:I

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;-><init>(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;Lcom/metamoji/nt/NtCommand;II)V

    const/16 v2, 0xe5

    aput-object v1, v0, v2

    new-instance v1, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_SCHOOL_CONTEXTMENU_USERLIST_START_FEATURED_PERSONAL_MODE_BY_USER:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    sget-object v3, Lcom/metamoji/nt/NtCommand;->CMD_SCHOOL_CONTEXTMENU_USERLIST_START_FEATURED_PERSONAL_MODE_BY_USER:Lcom/metamoji/nt/NtCommand;

    sget v5, Lcom/metamoji/noteanytime/R$string;->SCHOOLMENU_USERLIST_START_FEATURED_PERSONAL_MODE:I

    sget v6, Lcom/metamoji/noteanytime/R$drawable;->view_answer:I

    invoke-direct {v1, v2, v3, v5, v6}, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;-><init>(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;Lcom/metamoji/nt/NtCommand;II)V

    const/16 v2, 0xe6

    aput-object v1, v0, v2

    new-instance v1, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_SCHOOL_CONTEXTMENU_USERLIST_START_FEATURED_PERSONAL_MODE_BY_GROUP:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    sget-object v3, Lcom/metamoji/nt/NtCommand;->CMD_SCHOOL_CONTEXTMENU_USERLIST_START_FEATURED_PERSONAL_MODE_BY_GROUP:Lcom/metamoji/nt/NtCommand;

    sget v5, Lcom/metamoji/noteanytime/R$string;->SCHOOLMENU_USERLIST_START_FEATURED_PERSONAL_MODE:I

    sget v6, Lcom/metamoji/noteanytime/R$drawable;->view_answer:I

    invoke-direct {v1, v2, v3, v5, v6}, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;-><init>(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;Lcom/metamoji/nt/NtCommand;II)V

    const/16 v2, 0xe7

    aput-object v1, v0, v2

    new-instance v1, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_SCHOOL_RESET_PERSONAL_STATUS:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    sget-object v3, Lcom/metamoji/nt/NtCommand;->CMD_SCHOOL_RESET_PERSONAL_STATUS:Lcom/metamoji/nt/NtCommand;

    sget v5, Lcom/metamoji/noteanytime/R$string;->SchoolMenu_Reset_Personal_Status:I

    sget v6, Lcom/metamoji/noteanytime/R$drawable;->mnu_icon_school_reset_personal_status:I

    invoke-direct {v1, v2, v3, v5, v6}, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;-><init>(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;Lcom/metamoji/nt/NtCommand;II)V

    const/16 v2, 0xe8

    aput-object v1, v0, v2

    new-instance v1, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_SCHOOL_CLASSBOX_DISPLAY_SETTINGS:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    sget-object v3, Lcom/metamoji/nt/NtCommand;->CMD_SCHOOL_CLASSBOX_DISPLAY_SETTINGS:Lcom/metamoji/nt/NtCommand;

    sget v5, Lcom/metamoji/noteanytime/R$string;->CABINET_VISIBLE_SELECT_CONTEXTMENU:I

    sget v6, Lcom/metamoji/noteanytime/R$drawable;->mnu_icon_school_setting_classbox:I

    invoke-direct {v1, v2, v3, v5, v6}, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;-><init>(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;Lcom/metamoji/nt/NtCommand;II)V

    const/16 v2, 0xe9

    aput-object v1, v0, v2

    new-instance v1, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_ADD_TEXTUNIT_FOR_LABEL:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    sget-object v3, Lcom/metamoji/nt/NtCommand;->CMD_ADD_TEXTUNIT_FOR_LABEL:Lcom/metamoji/nt/NtCommand;

    sget v5, Lcom/metamoji/noteanytime/R$string;->Menu_Add_TextLabel:I

    sget v6, Lcom/metamoji/noteanytime/R$drawable;->add_paper_tag:I

    invoke-direct {v1, v2, v3, v5, v6}, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;-><init>(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;Lcom/metamoji/nt/NtCommand;II)V

    const/16 v2, 0xea

    aput-object v1, v0, v2

    new-instance v1, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_DUPLICATE:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    sget-object v3, Lcom/metamoji/nt/NtCommand;->CMD_DUPLICATE:Lcom/metamoji/nt/NtCommand;

    sget v5, Lcom/metamoji/noteanytime/R$string;->CONTEXTMENU_DUPLICATE:I

    invoke-direct {v1, v2, v3, v5, v4}, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;-><init>(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;Lcom/metamoji/nt/NtCommand;II)V

    const/16 v2, 0xeb

    aput-object v1, v0, v2

    new-instance v1, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_OPEN_FORBIZ_MANAGEMENT_TOOL:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    sget-object v3, Lcom/metamoji/nt/NtCommand;->CMD_OPEN_FORBIZ_MANAGEMENT_TOOL:Lcom/metamoji/nt/NtCommand;

    sget v5, Lcom/metamoji/noteanytime/R$string;->Open_Forbiz_Management_Tool:I

    sget v6, Lcom/metamoji/noteanytime/R$drawable;->school_icon_open_web_setting:I

    invoke-direct {v1, v2, v3, v5, v6}, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;-><init>(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;Lcom/metamoji/nt/NtCommand;II)V

    const/16 v2, 0xec

    aput-object v1, v0, v2

    new-instance v1, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_OPEN_SHARE_CORDINATOR:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    sget-object v3, Lcom/metamoji/nt/NtCommand;->CMD_OPEN_SHARE_CORDINATOR:Lcom/metamoji/nt/NtCommand;

    sget v5, Lcom/metamoji/noteanytime/R$string;->Open_Share_Cordinator:I

    sget v6, Lcom/metamoji/noteanytime/R$drawable;->school_icon_open_share_cordinator:I

    invoke-direct {v1, v2, v3, v5, v6}, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;-><init>(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;Lcom/metamoji/nt/NtCommand;II)V

    const/16 v2, 0xed

    aput-object v1, v0, v2

    new-instance v1, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_SCHOOL_SCOREMENU_SCORELIST:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    sget-object v3, Lcom/metamoji/nt/NtCommand;->CMD_SCHOOL_SCOREMENU_SCORELIST:Lcom/metamoji/nt/NtCommand;

    sget v5, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_SCOREINFOVIEW_MENU_SCORELIST:I

    sget v6, Lcom/metamoji/noteanytime/R$drawable;->mnu_icon_school_scorelist:I

    invoke-direct {v1, v2, v3, v5, v6}, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;-><init>(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;Lcom/metamoji/nt/NtCommand;II)V

    const/16 v2, 0xee

    aput-object v1, v0, v2

    new-instance v1, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_SHAPE_PEN_MODECHANGE:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    sget-object v3, Lcom/metamoji/nt/NtCommand;->CMD_SHAPE_PEN_MODECHANGE:Lcom/metamoji/nt/NtCommand;

    invoke-direct {v1, v2, v3, v4, v4}, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;-><init>(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;Lcom/metamoji/nt/NtCommand;II)V

    const/16 v2, 0xef

    aput-object v1, v0, v2

    new-instance v1, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_IMPORT_FROM_CAMERA:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    sget-object v3, Lcom/metamoji/nt/NtCommand;->CMD_IMPORT_FROM_CAMERA:Lcom/metamoji/nt/NtCommand;

    sget v5, Lcom/metamoji/noteanytime/R$string;->READ_FROM_CAMERA:I

    sget v6, Lcom/metamoji/noteanytime/R$drawable;->menuicon_add_icon_camera_n:I

    invoke-direct {v1, v2, v3, v5, v6}, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;-><init>(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;Lcom/metamoji/nt/NtCommand;II)V

    const/16 v2, 0xf0

    aput-object v1, v0, v2

    new-instance v1, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_IMPORT_FROM_ALBUM:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    sget-object v3, Lcom/metamoji/nt/NtCommand;->CMD_IMPORT_FROM_ALBUM:Lcom/metamoji/nt/NtCommand;

    sget v5, Lcom/metamoji/noteanytime/R$string;->READ_FROM_ALBUM:I

    sget v6, Lcom/metamoji/noteanytime/R$drawable;->menuicon_add_icon_album_n:I

    invoke-direct {v1, v2, v3, v5, v6}, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;-><init>(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;Lcom/metamoji/nt/NtCommand;II)V

    const/16 v2, 0xf1

    aput-object v1, v0, v2

    new-instance v1, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_SCHOOL_PERSONAL_MODE:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    sget-object v3, Lcom/metamoji/nt/NtCommand;->CMD_SCHOOL_PERSONAL_MODE:Lcom/metamoji/nt/NtCommand;

    sget v5, Lcom/metamoji/noteanytime/R$string;->SCHOOL_STUDENT_TO_EACH_OTHER_VIEW:I

    sget v6, Lcom/metamoji/noteanytime/R$drawable;->setting_view:I

    invoke-direct {v1, v2, v3, v5, v6}, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;-><init>(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;Lcom/metamoji/nt/NtCommand;II)V

    const/16 v2, 0xf2

    aput-object v1, v0, v2

    new-instance v1, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_SCHOOL_PERSONAL_MODE_TEACHER_ONLY:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    sget-object v3, Lcom/metamoji/nt/NtCommand;->CMD_SCHOOL_PERSONAL_MODE_TEACHER_ONLY:Lcom/metamoji/nt/NtCommand;

    sget v5, Lcom/metamoji/noteanytime/R$string;->SCHOOL_FORBID_BROWSING:I

    sget v6, Lcom/metamoji/noteanytime/R$drawable;->personal_mode_teacher_only:I

    invoke-direct {v1, v2, v3, v5, v6}, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;-><init>(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;Lcom/metamoji/nt/NtCommand;II)V

    const/16 v2, 0xf3

    aput-object v1, v0, v2

    new-instance v1, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_SCHOOL_PERSONAL_MODE_TEACHER_AND_STUDENT:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    sget-object v3, Lcom/metamoji/nt/NtCommand;->CMD_SCHOOL_PERSONAL_MODE_TEACHER_AND_STUDENT:Lcom/metamoji/nt/NtCommand;

    sget v5, Lcom/metamoji/noteanytime/R$string;->SCHOOL_ALLOW_EDIT:I

    sget v6, Lcom/metamoji/noteanytime/R$drawable;->personal_mode_teacher_and_student:I

    invoke-direct {v1, v2, v3, v5, v6}, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;-><init>(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;Lcom/metamoji/nt/NtCommand;II)V

    const/16 v2, 0xf4

    aput-object v1, v0, v2

    new-instance v1, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_SCHOOL_PERSONAL_MODE_TEACHER_AND_READ_ONLY_STUDENT:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    sget-object v3, Lcom/metamoji/nt/NtCommand;->CMD_SCHOOL_PERSONAL_MODE_TEACHER_AND_READ_ONLY_STUDENT:Lcom/metamoji/nt/NtCommand;

    sget v5, Lcom/metamoji/noteanytime/R$string;->SCHOOL_ALLOW_BROWSING:I

    sget v6, Lcom/metamoji/noteanytime/R$drawable;->personal_mode_teacher_and_readonly_student:I

    invoke-direct {v1, v2, v3, v5, v6}, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;-><init>(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;Lcom/metamoji/nt/NtCommand;II)V

    const/16 v2, 0xf5

    aput-object v1, v0, v2

    new-instance v1, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_SCHOOL_ALLOW_EVERYONE_ANSWER:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    sget-object v3, Lcom/metamoji/nt/NtCommand;->CMD_SCHOOL_ALLOW_EVERYONE_ANSWER:Lcom/metamoji/nt/NtCommand;

    sget v5, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_ALLOW_EVERYONE_ANSWER:I

    sget v6, Lcom/metamoji/noteanytime/R$drawable;->mnu_icon_school_teachermode_monitoring:I

    invoke-direct {v1, v2, v3, v5, v6}, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;-><init>(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;Lcom/metamoji/nt/NtCommand;II)V

    const/16 v2, 0xf6

    aput-object v1, v0, v2

    new-instance v1, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_SCHOOL_GROUPING_STUDENT:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    sget-object v3, Lcom/metamoji/nt/NtCommand;->CMD_SCHOOL_GROUPING_STUDENT:Lcom/metamoji/nt/NtCommand;

    sget v5, Lcom/metamoji/noteanytime/R$string;->SCHOOL_GROUP_CHANGE:I

    sget v6, Lcom/metamoji/noteanytime/R$drawable;->menu_icon_share_memberlist_n:I

    invoke-direct {v1, v2, v3, v5, v6}, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;-><init>(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;Lcom/metamoji/nt/NtCommand;II)V

    const/16 v2, 0xf7

    aput-object v1, v0, v2

    new-instance v1, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_SOUND_UNIT_ADD:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    sget-object v3, Lcom/metamoji/nt/NtCommand;->CMD_SOUND_UNIT_ADD:Lcom/metamoji/nt/NtCommand;

    sget v5, Lcom/metamoji/noteanytime/R$string;->SCHOOL_ADD_SOUND_BUTTON:I

    sget v6, Lcom/metamoji/noteanytime/R$drawable;->bar_hover_voice:I

    invoke-direct {v1, v2, v3, v5, v6}, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;-><init>(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;Lcom/metamoji/nt/NtCommand;II)V

    const/16 v2, 0xf8

    aput-object v1, v0, v2

    new-instance v1, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_SOUND_UNIT_BAR:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    sget-object v3, Lcom/metamoji/nt/NtCommand;->CMD_SOUND_UNIT_BAR:Lcom/metamoji/nt/NtCommand;

    sget v5, Lcom/metamoji/noteanytime/R$string;->SCHOOL_SOUND_BAR:I

    invoke-direct {v1, v2, v3, v5, v4}, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;-><init>(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;Lcom/metamoji/nt/NtCommand;II)V

    const/16 v2, 0xf9

    aput-object v1, v0, v2

    new-instance v1, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_SOUND_UNIT_SEND_TO_APPLICATION:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    sget-object v3, Lcom/metamoji/nt/NtCommand;->CMD_SOUND_UNIT_SEND_TO_APPLICATION:Lcom/metamoji/nt/NtCommand;

    sget v5, Lcom/metamoji/noteanytime/R$string;->SendWindow_Application:I

    invoke-direct {v1, v2, v3, v5}, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;-><init>(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;Lcom/metamoji/nt/NtCommand;I)V

    const/16 v2, 0xfa

    aput-object v1, v0, v2

    new-instance v1, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_SOUND_UNIT_SAVE_TO_FILE:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    sget-object v3, Lcom/metamoji/nt/NtCommand;->CMD_SOUND_UNIT_SAVE_TO_FILE:Lcom/metamoji/nt/NtCommand;

    sget v5, Lcom/metamoji/noteanytime/R$string;->Share_SaveToFile:I

    invoke-direct {v1, v2, v3, v5}, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;-><init>(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;Lcom/metamoji/nt/NtCommand;I)V

    const/16 v2, 0xfb

    aput-object v1, v0, v2

    new-instance v1, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_SOUND_UNIT_MENU:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    sget v3, Lcom/metamoji/noteanytime/R$string;->SCHOOL_SOUND_BUTTON:I

    const/4 v5, 0x0

    invoke-direct {v1, v2, v5, v3}, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;-><init>(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;Lcom/metamoji/nt/NtCommand;I)V

    const/16 v2, 0xfc

    aput-object v1, v0, v2

    new-instance v1, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_FLIP_UNIT_ADD:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    sget-object v3, Lcom/metamoji/nt/NtCommand;->CMD_FLIP_UNIT_ADD:Lcom/metamoji/nt/NtCommand;

    sget v6, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_SCHOOL_FLIP_UNIT_ADD:I

    sget v7, Lcom/metamoji/noteanytime/R$drawable;->flip_unit:I

    invoke-direct {v1, v2, v3, v6, v7}, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;-><init>(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;Lcom/metamoji/nt/NtCommand;II)V

    const/16 v2, 0xfd

    aput-object v1, v0, v2

    new-instance v1, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_FLIP_UNIT_SET_BACKGROUND_COLOR:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    sget-object v3, Lcom/metamoji/nt/NtCommand;->CMD_FLIP_UNIT_SET_BACKGROUND_COLOR:Lcom/metamoji/nt/NtCommand;

    sget v6, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_SCHOOL_FLIP_UNIT_SET_BACKGROUND_COLOR:I

    invoke-direct {v1, v2, v3, v6, v4}, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;-><init>(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;Lcom/metamoji/nt/NtCommand;II)V

    const/16 v2, 0xfe

    aput-object v1, v0, v2

    new-instance v1, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_FLIP_UNIT_FLIP_OVER:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    sget-object v3, Lcom/metamoji/nt/NtCommand;->CMD_FLIP_UNIT_FLIP_OVER:Lcom/metamoji/nt/NtCommand;

    sget v6, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_SCHOOL_FLIP_UNIT_FLIP_OVER:I

    invoke-direct {v1, v2, v3, v6, v4}, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;-><init>(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;Lcom/metamoji/nt/NtCommand;II)V

    const/16 v2, 0xff

    aput-object v1, v0, v2

    new-instance v1, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_FLIP_UNIT_FLIP_BACK:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    sget-object v3, Lcom/metamoji/nt/NtCommand;->CMD_FLIP_UNIT_FLIP_BACK:Lcom/metamoji/nt/NtCommand;

    sget v6, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_SCHOOL_FLIP_UNIT_FLIP_BACK:I

    invoke-direct {v1, v2, v3, v6, v4}, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;-><init>(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;Lcom/metamoji/nt/NtCommand;II)V

    const/16 v2, 0x100

    aput-object v1, v0, v2

    new-instance v1, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_FLIP_UNIT_FLIP_OVER_ALL:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    sget-object v3, Lcom/metamoji/nt/NtCommand;->CMD_FLIP_UNIT_FLIP_OVER_ALL:Lcom/metamoji/nt/NtCommand;

    sget v6, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_SCHOOL_FLIP_UNIT_FLIP_OVER_ALL:I

    invoke-direct {v1, v2, v3, v6, v4}, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;-><init>(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;Lcom/metamoji/nt/NtCommand;II)V

    const/16 v2, 0x101

    aput-object v1, v0, v2

    new-instance v1, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_FLIP_UNIT_FLIP_BACK_ALL:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    sget-object v3, Lcom/metamoji/nt/NtCommand;->CMD_FLIP_UNIT_FLIP_BACK_ALL:Lcom/metamoji/nt/NtCommand;

    sget v6, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_SCHOOL_FLIP_UNIT_FLIP_BACK_ALL:I

    invoke-direct {v1, v2, v3, v6, v4}, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;-><init>(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;Lcom/metamoji/nt/NtCommand;II)V

    const/16 v2, 0x102

    aput-object v1, v0, v2

    new-instance v1, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_FLIP_UNIT_MENU:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    sget v3, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_SCHOOL_FLIP_UNIT_MENU:I

    invoke-direct {v1, v2, v5, v3, v4}, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;-><init>(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;Lcom/metamoji/nt/NtCommand;II)V

    const/16 v2, 0x103

    aput-object v1, v0, v2

    new-instance v1, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_MIRRORED_SCREEN_ON:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    sget-object v3, Lcom/metamoji/nt/NtCommand;->CMD_MIRRORED_SCREEN_ON:Lcom/metamoji/nt/NtCommand;

    sget v6, Lcom/metamoji/noteanytime/R$string;->MENU_MIRRORED_SCREEN_ON:I

    sget v7, Lcom/metamoji/noteanytime/R$drawable;->icon_mirror_display:I

    invoke-direct {v1, v2, v3, v6, v7}, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;-><init>(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;Lcom/metamoji/nt/NtCommand;II)V

    const/16 v2, 0x104

    aput-object v1, v0, v2

    new-instance v1, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_MIRRORED_SCREEN_OFF:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    sget-object v3, Lcom/metamoji/nt/NtCommand;->CMD_MIRRORED_SCREEN_OFF:Lcom/metamoji/nt/NtCommand;

    sget v6, Lcom/metamoji/noteanytime/R$string;->MENU_MIRRORED_SCREEN_OFF:I

    sget v7, Lcom/metamoji/noteanytime/R$drawable;->icon_mirror_display:I

    invoke-direct {v1, v2, v3, v6, v7}, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;-><init>(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;Lcom/metamoji/nt/NtCommand;II)V

    const/16 v2, 0x105

    aput-object v1, v0, v2

    new-instance v1, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_VC_SEND_TO_APPLICATION:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    sget-object v3, Lcom/metamoji/nt/NtCommand;->CMD_VC_SEND_TO_APPLICATION:Lcom/metamoji/nt/NtCommand;

    sget v6, Lcom/metamoji/noteanytime/R$string;->SendWindow_Application:I

    invoke-direct {v1, v2, v3, v6}, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;-><init>(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;Lcom/metamoji/nt/NtCommand;I)V

    const/16 v2, 0x106

    aput-object v1, v0, v2

    new-instance v1, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_VC_SAVE_TO_FILE:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    sget-object v3, Lcom/metamoji/nt/NtCommand;->CMD_VC_SAVE_TO_FILE:Lcom/metamoji/nt/NtCommand;

    sget v6, Lcom/metamoji/noteanytime/R$string;->Share_SaveToFile:I

    invoke-direct {v1, v2, v3, v6}, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;-><init>(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;Lcom/metamoji/nt/NtCommand;I)V

    const/16 v2, 0x107

    aput-object v1, v0, v2

    new-instance v1, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_VIDEO_ADD_VIDEO_MENU:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    sget v3, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_VIDEO_ADD_VIDEO:I

    sget v6, Lcom/metamoji/noteanytime/R$drawable;->menuicon_video_select_photolibrary:I

    invoke-direct {v1, v2, v5, v3, v6}, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;-><init>(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;Lcom/metamoji/nt/NtCommand;II)V

    const/16 v2, 0x108

    aput-object v1, v0, v2

    new-instance v1, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_VIDEO_SELECT_PHOTOLIBRARY:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    sget-object v3, Lcom/metamoji/nt/NtCommand;->CMD_VIDEO_SELECT_PHOTOLIBRARY:Lcom/metamoji/nt/NtCommand;

    sget v6, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_VIDEO_CAMERA_ROLL:I

    sget v7, Lcom/metamoji/noteanytime/R$drawable;->menuicon_video_select_photolibrary:I

    invoke-direct {v1, v2, v3, v6, v7}, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;-><init>(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;Lcom/metamoji/nt/NtCommand;II)V

    const/16 v2, 0x109

    aput-object v1, v0, v2

    new-instance v1, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_VIDEO_TAKE_A_VIDEO:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    sget-object v3, Lcom/metamoji/nt/NtCommand;->CMD_VIDEO_TAKE_A_VIDEO:Lcom/metamoji/nt/NtCommand;

    sget v6, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_VIDEO_CAMERA:I

    sget v7, Lcom/metamoji/noteanytime/R$drawable;->menuicon_video_take_a_video:I

    invoke-direct {v1, v2, v3, v6, v7}, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;-><init>(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;Lcom/metamoji/nt/NtCommand;II)V

    const/16 v2, 0x10a

    aput-object v1, v0, v2

    new-instance v1, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_VIDEO_ADD_FROM_MEDIASERVER:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    sget-object v3, Lcom/metamoji/nt/NtCommand;->CMD_VIDEO_ADD_FROM_MEDIASERVER:Lcom/metamoji/nt/NtCommand;

    sget v6, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_VIDEO_MEDIASERVER:I

    sget v7, Lcom/metamoji/noteanytime/R$drawable;->menuicon_video_add_from_mediaserver:I

    invoke-direct {v1, v2, v3, v6, v7}, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;-><init>(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;Lcom/metamoji/nt/NtCommand;II)V

    const/16 v2, 0x10b

    aput-object v1, v0, v2

    new-instance v1, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_VIDEO_UPLOAD_TO_MEDIASERVER:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    sget-object v3, Lcom/metamoji/nt/NtCommand;->CMD_VIDEO_UPLOAD_TO_MEDIASERVER:Lcom/metamoji/nt/NtCommand;

    sget v6, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_VIDEO_UPLOAD_TO_SERVER:I

    invoke-direct {v1, v2, v3, v6, v4}, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;-><init>(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;Lcom/metamoji/nt/NtCommand;II)V

    const/16 v2, 0x10c

    aput-object v1, v0, v2

    new-instance v1, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_VIDEO_MENU:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    sget v3, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_VIDEO:I

    invoke-direct {v1, v2, v5, v3, v4}, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;-><init>(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;Lcom/metamoji/nt/NtCommand;II)V

    const/16 v2, 0x10d

    aput-object v1, v0, v2

    new-instance v1, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_VIDEO_PLAY:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    sget-object v3, Lcom/metamoji/nt/NtCommand;->CMD_VIDEO_PLAY:Lcom/metamoji/nt/NtCommand;

    sget v6, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_VIDEO_PLAY:I

    invoke-direct {v1, v2, v3, v6, v4}, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;-><init>(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;Lcom/metamoji/nt/NtCommand;II)V

    const/16 v2, 0x10e

    aput-object v1, v0, v2

    new-instance v1, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_VIDEO_CHANGE_THUMBNAIL:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    sget-object v3, Lcom/metamoji/nt/NtCommand;->CMD_VIDEO_CHANGE_THUMBNAIL:Lcom/metamoji/nt/NtCommand;

    sget v6, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_VIDEO_THUMBNAIL:I

    invoke-direct {v1, v2, v3, v6, v4}, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;-><init>(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;Lcom/metamoji/nt/NtCommand;II)V

    const/16 v2, 0x10f

    aput-object v1, v0, v2

    new-instance v1, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_VIDEO_USE_VIDEO_AUDIO:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    sget-object v3, Lcom/metamoji/nt/NtCommand;->CMD_VIDEO_USE_VIDEO_AUDIO:Lcom/metamoji/nt/NtCommand;

    invoke-direct {v1, v2, v3, v4, v4}, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;-><init>(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;Lcom/metamoji/nt/NtCommand;II)V

    const/16 v2, 0x110

    aput-object v1, v0, v2

    new-instance v1, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_VIDEO_VIDEO_STILL_IMAGE:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    sget-object v3, Lcom/metamoji/nt/NtCommand;->CMD_VIDEO_STILL_IMAGE:Lcom/metamoji/nt/NtCommand;

    invoke-direct {v1, v2, v3, v4, v4}, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;-><init>(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;Lcom/metamoji/nt/NtCommand;II)V

    const/16 v2, 0x111

    aput-object v1, v0, v2

    new-instance v1, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_VIDEO_DOWNLOAD:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    sget-object v3, Lcom/metamoji/nt/NtCommand;->CMD_VIDEO_DOWNLOAD:Lcom/metamoji/nt/NtCommand;

    invoke-direct {v1, v2, v3, v4, v4}, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;-><init>(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;Lcom/metamoji/nt/NtCommand;II)V

    const/16 v2, 0x112

    aput-object v1, v0, v2

    new-instance v1, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_SCHOOL_HIDE_STUDENT_NAME:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    sget-object v3, Lcom/metamoji/nt/NtCommand;->CMD_SCHOOL_HIDE_STUDENT_NAME:Lcom/metamoji/nt/NtCommand;

    sget v6, Lcom/metamoji/noteanytime/R$string;->SCHOOL_HIDE_STUDENT_NAME:I

    sget v7, Lcom/metamoji/noteanytime/R$drawable;->hide_student_name:I

    invoke-direct {v1, v2, v3, v6, v7}, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;-><init>(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;Lcom/metamoji/nt/NtCommand;II)V

    const/16 v2, 0x113

    aput-object v1, v0, v2

    new-instance v1, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_SCHOOL_SHOW_STUDENT_NAME:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    sget-object v3, Lcom/metamoji/nt/NtCommand;->CMD_SCHOOL_SHOW_STUDENT_NAME:Lcom/metamoji/nt/NtCommand;

    sget v6, Lcom/metamoji/noteanytime/R$string;->SCHOOL_SHOW_STUDENT_NAME:I

    sget v7, Lcom/metamoji/noteanytime/R$drawable;->show_student_name:I

    invoke-direct {v1, v2, v3, v6, v7}, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;-><init>(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;Lcom/metamoji/nt/NtCommand;II)V

    const/16 v2, 0x114

    aput-object v1, v0, v2

    new-instance v1, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_PAGE_LIST_MENU:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    sget-object v3, Lcom/metamoji/nt/NtCommand;->CMD_PAGE_LIST_MENU:Lcom/metamoji/nt/NtCommand;

    sget v6, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_PAGETAB_MENU:I

    sget v7, Lcom/metamoji/noteanytime/R$drawable;->label_page:I

    invoke-direct {v1, v2, v3, v6, v7}, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;-><init>(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;Lcom/metamoji/nt/NtCommand;II)V

    const/16 v2, 0x115

    aput-object v1, v0, v2

    new-instance v1, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_PAGE_LIST_MODE_JUMP:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    sget-object v3, Lcom/metamoji/nt/NtCommand;->CMD_PAGE_LIST_MODE_JUMP:Lcom/metamoji/nt/NtCommand;

    sget v6, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_JUMP_LIST:I

    sget v7, Lcom/metamoji/noteanytime/R$drawable;->label_jump:I

    invoke-direct {v1, v2, v3, v6, v7}, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;-><init>(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;Lcom/metamoji/nt/NtCommand;II)V

    const/16 v2, 0x116

    aput-object v1, v0, v2

    new-instance v1, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_PAGE_LIST_MODE_PAGE:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    sget-object v3, Lcom/metamoji/nt/NtCommand;->CMD_PAGE_LIST_MODE_PAGE:Lcom/metamoji/nt/NtCommand;

    sget v6, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR2_JUMP_PAGE_LIST:I

    sget v7, Lcom/metamoji/noteanytime/R$drawable;->label_page:I

    invoke-direct {v1, v2, v3, v6, v7}, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;-><init>(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;Lcom/metamoji/nt/NtCommand;II)V

    const/16 v2, 0x117

    aput-object v1, v0, v2

    new-instance v1, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_PAGE_JUMP_MENU:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    sget-object v3, Lcom/metamoji/nt/NtCommand;->CMD_PAGE_JUMP_MENU:Lcom/metamoji/nt/NtCommand;

    sget v6, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_PAGE_JUMP_MENU:I

    sget v7, Lcom/metamoji/noteanytime/R$drawable;->page_jump_menu:I

    invoke-direct {v1, v2, v3, v6, v7}, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;-><init>(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;Lcom/metamoji/nt/NtCommand;II)V

    const/16 v2, 0x118

    aput-object v1, v0, v2

    new-instance v1, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_PAGE_JUMP_HEAD:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    sget-object v3, Lcom/metamoji/nt/NtCommand;->CMD_PAGE_JUMP_HEAD:Lcom/metamoji/nt/NtCommand;

    sget v6, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_PAGE_JUMP_HEAD_MENU:I

    sget v7, Lcom/metamoji/noteanytime/R$drawable;->page_jump_first:I

    invoke-direct {v1, v2, v3, v6, v7}, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;-><init>(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;Lcom/metamoji/nt/NtCommand;II)V

    const/16 v2, 0x119

    aput-object v1, v0, v2

    new-instance v1, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_PAGE_JUMP_TAIL:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    sget-object v3, Lcom/metamoji/nt/NtCommand;->CMD_PAGE_JUMP_TAIL:Lcom/metamoji/nt/NtCommand;

    sget v6, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_PAGE_JUMP_TAIL_MENU:I

    sget v7, Lcom/metamoji/noteanytime/R$drawable;->page_jump_last:I

    invoke-direct {v1, v2, v3, v6, v7}, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;-><init>(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;Lcom/metamoji/nt/NtCommand;II)V

    const/16 v2, 0x11a

    aput-object v1, v0, v2

    new-instance v1, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_PAGE_JUMP_SPECIFIED:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    sget-object v3, Lcom/metamoji/nt/NtCommand;->CMD_PAGE_JUMP_SPECIFIED:Lcom/metamoji/nt/NtCommand;

    sget v6, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_PAGE_JUMP_SPECIFIED_MENU:I

    sget v7, Lcom/metamoji/noteanytime/R$drawable;->page_jump_specified:I

    invoke-direct {v1, v2, v3, v6, v7}, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;-><init>(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;Lcom/metamoji/nt/NtCommand;II)V

    const/16 v2, 0x11b

    aput-object v1, v0, v2

    new-instance v1, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_DELIVER_BLANK_PAPER:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    sget-object v3, Lcom/metamoji/nt/NtCommand;->CMD_DELIVER_BLANK_PAPER:Lcom/metamoji/nt/NtCommand;

    sget v6, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_DELIVER_BLANK_PAPER:I

    sget v7, Lcom/metamoji/noteanytime/R$drawable;->menuicon_newpage_n:I

    invoke-direct {v1, v2, v3, v6, v7}, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;-><init>(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;Lcom/metamoji/nt/NtCommand;II)V

    const/16 v2, 0x11c

    aput-object v1, v0, v2

    new-instance v1, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_CABINET_SD_MAKE_CLASS_BOX:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    sget-object v3, Lcom/metamoji/nt/NtCommand;->CMD_CABINET_SD_MAKE_CLASS_BOX:Lcom/metamoji/nt/NtCommand;

    sget v6, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_CABINET_SD_MENU_MAKE_CLASS_BOX:I

    sget v7, Lcom/metamoji/noteanytime/R$drawable;->create_share_drive:I

    invoke-direct {v1, v2, v3, v6, v7}, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;-><init>(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;Lcom/metamoji/nt/NtCommand;II)V

    const/16 v2, 0x11d

    aput-object v1, v0, v2

    new-instance v1, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_CABINET_SD_PARTICIPATE_BOX:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    sget-object v3, Lcom/metamoji/nt/NtCommand;->CMD_CABINET_SD_PARTICIPATE_BOX:Lcom/metamoji/nt/NtCommand;

    sget v6, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_CLASSROOM_ALLOW_TO_PARTICIPATE_BOX:I

    sget v7, Lcom/metamoji/noteanytime/R$drawable;->mnu_icon_school_sd_add_member:I

    invoke-direct {v1, v2, v3, v6, v7}, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;-><init>(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;Lcom/metamoji/nt/NtCommand;II)V

    const/16 v2, 0x11e

    aput-object v1, v0, v2

    new-instance v1, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_CABINET_SD_DISPLAY_BOX_PARTICIPATION_CODE:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    sget-object v3, Lcom/metamoji/nt/NtCommand;->CMD_CABINET_SD_DISPLAY_BOX_PARTICIPATION_CODE:Lcom/metamoji/nt/NtCommand;

    sget v6, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_CLASSROOM_DISPLAY_PARTICIPATION_CODE:I

    sget v7, Lcom/metamoji/noteanytime/R$drawable;->mnu_icon_school_sd_add_member:I

    invoke-direct {v1, v2, v3, v6, v7}, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;-><init>(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;Lcom/metamoji/nt/NtCommand;II)V

    const/16 v2, 0x11f

    aput-object v1, v0, v2

    new-instance v1, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_CABINET_SD_INPUT_BOX_PARTICIPATION_CODE:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    sget-object v3, Lcom/metamoji/nt/NtCommand;->CMD_CABINET_SD_INPUT_BOX_PARTICIPATION_CODE:Lcom/metamoji/nt/NtCommand;

    sget v6, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_CLASSROOM_PARTICIPATE_BOX:I

    sget v7, Lcom/metamoji/noteanytime/R$drawable;->mnu_icon_school_sd_add_member:I

    invoke-direct {v1, v2, v3, v6, v7}, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;-><init>(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;Lcom/metamoji/nt/NtCommand;II)V

    const/16 v2, 0x120

    aput-object v1, v0, v2

    new-instance v1, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_PHOTO_CTX_MENU:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    sget v3, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_PHOTO_MENU_LABEL:I

    invoke-direct {v1, v2, v5, v3, v4}, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;-><init>(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;Lcom/metamoji/nt/NtCommand;II)V

    const/16 v2, 0x121

    aput-object v1, v0, v2

    new-instance v1, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_REVERSE_LEFT_AND_RIGHT:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    sget-object v3, Lcom/metamoji/nt/NtCommand;->CMD_REVERSE_LEFT_AND_RIGHT:Lcom/metamoji/nt/NtCommand;

    sget v6, Lcom/metamoji/noteanytime/R$string;->CONTEXTMENU_REVERSE_LEFT_AND_RIGHT:I

    invoke-direct {v1, v2, v3, v6, v4}, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;-><init>(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;Lcom/metamoji/nt/NtCommand;II)V

    const/16 v2, 0x122

    aput-object v1, v0, v2

    new-instance v1, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_REVERSE_UPSIDE_AND_DOWNSIDE:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    sget-object v3, Lcom/metamoji/nt/NtCommand;->CMD_REVERSE_UPSIDE_AND_DOWNSIDE:Lcom/metamoji/nt/NtCommand;

    sget v6, Lcom/metamoji/noteanytime/R$string;->CONTEXTMENU_REVERSE_UPSIDE_AND_DOWNSIDE:I

    invoke-direct {v1, v2, v3, v6, v4}, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;-><init>(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;Lcom/metamoji/nt/NtCommand;II)V

    const/16 v2, 0x123

    aput-object v1, v0, v2

    new-instance v1, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_DISPLAY_QR_CODE:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    sget-object v3, Lcom/metamoji/nt/NtCommand;->CMD_DISPLAY_QR_CODE:Lcom/metamoji/nt/NtCommand;

    sget v6, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_DISPLAY_QR_CODE:I

    invoke-direct {v1, v2, v3, v6, v4}, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;-><init>(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;Lcom/metamoji/nt/NtCommand;II)V

    const/16 v2, 0x124

    aput-object v1, v0, v2

    new-instance v1, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_QR_CODE_READER:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    sget-object v3, Lcom/metamoji/nt/NtCommand;->CMD_QR_CODE_READER:Lcom/metamoji/nt/NtCommand;

    sget v6, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_QR_CODE_READER:I

    sget v7, Lcom/metamoji/noteanytime/R$drawable;->qr_code_reader:I

    invoke-direct {v1, v2, v3, v6, v7}, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;-><init>(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;Lcom/metamoji/nt/NtCommand;II)V

    const/16 v2, 0x125

    aput-object v1, v0, v2

    new-instance v1, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_SURVEY_UNIT_ADD:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    sget-object v3, Lcom/metamoji/nt/NtCommand;->CMD_SURVEY_UNIT_ADD:Lcom/metamoji/nt/NtCommand;

    sget v6, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_ADD_SURVEY_UNIT:I

    sget v7, Lcom/metamoji/noteanytime/R$drawable;->survey:I

    invoke-direct {v1, v2, v3, v6, v7}, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;-><init>(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;Lcom/metamoji/nt/NtCommand;II)V

    const/16 v2, 0x126

    aput-object v1, v0, v2

    new-instance v1, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_SURVEY_UNIT_EDIT_SETTINGS:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    sget-object v3, Lcom/metamoji/nt/NtCommand;->CMD_SURVEY_UNIT_EDIT_SETTINGS:Lcom/metamoji/nt/NtCommand;

    sget v6, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_SURVEY_UNIT_SETTINGS:I

    invoke-direct {v1, v2, v3, v6, v4}, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;-><init>(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;Lcom/metamoji/nt/NtCommand;II)V

    const/16 v2, 0x127

    aput-object v1, v0, v2

    new-instance v1, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_SURVEY_UNIT_ANSWER:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    sget-object v3, Lcom/metamoji/nt/NtCommand;->CMD_SURVEY_UNIT_ANSWER:Lcom/metamoji/nt/NtCommand;

    sget v6, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_SURVEY_UNIT_ANSWER:I

    invoke-direct {v1, v2, v3, v6, v4}, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;-><init>(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;Lcom/metamoji/nt/NtCommand;II)V

    const/16 v2, 0x128

    aput-object v1, v0, v2

    new-instance v1, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_SURVEY_UNIT_RESET_ANSWER:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    sget-object v3, Lcom/metamoji/nt/NtCommand;->CMD_SURVEY_UNIT_RESET_ANSWER:Lcom/metamoji/nt/NtCommand;

    sget v6, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_SURVEY_UNIT_CLEAR_ANSWER:I

    invoke-direct {v1, v2, v3, v6, v4}, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;-><init>(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;Lcom/metamoji/nt/NtCommand;II)V

    const/16 v2, 0x129

    aput-object v1, v0, v2

    new-instance v1, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_SURVEY_UNIT_CLEAR_RESULT:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    sget-object v3, Lcom/metamoji/nt/NtCommand;->CMD_SURVEY_UNIT_CLEAR_RESULT:Lcom/metamoji/nt/NtCommand;

    sget v6, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_SURVEY_UNIT_CLEAR_ALL_ANSWERS:I

    invoke-direct {v1, v2, v3, v6, v4}, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;-><init>(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;Lcom/metamoji/nt/NtCommand;II)V

    const/16 v2, 0x12a

    aput-object v1, v0, v2

    new-instance v1, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_SURVEY_UNIT_ALLOW_ANSWER:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    sget-object v3, Lcom/metamoji/nt/NtCommand;->CMD_SURVEY_UNIT_ALLOW_ANSWER:Lcom/metamoji/nt/NtCommand;

    sget v6, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_SURVEY_UNIT_ALLOW_ANSWER:I

    invoke-direct {v1, v2, v3, v6, v4}, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;-><init>(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;Lcom/metamoji/nt/NtCommand;II)V

    const/16 v2, 0x12b

    aput-object v1, v0, v2

    new-instance v1, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_SURVEY_UNIT_PUBLISH_RESULT:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    sget-object v3, Lcom/metamoji/nt/NtCommand;->CMD_SURVEY_UNIT_PUBLISH_RESULT:Lcom/metamoji/nt/NtCommand;

    sget v6, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_SURVEY_UNIT_PUBLISH_RESULT_TO_STUDENT:I

    invoke-direct {v1, v2, v3, v6, v4}, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;-><init>(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;Lcom/metamoji/nt/NtCommand;II)V

    const/16 v2, 0x12c

    aput-object v1, v0, v2

    new-instance v1, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_SURVEY_UNIT_VIEW_RESULT:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    sget-object v3, Lcom/metamoji/nt/NtCommand;->CMD_SURVEY_UNIT_VIEW_RESULT:Lcom/metamoji/nt/NtCommand;

    sget v6, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_SURVEY_UNIT_VIEW_RESULT:I

    invoke-direct {v1, v2, v3, v6, v4}, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;-><init>(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;Lcom/metamoji/nt/NtCommand;II)V

    const/16 v2, 0x12d

    aput-object v1, v0, v2

    new-instance v1, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_SURVEY_UNIT_MENU:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    sget v3, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_SURVEY_UNIT:I

    invoke-direct {v1, v2, v5, v3, v4}, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;-><init>(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;Lcom/metamoji/nt/NtCommand;II)V

    const/16 v2, 0x12e

    aput-object v1, v0, v2

    new-instance v1, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_SHOW_URL:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    sget-object v3, Lcom/metamoji/nt/NtCommand;->CMD_SHOW_URL:Lcom/metamoji/nt/NtCommand;

    sget v5, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_SCHOOL_MENU_SHOW_URL:I

    sget v6, Lcom/metamoji/noteanytime/R$drawable;->mnu_icon_open_url_mmjcloud:I

    invoke-direct {v1, v2, v3, v5, v6}, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;-><init>(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;Lcom/metamoji/nt/NtCommand;II)V

    const/16 v2, 0x12f

    aput-object v1, v0, v2

    new-instance v1, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_CABINET_OPEN_URL:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    sget-object v3, Lcom/metamoji/nt/NtCommand;->CMD_CABINET_OPEN_URL:Lcom/metamoji/nt/NtCommand;

    sget v5, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_SCHOOL_MENU_OPEN_URL:I

    sget v6, Lcom/metamoji/noteanytime/R$drawable;->mnu_icon_open_url_mmjcloud:I

    invoke-direct {v1, v2, v3, v5, v6}, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;-><init>(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;Lcom/metamoji/nt/NtCommand;II)V

    const/16 v2, 0x130

    aput-object v1, v0, v2

    new-instance v1, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_SCHOOL_ATTENTION_START:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    sget-object v3, Lcom/metamoji/nt/NtCommand;->CMD_SCHOOL_ATTENTION_START:Lcom/metamoji/nt/NtCommand;

    sget v5, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_MENU_ATTENTION_START:I

    sget v6, Lcom/metamoji/noteanytime/R$drawable;->mnu_icon_attention_start:I

    invoke-direct {v1, v2, v3, v5, v6}, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;-><init>(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;Lcom/metamoji/nt/NtCommand;II)V

    const/16 v2, 0x131

    aput-object v1, v0, v2

    new-instance v1, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_SCHOOL_ATTENTION_CHANGE:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    sget-object v3, Lcom/metamoji/nt/NtCommand;->CMD_SCHOOL_ATTENTION_CHANGE:Lcom/metamoji/nt/NtCommand;

    sget v5, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_MENU_ATTENTION_CHANGE:I

    sget v6, Lcom/metamoji/noteanytime/R$drawable;->mnu_icon_attention_start:I

    invoke-direct {v1, v2, v3, v5, v6}, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;-><init>(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;Lcom/metamoji/nt/NtCommand;II)V

    const/16 v2, 0x132

    aput-object v1, v0, v2

    new-instance v1, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_SCHOOL_ATTENTION_END:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    sget-object v3, Lcom/metamoji/nt/NtCommand;->CMD_SCHOOL_ATTENTION_END:Lcom/metamoji/nt/NtCommand;

    sget v5, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_MENU_ATTENTION_END:I

    sget v6, Lcom/metamoji/noteanytime/R$drawable;->mnu_icon_attention_end:I

    invoke-direct {v1, v2, v3, v5, v6}, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;-><init>(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;Lcom/metamoji/nt/NtCommand;II)V

    const/16 v2, 0x133

    aput-object v1, v0, v2

    new-instance v1, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_SCHOOL_SUBMIT_BY_STUDENT:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    sget-object v3, Lcom/metamoji/nt/NtCommand;->CMD_SCHOOL_SUBMIT_BY_STUDENT:Lcom/metamoji/nt/NtCommand;

    sget v5, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_MENU_SUBMIT_BY_STUDENT:I

    sget v6, Lcom/metamoji/noteanytime/R$drawable;->mnu_icon_submit_by_student:I

    invoke-direct {v1, v2, v3, v5, v6}, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;-><init>(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;Lcom/metamoji/nt/NtCommand;II)V

    const/16 v2, 0x134

    aput-object v1, v0, v2

    new-instance v1, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_JOIN_TO_THIS_GROUP:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    sget-object v3, Lcom/metamoji/nt/NtCommand;->CMD_JOIN_TO_THIS_GROUP:Lcom/metamoji/nt/NtCommand;

    sget v5, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_JOIN_TO_THIS_GROUP:I

    invoke-direct {v1, v2, v3, v5, v4}, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;-><init>(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;Lcom/metamoji/nt/NtCommand;II)V

    const/16 v2, 0x135

    aput-object v1, v0, v2

    new-instance v1, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_LEAVE_FROM_THIS_GROUP:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    sget-object v3, Lcom/metamoji/nt/NtCommand;->CMD_LEAVE_FROM_THIS_GROUP:Lcom/metamoji/nt/NtCommand;

    invoke-direct {v1, v2, v3, v4, v4}, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;-><init>(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;Lcom/metamoji/nt/NtCommand;II)V

    const/16 v2, 0x136

    aput-object v1, v0, v2

    new-instance v1, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_JOIN_IN_MY_GROUP:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    sget-object v3, Lcom/metamoji/nt/NtCommand;->CMD_JOIN_IN_MY_GROUP:Lcom/metamoji/nt/NtCommand;

    sget v5, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_JOIN_IN_MY_GROUP:I

    invoke-direct {v1, v2, v3, v5, v4}, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;-><init>(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;Lcom/metamoji/nt/NtCommand;II)V

    const/16 v2, 0x137

    aput-object v1, v0, v2

    new-instance v1, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_MAKE_MY_GROUP:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    sget-object v3, Lcom/metamoji/nt/NtCommand;->CMD_MAKE_MY_GROUP:Lcom/metamoji/nt/NtCommand;

    invoke-direct {v1, v2, v3, v4, v4}, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;-><init>(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;Lcom/metamoji/nt/NtCommand;II)V

    const/16 v2, 0x138

    aput-object v1, v0, v2

    new-instance v1, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_FORBID_BROWSING_AMONG_STUDENTS:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    sget-object v3, Lcom/metamoji/nt/NtCommand;->CMD_FORBID_BROWSING_AMONG_STUDENTS:Lcom/metamoji/nt/NtCommand;

    sget v5, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_FORBID_BROWSING_AMONG_STUDENTS:I

    invoke-direct {v1, v2, v3, v5, v4}, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;-><init>(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;Lcom/metamoji/nt/NtCommand;II)V

    const/16 v2, 0x139

    aput-object v1, v0, v2

    sput-object v0, Lcom/metamoji/ui/flexible/FxManagerDef;->fxuiitemlist:[Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
