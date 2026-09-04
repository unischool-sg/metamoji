.class synthetic Lcom/metamoji/nt/NtNoteController$81;
.super Ljava/lang/Object;
.source "NtNoteController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/nt/NtNoteController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$metamoji$nt$NtCommand:[I

.field static final synthetic $SwitchMap$com$metamoji$nt$NtDocument$EditMode:[I

.field static final synthetic $SwitchMap$com$metamoji$nt$NtDocument$ToolMode:[I

.field static final synthetic $SwitchMap$com$metamoji$nt$NtEditorWindowController$EditOperation:[I

.field static final synthetic $SwitchMap$com$metamoji$ui$library$sheet$LibrarySheetViewDialog$SheetChangeType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 7447
    invoke-static {}, Lcom/metamoji/ui/library/sheet/LibrarySheetViewDialog$SheetChangeType;->values()[Lcom/metamoji/ui/library/sheet/LibrarySheetViewDialog$SheetChangeType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/metamoji/nt/NtNoteController$81;->$SwitchMap$com$metamoji$ui$library$sheet$LibrarySheetViewDialog$SheetChangeType:[I

    const/4 v1, 0x1

    :try_start_0
    sget-object v2, Lcom/metamoji/ui/library/sheet/LibrarySheetViewDialog$SheetChangeType;->AllPages:Lcom/metamoji/ui/library/sheet/LibrarySheetViewDialog$SheetChangeType;

    invoke-virtual {v2}, Lcom/metamoji/ui/library/sheet/LibrarySheetViewDialog$SheetChangeType;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x2

    :try_start_1
    sget-object v2, Lcom/metamoji/nt/NtNoteController$81;->$SwitchMap$com$metamoji$ui$library$sheet$LibrarySheetViewDialog$SheetChangeType:[I

    sget-object v3, Lcom/metamoji/ui/library/sheet/LibrarySheetViewDialog$SheetChangeType;->CurrentPage:Lcom/metamoji/ui/library/sheet/LibrarySheetViewDialog$SheetChangeType;

    invoke-virtual {v3}, Lcom/metamoji/ui/library/sheet/LibrarySheetViewDialog$SheetChangeType;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    const/4 v2, 0x3

    :try_start_2
    sget-object v3, Lcom/metamoji/nt/NtNoteController$81;->$SwitchMap$com$metamoji$ui$library$sheet$LibrarySheetViewDialog$SheetChangeType:[I

    sget-object v4, Lcom/metamoji/ui/library/sheet/LibrarySheetViewDialog$SheetChangeType;->CurrentPageAndAfter:Lcom/metamoji/ui/library/sheet/LibrarySheetViewDialog$SheetChangeType;

    invoke-virtual {v4}, Lcom/metamoji/ui/library/sheet/LibrarySheetViewDialog$SheetChangeType;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    const/4 v3, 0x4

    :try_start_3
    sget-object v4, Lcom/metamoji/nt/NtNoteController$81;->$SwitchMap$com$metamoji$ui$library$sheet$LibrarySheetViewDialog$SheetChangeType:[I

    sget-object v5, Lcom/metamoji/ui/library/sheet/LibrarySheetViewDialog$SheetChangeType;->SelectedPages:Lcom/metamoji/ui/library/sheet/LibrarySheetViewDialog$SheetChangeType;

    invoke-virtual {v5}, Lcom/metamoji/ui/library/sheet/LibrarySheetViewDialog$SheetChangeType;->ordinal()I

    move-result v5

    aput v3, v4, v5
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    const/4 v4, 0x5

    :try_start_4
    sget-object v5, Lcom/metamoji/nt/NtNoteController$81;->$SwitchMap$com$metamoji$ui$library$sheet$LibrarySheetViewDialog$SheetChangeType:[I

    sget-object v6, Lcom/metamoji/ui/library/sheet/LibrarySheetViewDialog$SheetChangeType;->ChangeCover:Lcom/metamoji/ui/library/sheet/LibrarySheetViewDialog$SheetChangeType;

    invoke-virtual {v6}, Lcom/metamoji/ui/library/sheet/LibrarySheetViewDialog$SheetChangeType;->ordinal()I

    move-result v6

    aput v4, v5, v6
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    const/4 v5, 0x6

    :try_start_5
    sget-object v6, Lcom/metamoji/nt/NtNoteController$81;->$SwitchMap$com$metamoji$ui$library$sheet$LibrarySheetViewDialog$SheetChangeType:[I

    sget-object v7, Lcom/metamoji/ui/library/sheet/LibrarySheetViewDialog$SheetChangeType;->AddCover:Lcom/metamoji/ui/library/sheet/LibrarySheetViewDialog$SheetChangeType;

    invoke-virtual {v7}, Lcom/metamoji/ui/library/sheet/LibrarySheetViewDialog$SheetChangeType;->ordinal()I

    move-result v7

    aput v5, v6, v7
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    const/4 v6, 0x7

    :try_start_6
    sget-object v7, Lcom/metamoji/nt/NtNoteController$81;->$SwitchMap$com$metamoji$ui$library$sheet$LibrarySheetViewDialog$SheetChangeType:[I

    sget-object v8, Lcom/metamoji/ui/library/sheet/LibrarySheetViewDialog$SheetChangeType;->AddPage:Lcom/metamoji/ui/library/sheet/LibrarySheetViewDialog$SheetChangeType;

    invoke-virtual {v8}, Lcom/metamoji/ui/library/sheet/LibrarySheetViewDialog$SheetChangeType;->ordinal()I

    move-result v8

    aput v6, v7, v8
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    .line 4299
    :catch_6
    invoke-static {}, Lcom/metamoji/nt/NtCommand;->values()[Lcom/metamoji/nt/NtCommand;

    move-result-object v7

    array-length v7, v7

    new-array v7, v7, [I

    sput-object v7, Lcom/metamoji/nt/NtNoteController$81;->$SwitchMap$com$metamoji$nt$NtCommand:[I

    :try_start_7
    sget-object v8, Lcom/metamoji/nt/NtCommand;->CMD_UNDO:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {v8}, Lcom/metamoji/nt/NtCommand;->ordinal()I

    move-result v8

    aput v1, v7, v8
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    :catch_7
    :try_start_8
    sget-object v7, Lcom/metamoji/nt/NtNoteController$81;->$SwitchMap$com$metamoji$nt$NtCommand:[I

    sget-object v8, Lcom/metamoji/nt/NtCommand;->CMD_REDO:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {v8}, Lcom/metamoji/nt/NtCommand;->ordinal()I

    move-result v8

    aput v0, v7, v8
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_8

    :catch_8
    :try_start_9
    sget-object v7, Lcom/metamoji/nt/NtNoteController$81;->$SwitchMap$com$metamoji$nt$NtCommand:[I

    sget-object v8, Lcom/metamoji/nt/NtCommand;->CMD_PAGE_BACKW:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {v8}, Lcom/metamoji/nt/NtCommand;->ordinal()I

    move-result v8

    aput v2, v7, v8
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_9

    :catch_9
    :try_start_a
    sget-object v7, Lcom/metamoji/nt/NtNoteController$81;->$SwitchMap$com$metamoji$nt$NtCommand:[I

    sget-object v8, Lcom/metamoji/nt/NtCommand;->CMD_PAGE_FORW:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {v8}, Lcom/metamoji/nt/NtCommand;->ordinal()I

    move-result v8

    aput v3, v7, v8
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_a

    :catch_a
    :try_start_b
    sget-object v7, Lcom/metamoji/nt/NtNoteController$81;->$SwitchMap$com$metamoji$nt$NtCommand:[I

    sget-object v8, Lcom/metamoji/nt/NtCommand;->CMD_PAGE_JUMP_HEAD:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {v8}, Lcom/metamoji/nt/NtCommand;->ordinal()I

    move-result v8

    aput v4, v7, v8
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_b

    :catch_b
    :try_start_c
    sget-object v7, Lcom/metamoji/nt/NtNoteController$81;->$SwitchMap$com$metamoji$nt$NtCommand:[I

    sget-object v8, Lcom/metamoji/nt/NtCommand;->CMD_PAGE_JUMP_TAIL:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {v8}, Lcom/metamoji/nt/NtCommand;->ordinal()I

    move-result v8

    aput v5, v7, v8
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_c

    :catch_c
    :try_start_d
    sget-object v5, Lcom/metamoji/nt/NtNoteController$81;->$SwitchMap$com$metamoji$nt$NtCommand:[I

    sget-object v7, Lcom/metamoji/nt/NtCommand;->CMD_PAGE_JUMP_SPECIFIED:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {v7}, Lcom/metamoji/nt/NtCommand;->ordinal()I

    move-result v7

    aput v6, v5, v7
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_d

    :catch_d
    :try_start_e
    sget-object v5, Lcom/metamoji/nt/NtNoteController$81;->$SwitchMap$com$metamoji$nt$NtCommand:[I

    sget-object v6, Lcom/metamoji/nt/NtCommand;->CMD_PAGE_JUMP:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {v6}, Lcom/metamoji/nt/NtCommand;->ordinal()I

    move-result v6

    const/16 v7, 0x8

    aput v7, v5, v6
    :try_end_e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_e} :catch_e

    :catch_e
    :try_start_f
    sget-object v5, Lcom/metamoji/nt/NtNoteController$81;->$SwitchMap$com$metamoji$nt$NtCommand:[I

    sget-object v6, Lcom/metamoji/nt/NtCommand;->CMD_JUMP_BACKW:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {v6}, Lcom/metamoji/nt/NtCommand;->ordinal()I

    move-result v6

    const/16 v7, 0x9

    aput v7, v5, v6
    :try_end_f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f .. :try_end_f} :catch_f

    :catch_f
    :try_start_10
    sget-object v5, Lcom/metamoji/nt/NtNoteController$81;->$SwitchMap$com$metamoji$nt$NtCommand:[I

    sget-object v6, Lcom/metamoji/nt/NtCommand;->CMD_JUMP_FORW:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {v6}, Lcom/metamoji/nt/NtCommand;->ordinal()I

    move-result v6

    const/16 v7, 0xa

    aput v7, v5, v6
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10 .. :try_end_10} :catch_10

    :catch_10
    :try_start_11
    sget-object v5, Lcom/metamoji/nt/NtNoteController$81;->$SwitchMap$com$metamoji$nt$NtCommand:[I

    sget-object v6, Lcom/metamoji/nt/NtCommand;->CMD_JUMP_JUMP:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {v6}, Lcom/metamoji/nt/NtCommand;->ordinal()I

    move-result v6

    const/16 v7, 0xb

    aput v7, v5, v6
    :try_end_11
    .catch Ljava/lang/NoSuchFieldError; {:try_start_11 .. :try_end_11} :catch_11

    :catch_11
    :try_start_12
    sget-object v5, Lcom/metamoji/nt/NtNoteController$81;->$SwitchMap$com$metamoji$nt$NtCommand:[I

    sget-object v6, Lcom/metamoji/nt/NtCommand;->CMD_DELETE_JUMP:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {v6}, Lcom/metamoji/nt/NtCommand;->ordinal()I

    move-result v6

    const/16 v7, 0xc

    aput v7, v5, v6
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_12} :catch_12

    :catch_12
    :try_start_13
    sget-object v5, Lcom/metamoji/nt/NtNoteController$81;->$SwitchMap$com$metamoji$nt$NtCommand:[I

    sget-object v6, Lcom/metamoji/nt/NtCommand;->CMD_MOVE_JUMP:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {v6}, Lcom/metamoji/nt/NtCommand;->ordinal()I

    move-result v6

    const/16 v7, 0xd

    aput v7, v5, v6
    :try_end_13
    .catch Ljava/lang/NoSuchFieldError; {:try_start_13 .. :try_end_13} :catch_13

    :catch_13
    :try_start_14
    sget-object v5, Lcom/metamoji/nt/NtNoteController$81;->$SwitchMap$com$metamoji$nt$NtCommand:[I

    sget-object v6, Lcom/metamoji/nt/NtCommand;->CMD_MEMORY_LOCATION:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {v6}, Lcom/metamoji/nt/NtCommand;->ordinal()I

    move-result v6

    const/16 v7, 0xe

    aput v7, v5, v6
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_14} :catch_14

    :catch_14
    :try_start_15
    sget-object v5, Lcom/metamoji/nt/NtNoteController$81;->$SwitchMap$com$metamoji$nt$NtCommand:[I

    sget-object v6, Lcom/metamoji/nt/NtCommand;->CMD_JUMP_BACK:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {v6}, Lcom/metamoji/nt/NtCommand;->ordinal()I

    move-result v6

    const/16 v7, 0xf

    aput v7, v5, v6
    :try_end_15
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15 .. :try_end_15} :catch_15

    :catch_15
    :try_start_16
    sget-object v5, Lcom/metamoji/nt/NtNoteController$81;->$SwitchMap$com$metamoji$nt$NtCommand:[I

    sget-object v6, Lcom/metamoji/nt/NtCommand;->CMD_NEW_PAGE:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {v6}, Lcom/metamoji/nt/NtCommand;->ordinal()I

    move-result v6

    const/16 v7, 0x10

    aput v7, v5, v6
    :try_end_16
    .catch Ljava/lang/NoSuchFieldError; {:try_start_16 .. :try_end_16} :catch_16

    :catch_16
    :try_start_17
    sget-object v5, Lcom/metamoji/nt/NtNoteController$81;->$SwitchMap$com$metamoji$nt$NtCommand:[I

    sget-object v6, Lcom/metamoji/nt/NtCommand;->CMD_PAGE_COPY:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {v6}, Lcom/metamoji/nt/NtCommand;->ordinal()I

    move-result v6

    const/16 v7, 0x11

    aput v7, v5, v6
    :try_end_17
    .catch Ljava/lang/NoSuchFieldError; {:try_start_17 .. :try_end_17} :catch_17

    :catch_17
    :try_start_18
    sget-object v5, Lcom/metamoji/nt/NtNoteController$81;->$SwitchMap$com$metamoji$nt$NtCommand:[I

    sget-object v6, Lcom/metamoji/nt/NtCommand;->CMD_PAGE_CUT:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {v6}, Lcom/metamoji/nt/NtCommand;->ordinal()I

    move-result v6

    const/16 v7, 0x12

    aput v7, v5, v6
    :try_end_18
    .catch Ljava/lang/NoSuchFieldError; {:try_start_18 .. :try_end_18} :catch_18

    :catch_18
    :try_start_19
    sget-object v5, Lcom/metamoji/nt/NtNoteController$81;->$SwitchMap$com$metamoji$nt$NtCommand:[I

    sget-object v6, Lcom/metamoji/nt/NtCommand;->CMD_PAGE_PASTE:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {v6}, Lcom/metamoji/nt/NtCommand;->ordinal()I

    move-result v6

    const/16 v7, 0x13

    aput v7, v5, v6
    :try_end_19
    .catch Ljava/lang/NoSuchFieldError; {:try_start_19 .. :try_end_19} :catch_19

    :catch_19
    :try_start_1a
    sget-object v5, Lcom/metamoji/nt/NtNoteController$81;->$SwitchMap$com$metamoji$nt$NtCommand:[I

    sget-object v6, Lcom/metamoji/nt/NtCommand;->CMD_PAGE_DELETE:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {v6}, Lcom/metamoji/nt/NtCommand;->ordinal()I

    move-result v6

    const/16 v7, 0x14

    aput v7, v5, v6
    :try_end_1a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1a .. :try_end_1a} :catch_1a

    :catch_1a
    :try_start_1b
    sget-object v5, Lcom/metamoji/nt/NtNoteController$81;->$SwitchMap$com$metamoji$nt$NtCommand:[I

    sget-object v6, Lcom/metamoji/nt/NtCommand;->CMD_PAGE_MOVE:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {v6}, Lcom/metamoji/nt/NtCommand;->ordinal()I

    move-result v6

    const/16 v7, 0x15

    aput v7, v5, v6
    :try_end_1b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1b .. :try_end_1b} :catch_1b

    :catch_1b
    :try_start_1c
    sget-object v5, Lcom/metamoji/nt/NtNoteController$81;->$SwitchMap$com$metamoji$nt$NtCommand:[I

    sget-object v6, Lcom/metamoji/nt/NtCommand;->CMD_SET_NOTEMODE:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {v6}, Lcom/metamoji/nt/NtCommand;->ordinal()I

    move-result v6

    const/16 v7, 0x16

    aput v7, v5, v6
    :try_end_1c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1c .. :try_end_1c} :catch_1c

    :catch_1c
    :try_start_1d
    sget-object v5, Lcom/metamoji/nt/NtNoteController$81;->$SwitchMap$com$metamoji$nt$NtCommand:[I

    sget-object v6, Lcom/metamoji/nt/NtCommand;->CMD_EXIT_JUMP_SETTING_MODE:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {v6}, Lcom/metamoji/nt/NtCommand;->ordinal()I

    move-result v6

    const/16 v7, 0x17

    aput v7, v5, v6
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_1d} :catch_1d

    :catch_1d
    :try_start_1e
    sget-object v5, Lcom/metamoji/nt/NtNoteController$81;->$SwitchMap$com$metamoji$nt$NtCommand:[I

    sget-object v6, Lcom/metamoji/nt/NtCommand;->CMD_SELECTPEN:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {v6}, Lcom/metamoji/nt/NtCommand;->ordinal()I

    move-result v6

    const/16 v7, 0x18

    aput v7, v5, v6
    :try_end_1e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1e .. :try_end_1e} :catch_1e

    :catch_1e
    :try_start_1f
    sget-object v5, Lcom/metamoji/nt/NtNoteController$81;->$SwitchMap$com$metamoji$nt$NtCommand:[I

    sget-object v6, Lcom/metamoji/nt/NtCommand;->CMD_SELECTPEN2:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {v6}, Lcom/metamoji/nt/NtCommand;->ordinal()I

    move-result v6

    const/16 v7, 0x19

    aput v7, v5, v6
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f .. :try_end_1f} :catch_1f

    :catch_1f
    :try_start_20
    sget-object v5, Lcom/metamoji/nt/NtNoteController$81;->$SwitchMap$com$metamoji$nt$NtCommand:[I

    sget-object v6, Lcom/metamoji/nt/NtCommand;->CMD_SELECTERASER:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {v6}, Lcom/metamoji/nt/NtCommand;->ordinal()I

    move-result v6

    const/16 v7, 0x1a

    aput v7, v5, v6
    :try_end_20
    .catch Ljava/lang/NoSuchFieldError; {:try_start_20 .. :try_end_20} :catch_20

    :catch_20
    :try_start_21
    sget-object v5, Lcom/metamoji/nt/NtNoteController$81;->$SwitchMap$com$metamoji$nt$NtCommand:[I

    sget-object v6, Lcom/metamoji/nt/NtCommand;->CMD_SELECTRUBBERBANDKIND:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {v6}, Lcom/metamoji/nt/NtCommand;->ordinal()I

    move-result v6

    const/16 v7, 0x1b

    aput v7, v5, v6
    :try_end_21
    .catch Ljava/lang/NoSuchFieldError; {:try_start_21 .. :try_end_21} :catch_21

    :catch_21
    :try_start_22
    sget-object v5, Lcom/metamoji/nt/NtNoteController$81;->$SwitchMap$com$metamoji$nt$NtCommand:[I

    sget-object v6, Lcom/metamoji/nt/NtCommand;->CMD_SHOW_PEN_ATTR:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {v6}, Lcom/metamoji/nt/NtCommand;->ordinal()I

    move-result v6

    const/16 v7, 0x1c

    aput v7, v5, v6
    :try_end_22
    .catch Ljava/lang/NoSuchFieldError; {:try_start_22 .. :try_end_22} :catch_22

    :catch_22
    :try_start_23
    sget-object v5, Lcom/metamoji/nt/NtNoteController$81;->$SwitchMap$com$metamoji$nt$NtCommand:[I

    sget-object v6, Lcom/metamoji/nt/NtCommand;->CMD_LASER_POINTER_COLOR_CHANGED:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {v6}, Lcom/metamoji/nt/NtCommand;->ordinal()I

    move-result v6

    const/16 v7, 0x1d

    aput v7, v5, v6
    :try_end_23
    .catch Ljava/lang/NoSuchFieldError; {:try_start_23 .. :try_end_23} :catch_23

    :catch_23
    :try_start_24
    sget-object v5, Lcom/metamoji/nt/NtNoteController$81;->$SwitchMap$com$metamoji$nt$NtCommand:[I

    sget-object v6, Lcom/metamoji/nt/NtCommand;->CMD_SHOW_CONTEXT_MENU:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {v6}, Lcom/metamoji/nt/NtCommand;->ordinal()I

    move-result v6

    const/16 v7, 0x1e

    aput v7, v5, v6
    :try_end_24
    .catch Ljava/lang/NoSuchFieldError; {:try_start_24 .. :try_end_24} :catch_24

    :catch_24
    :try_start_25
    sget-object v5, Lcom/metamoji/nt/NtNoteController$81;->$SwitchMap$com$metamoji$nt$NtCommand:[I

    sget-object v6, Lcom/metamoji/nt/NtCommand;->CMD_CLOSEMENU:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {v6}, Lcom/metamoji/nt/NtCommand;->ordinal()I

    move-result v6

    const/16 v7, 0x1f

    aput v7, v5, v6
    :try_end_25
    .catch Ljava/lang/NoSuchFieldError; {:try_start_25 .. :try_end_25} :catch_25

    :catch_25
    :try_start_26
    sget-object v5, Lcom/metamoji/nt/NtNoteController$81;->$SwitchMap$com$metamoji$nt$NtCommand:[I

    sget-object v6, Lcom/metamoji/nt/NtCommand;->CMD_END_EDIT:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {v6}, Lcom/metamoji/nt/NtCommand;->ordinal()I

    move-result v6

    const/16 v7, 0x20

    aput v7, v5, v6
    :try_end_26
    .catch Ljava/lang/NoSuchFieldError; {:try_start_26 .. :try_end_26} :catch_26

    :catch_26
    :try_start_27
    sget-object v5, Lcom/metamoji/nt/NtNoteController$81;->$SwitchMap$com$metamoji$nt$NtCommand:[I

    sget-object v6, Lcom/metamoji/nt/NtCommand;->CMD_NAV_SELECTTOOL:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {v6}, Lcom/metamoji/nt/NtCommand;->ordinal()I

    move-result v6

    const/16 v7, 0x21

    aput v7, v5, v6
    :try_end_27
    .catch Ljava/lang/NoSuchFieldError; {:try_start_27 .. :try_end_27} :catch_27

    :catch_27
    :try_start_28
    sget-object v5, Lcom/metamoji/nt/NtNoteController$81;->$SwitchMap$com$metamoji$nt$NtCommand:[I

    sget-object v6, Lcom/metamoji/nt/NtCommand;->CMD_NAV_PENTOOL:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {v6}, Lcom/metamoji/nt/NtCommand;->ordinal()I

    move-result v6

    const/16 v7, 0x22

    aput v7, v5, v6
    :try_end_28
    .catch Ljava/lang/NoSuchFieldError; {:try_start_28 .. :try_end_28} :catch_28

    :catch_28
    :try_start_29
    sget-object v5, Lcom/metamoji/nt/NtNoteController$81;->$SwitchMap$com$metamoji$nt$NtCommand:[I

    sget-object v6, Lcom/metamoji/nt/NtCommand;->CMD_NAV_ERASERTOOL:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {v6}, Lcom/metamoji/nt/NtCommand;->ordinal()I

    move-result v6

    const/16 v7, 0x23

    aput v7, v5, v6
    :try_end_29
    .catch Ljava/lang/NoSuchFieldError; {:try_start_29 .. :try_end_29} :catch_29

    :catch_29
    :try_start_2a
    sget-object v5, Lcom/metamoji/nt/NtNoteController$81;->$SwitchMap$com$metamoji$nt$NtCommand:[I

    sget-object v6, Lcom/metamoji/nt/NtCommand;->CMD_TEXT_PEN_EDIT:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {v6}, Lcom/metamoji/nt/NtCommand;->ordinal()I

    move-result v6

    const/16 v7, 0x24

    aput v7, v5, v6
    :try_end_2a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2a .. :try_end_2a} :catch_2a

    :catch_2a
    :try_start_2b
    sget-object v5, Lcom/metamoji/nt/NtNoteController$81;->$SwitchMap$com$metamoji$nt$NtCommand:[I

    sget-object v6, Lcom/metamoji/nt/NtCommand;->CMD_TEXT_PENSET:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {v6}, Lcom/metamoji/nt/NtCommand;->ordinal()I

    move-result v6

    const/16 v7, 0x25

    aput v7, v5, v6
    :try_end_2b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2b .. :try_end_2b} :catch_2b

    :catch_2b
    :try_start_2c
    sget-object v5, Lcom/metamoji/nt/NtNoteController$81;->$SwitchMap$com$metamoji$nt$NtCommand:[I

    sget-object v6, Lcom/metamoji/nt/NtCommand;->CMD_TEXT_SHOW_HIDE_MAZEC:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {v6}, Lcom/metamoji/nt/NtCommand;->ordinal()I

    move-result v6

    const/16 v7, 0x26

    aput v7, v5, v6
    :try_end_2c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2c .. :try_end_2c} :catch_2c

    :catch_2c
    :try_start_2d
    sget-object v5, Lcom/metamoji/nt/NtNoteController$81;->$SwitchMap$com$metamoji$nt$NtCommand:[I

    sget-object v6, Lcom/metamoji/nt/NtCommand;->CMD_SHOW_SEARCH_TEXT_BAR:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {v6}, Lcom/metamoji/nt/NtCommand;->ordinal()I

    move-result v6

    const/16 v7, 0x27

    aput v7, v5, v6
    :try_end_2d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2d .. :try_end_2d} :catch_2d

    :catch_2d
    :try_start_2e
    sget-object v5, Lcom/metamoji/nt/NtNoteController$81;->$SwitchMap$com$metamoji$nt$NtCommand:[I

    sget-object v6, Lcom/metamoji/nt/NtCommand;->CMD_HIDE_SEARCH_TEXT_BAR:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {v6}, Lcom/metamoji/nt/NtCommand;->ordinal()I

    move-result v6

    const/16 v7, 0x28

    aput v7, v5, v6
    :try_end_2e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2e .. :try_end_2e} :catch_2e

    :catch_2e
    :try_start_2f
    sget-object v5, Lcom/metamoji/nt/NtNoteController$81;->$SwitchMap$com$metamoji$nt$NtCommand:[I

    sget-object v6, Lcom/metamoji/nt/NtCommand;->CMD_SEARCH_TEXT_NEXT:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {v6}, Lcom/metamoji/nt/NtCommand;->ordinal()I

    move-result v6

    const/16 v7, 0x29

    aput v7, v5, v6
    :try_end_2f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2f .. :try_end_2f} :catch_2f

    :catch_2f
    :try_start_30
    sget-object v5, Lcom/metamoji/nt/NtNoteController$81;->$SwitchMap$com$metamoji$nt$NtCommand:[I

    sget-object v6, Lcom/metamoji/nt/NtCommand;->CMD_SEARCH_TEXT_PREV:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {v6}, Lcom/metamoji/nt/NtCommand;->ordinal()I

    move-result v6

    const/16 v7, 0x2a

    aput v7, v5, v6
    :try_end_30
    .catch Ljava/lang/NoSuchFieldError; {:try_start_30 .. :try_end_30} :catch_30

    :catch_30
    :try_start_31
    sget-object v5, Lcom/metamoji/nt/NtNoteController$81;->$SwitchMap$com$metamoji$nt$NtCommand:[I

    sget-object v6, Lcom/metamoji/nt/NtCommand;->CMD_INTERNAL_ADD_TEXT_UNIT:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {v6}, Lcom/metamoji/nt/NtCommand;->ordinal()I

    move-result v6

    const/16 v7, 0x2b

    aput v7, v5, v6
    :try_end_31
    .catch Ljava/lang/NoSuchFieldError; {:try_start_31 .. :try_end_31} :catch_31

    :catch_31
    :try_start_32
    sget-object v5, Lcom/metamoji/nt/NtNoteController$81;->$SwitchMap$com$metamoji$nt$NtCommand:[I

    sget-object v6, Lcom/metamoji/nt/NtCommand;->CMD_INTERNAL_ADD_PAGE:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {v6}, Lcom/metamoji/nt/NtCommand;->ordinal()I

    move-result v6

    const/16 v7, 0x2c

    aput v7, v5, v6
    :try_end_32
    .catch Ljava/lang/NoSuchFieldError; {:try_start_32 .. :try_end_32} :catch_32

    :catch_32
    :try_start_33
    sget-object v5, Lcom/metamoji/nt/NtNoteController$81;->$SwitchMap$com$metamoji$nt$NtCommand:[I

    sget-object v6, Lcom/metamoji/nt/NtCommand;->CMD_INTERNAL_INSERT_DOCUMENT:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {v6}, Lcom/metamoji/nt/NtCommand;->ordinal()I

    move-result v6

    const/16 v7, 0x2d

    aput v7, v5, v6
    :try_end_33
    .catch Ljava/lang/NoSuchFieldError; {:try_start_33 .. :try_end_33} :catch_33

    :catch_33
    :try_start_34
    sget-object v5, Lcom/metamoji/nt/NtNoteController$81;->$SwitchMap$com$metamoji$nt$NtCommand:[I

    sget-object v6, Lcom/metamoji/nt/NtCommand;->CMD_CHANGE_NOTE_SETTINGS_VERTICAL_WRITING:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {v6}, Lcom/metamoji/nt/NtCommand;->ordinal()I

    move-result v6

    const/16 v7, 0x2e

    aput v7, v5, v6
    :try_end_34
    .catch Ljava/lang/NoSuchFieldError; {:try_start_34 .. :try_end_34} :catch_34

    :catch_34
    :try_start_35
    sget-object v5, Lcom/metamoji/nt/NtNoteController$81;->$SwitchMap$com$metamoji$nt$NtCommand:[I

    sget-object v6, Lcom/metamoji/nt/NtCommand;->CMD_CHANGE_VIEW_LOCATION:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {v6}, Lcom/metamoji/nt/NtCommand;->ordinal()I

    move-result v6

    const/16 v7, 0x2f

    aput v7, v5, v6
    :try_end_35
    .catch Ljava/lang/NoSuchFieldError; {:try_start_35 .. :try_end_35} :catch_35

    :catch_35
    :try_start_36
    sget-object v5, Lcom/metamoji/nt/NtNoteController$81;->$SwitchMap$com$metamoji$nt$NtCommand:[I

    sget-object v6, Lcom/metamoji/nt/NtCommand;->CMD_CAN_NOTEMODE_TEXT:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {v6}, Lcom/metamoji/nt/NtCommand;->ordinal()I

    move-result v6

    const/16 v7, 0x30

    aput v7, v5, v6
    :try_end_36
    .catch Ljava/lang/NoSuchFieldError; {:try_start_36 .. :try_end_36} :catch_36

    :catch_36
    :try_start_37
    sget-object v5, Lcom/metamoji/nt/NtNoteController$81;->$SwitchMap$com$metamoji$nt$NtCommand:[I

    sget-object v6, Lcom/metamoji/nt/NtCommand;->CMD_DETAIL_WINDOW:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {v6}, Lcom/metamoji/nt/NtCommand;->ordinal()I

    move-result v6

    const/16 v7, 0x31

    aput v7, v5, v6
    :try_end_37
    .catch Ljava/lang/NoSuchFieldError; {:try_start_37 .. :try_end_37} :catch_37

    :catch_37
    :try_start_38
    sget-object v5, Lcom/metamoji/nt/NtNoteController$81;->$SwitchMap$com$metamoji$nt$NtCommand:[I

    sget-object v6, Lcom/metamoji/nt/NtCommand;->CMD_SHOW_WRIST_GUARD:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {v6}, Lcom/metamoji/nt/NtCommand;->ordinal()I

    move-result v6

    const/16 v7, 0x32

    aput v7, v5, v6
    :try_end_38
    .catch Ljava/lang/NoSuchFieldError; {:try_start_38 .. :try_end_38} :catch_38

    :catch_38
    :try_start_39
    sget-object v5, Lcom/metamoji/nt/NtNoteController$81;->$SwitchMap$com$metamoji$nt$NtCommand:[I

    sget-object v6, Lcom/metamoji/nt/NtCommand;->CMD_PAPER_SIZE:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {v6}, Lcom/metamoji/nt/NtCommand;->ordinal()I

    move-result v6

    const/16 v7, 0x33

    aput v7, v5, v6
    :try_end_39
    .catch Ljava/lang/NoSuchFieldError; {:try_start_39 .. :try_end_39} :catch_39

    :catch_39
    :try_start_3a
    sget-object v5, Lcom/metamoji/nt/NtNoteController$81;->$SwitchMap$com$metamoji$nt$NtCommand:[I

    sget-object v6, Lcom/metamoji/nt/NtCommand;->CMD_PAPER_CHANGE:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {v6}, Lcom/metamoji/nt/NtCommand;->ordinal()I

    move-result v6

    const/16 v7, 0x34

    aput v7, v5, v6
    :try_end_3a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3a .. :try_end_3a} :catch_3a

    :catch_3a
    :try_start_3b
    sget-object v5, Lcom/metamoji/nt/NtNoteController$81;->$SwitchMap$com$metamoji$nt$NtCommand:[I

    sget-object v6, Lcom/metamoji/nt/NtCommand;->CMD_PAPER_BACKGROUND:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {v6}, Lcom/metamoji/nt/NtCommand;->ordinal()I

    move-result v6

    const/16 v7, 0x35

    aput v7, v5, v6
    :try_end_3b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3b .. :try_end_3b} :catch_3b

    .line 1897
    :catch_3b
    invoke-static {}, Lcom/metamoji/nt/NtDocument$EditMode;->values()[Lcom/metamoji/nt/NtDocument$EditMode;

    move-result-object v5

    array-length v5, v5

    new-array v5, v5, [I

    sput-object v5, Lcom/metamoji/nt/NtNoteController$81;->$SwitchMap$com$metamoji$nt$NtDocument$EditMode:[I

    :try_start_3c
    sget-object v6, Lcom/metamoji/nt/NtDocument$EditMode;->VIEWMODE:Lcom/metamoji/nt/NtDocument$EditMode;

    invoke-virtual {v6}, Lcom/metamoji/nt/NtDocument$EditMode;->ordinal()I

    move-result v6

    aput v1, v5, v6
    :try_end_3c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3c .. :try_end_3c} :catch_3c

    :catch_3c
    :try_start_3d
    sget-object v5, Lcom/metamoji/nt/NtNoteController$81;->$SwitchMap$com$metamoji$nt$NtDocument$EditMode:[I

    sget-object v6, Lcom/metamoji/nt/NtDocument$EditMode;->LASERMODE:Lcom/metamoji/nt/NtDocument$EditMode;

    invoke-virtual {v6}, Lcom/metamoji/nt/NtDocument$EditMode;->ordinal()I

    move-result v6

    aput v0, v5, v6
    :try_end_3d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3d .. :try_end_3d} :catch_3d

    :catch_3d
    :try_start_3e
    sget-object v5, Lcom/metamoji/nt/NtNoteController$81;->$SwitchMap$com$metamoji$nt$NtDocument$EditMode:[I

    sget-object v6, Lcom/metamoji/nt/NtDocument$EditMode;->EDITMODE:Lcom/metamoji/nt/NtDocument$EditMode;

    invoke-virtual {v6}, Lcom/metamoji/nt/NtDocument$EditMode;->ordinal()I

    move-result v6

    aput v2, v5, v6
    :try_end_3e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3e .. :try_end_3e} :catch_3e

    .line 1903
    :catch_3e
    invoke-static {}, Lcom/metamoji/nt/NtDocument$ToolMode;->values()[Lcom/metamoji/nt/NtDocument$ToolMode;

    move-result-object v5

    array-length v5, v5

    new-array v5, v5, [I

    sput-object v5, Lcom/metamoji/nt/NtNoteController$81;->$SwitchMap$com$metamoji$nt$NtDocument$ToolMode:[I

    :try_start_3f
    sget-object v6, Lcom/metamoji/nt/NtDocument$ToolMode;->PEN:Lcom/metamoji/nt/NtDocument$ToolMode;

    invoke-virtual {v6}, Lcom/metamoji/nt/NtDocument$ToolMode;->ordinal()I

    move-result v6

    aput v1, v5, v6
    :try_end_3f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3f .. :try_end_3f} :catch_3f

    :catch_3f
    :try_start_40
    sget-object v5, Lcom/metamoji/nt/NtNoteController$81;->$SwitchMap$com$metamoji$nt$NtDocument$ToolMode:[I

    sget-object v6, Lcom/metamoji/nt/NtDocument$ToolMode;->ERASER:Lcom/metamoji/nt/NtDocument$ToolMode;

    invoke-virtual {v6}, Lcom/metamoji/nt/NtDocument$ToolMode;->ordinal()I

    move-result v6

    aput v0, v5, v6
    :try_end_40
    .catch Ljava/lang/NoSuchFieldError; {:try_start_40 .. :try_end_40} :catch_40

    :catch_40
    :try_start_41
    sget-object v5, Lcom/metamoji/nt/NtNoteController$81;->$SwitchMap$com$metamoji$nt$NtDocument$ToolMode:[I

    sget-object v6, Lcom/metamoji/nt/NtDocument$ToolMode;->SELECT:Lcom/metamoji/nt/NtDocument$ToolMode;

    invoke-virtual {v6}, Lcom/metamoji/nt/NtDocument$ToolMode;->ordinal()I

    move-result v6

    aput v2, v5, v6
    :try_end_41
    .catch Ljava/lang/NoSuchFieldError; {:try_start_41 .. :try_end_41} :catch_41

    :catch_41
    :try_start_42
    sget-object v5, Lcom/metamoji/nt/NtNoteController$81;->$SwitchMap$com$metamoji$nt$NtDocument$ToolMode:[I

    sget-object v6, Lcom/metamoji/nt/NtDocument$ToolMode;->TEXT:Lcom/metamoji/nt/NtDocument$ToolMode;

    invoke-virtual {v6}, Lcom/metamoji/nt/NtDocument$ToolMode;->ordinal()I

    move-result v6

    aput v3, v5, v6
    :try_end_42
    .catch Ljava/lang/NoSuchFieldError; {:try_start_42 .. :try_end_42} :catch_42

    :catch_42
    :try_start_43
    sget-object v5, Lcom/metamoji/nt/NtNoteController$81;->$SwitchMap$com$metamoji$nt$NtDocument$ToolMode:[I

    sget-object v6, Lcom/metamoji/nt/NtDocument$ToolMode;->ARRANGE:Lcom/metamoji/nt/NtDocument$ToolMode;

    invoke-virtual {v6}, Lcom/metamoji/nt/NtDocument$ToolMode;->ordinal()I

    move-result v6

    aput v4, v5, v6
    :try_end_43
    .catch Ljava/lang/NoSuchFieldError; {:try_start_43 .. :try_end_43} :catch_43

    .line 1657
    :catch_43
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController$EditOperation;->values()[Lcom/metamoji/nt/NtEditorWindowController$EditOperation;

    move-result-object v4

    array-length v4, v4

    new-array v4, v4, [I

    sput-object v4, Lcom/metamoji/nt/NtNoteController$81;->$SwitchMap$com$metamoji$nt$NtEditorWindowController$EditOperation:[I

    :try_start_44
    sget-object v5, Lcom/metamoji/nt/NtEditorWindowController$EditOperation;->Edit:Lcom/metamoji/nt/NtEditorWindowController$EditOperation;

    invoke-virtual {v5}, Lcom/metamoji/nt/NtEditorWindowController$EditOperation;->ordinal()I

    move-result v5

    aput v1, v4, v5
    :try_end_44
    .catch Ljava/lang/NoSuchFieldError; {:try_start_44 .. :try_end_44} :catch_44

    :catch_44
    :try_start_45
    sget-object v1, Lcom/metamoji/nt/NtNoteController$81;->$SwitchMap$com$metamoji$nt$NtEditorWindowController$EditOperation:[I

    sget-object v4, Lcom/metamoji/nt/NtEditorWindowController$EditOperation;->Import:Lcom/metamoji/nt/NtEditorWindowController$EditOperation;

    invoke-virtual {v4}, Lcom/metamoji/nt/NtEditorWindowController$EditOperation;->ordinal()I

    move-result v4

    aput v0, v1, v4
    :try_end_45
    .catch Ljava/lang/NoSuchFieldError; {:try_start_45 .. :try_end_45} :catch_45

    :catch_45
    :try_start_46
    sget-object v0, Lcom/metamoji/nt/NtNoteController$81;->$SwitchMap$com$metamoji$nt$NtEditorWindowController$EditOperation:[I

    sget-object v1, Lcom/metamoji/nt/NtEditorWindowController$EditOperation;->PDF:Lcom/metamoji/nt/NtEditorWindowController$EditOperation;

    invoke-virtual {v1}, Lcom/metamoji/nt/NtEditorWindowController$EditOperation;->ordinal()I

    move-result v1

    aput v2, v0, v1
    :try_end_46
    .catch Ljava/lang/NoSuchFieldError; {:try_start_46 .. :try_end_46} :catch_46

    :catch_46
    :try_start_47
    sget-object v0, Lcom/metamoji/nt/NtNoteController$81;->$SwitchMap$com$metamoji$nt$NtEditorWindowController$EditOperation:[I

    sget-object v1, Lcom/metamoji/nt/NtEditorWindowController$EditOperation;->Restore:Lcom/metamoji/nt/NtEditorWindowController$EditOperation;

    invoke-virtual {v1}, Lcom/metamoji/nt/NtEditorWindowController$EditOperation;->ordinal()I

    move-result v1

    aput v3, v0, v1
    :try_end_47
    .catch Ljava/lang/NoSuchFieldError; {:try_start_47 .. :try_end_47} :catch_47

    :catch_47
    return-void
.end method
