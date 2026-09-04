.class synthetic Lcom/metamoji/ui/menu/UiMenuModeLayoutView$1;
.super Ljava/lang/Object;
.source "UiMenuModeLayoutView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/ui/menu/UiMenuModeLayoutView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$metamoji$nt$NtNoteController$NoteMode:[I

.field static final synthetic $SwitchMap$com$metamoji$ui$flexible$FxManagerDef$FxId:[I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 341
    invoke-static {}, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->values()[Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/metamoji/ui/menu/UiMenuModeLayoutView$1;->$SwitchMap$com$metamoji$ui$flexible$FxManagerDef$FxId:[I

    const/4 v1, 0x1

    :try_start_0
    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_PEN_INDEX0:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    invoke-virtual {v2}, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x2

    :try_start_1
    sget-object v2, Lcom/metamoji/ui/menu/UiMenuModeLayoutView$1;->$SwitchMap$com$metamoji$ui$flexible$FxManagerDef$FxId:[I

    sget-object v3, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_PEN_INDEX1:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    invoke-virtual {v3}, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    const/4 v2, 0x3

    :try_start_2
    sget-object v3, Lcom/metamoji/ui/menu/UiMenuModeLayoutView$1;->$SwitchMap$com$metamoji$ui$flexible$FxManagerDef$FxId:[I

    sget-object v4, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_PEN_INDEX2:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    invoke-virtual {v4}, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    const/4 v3, 0x4

    :try_start_3
    sget-object v4, Lcom/metamoji/ui/menu/UiMenuModeLayoutView$1;->$SwitchMap$com$metamoji$ui$flexible$FxManagerDef$FxId:[I

    sget-object v5, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_PEN_INDEX3:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    invoke-virtual {v5}, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->ordinal()I

    move-result v5

    aput v3, v4, v5
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    const/4 v4, 0x5

    :try_start_4
    sget-object v5, Lcom/metamoji/ui/menu/UiMenuModeLayoutView$1;->$SwitchMap$com$metamoji$ui$flexible$FxManagerDef$FxId:[I

    sget-object v6, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_PEN_INDEX4:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    invoke-virtual {v6}, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->ordinal()I

    move-result v6

    aput v4, v5, v6
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    const/4 v5, 0x6

    :try_start_5
    sget-object v6, Lcom/metamoji/ui/menu/UiMenuModeLayoutView$1;->$SwitchMap$com$metamoji$ui$flexible$FxManagerDef$FxId:[I

    sget-object v7, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_SELECT_OVERLAP:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    invoke-virtual {v7}, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->ordinal()I

    move-result v7

    aput v5, v6, v7
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    :try_start_6
    sget-object v6, Lcom/metamoji/ui/menu/UiMenuModeLayoutView$1;->$SwitchMap$com$metamoji$ui$flexible$FxManagerDef$FxId:[I

    sget-object v7, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_SELECT_CONTAIN:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    invoke-virtual {v7}, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->ordinal()I

    move-result v7

    const/4 v8, 0x7

    aput v8, v6, v7
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    :catch_6
    :try_start_7
    sget-object v6, Lcom/metamoji/ui/menu/UiMenuModeLayoutView$1;->$SwitchMap$com$metamoji$ui$flexible$FxManagerDef$FxId:[I

    sget-object v7, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_ERASER_THIN:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    invoke-virtual {v7}, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->ordinal()I

    move-result v7

    const/16 v8, 0x8

    aput v8, v6, v7
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    :catch_7
    :try_start_8
    sget-object v6, Lcom/metamoji/ui/menu/UiMenuModeLayoutView$1;->$SwitchMap$com$metamoji$ui$flexible$FxManagerDef$FxId:[I

    sget-object v7, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_ERASER_NOR:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    invoke-virtual {v7}, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->ordinal()I

    move-result v7

    const/16 v8, 0x9

    aput v8, v6, v7
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_8

    :catch_8
    :try_start_9
    sget-object v6, Lcom/metamoji/ui/menu/UiMenuModeLayoutView$1;->$SwitchMap$com$metamoji$ui$flexible$FxManagerDef$FxId:[I

    sget-object v7, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_ERASER_WIDE:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    invoke-virtual {v7}, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->ordinal()I

    move-result v7

    const/16 v8, 0xa

    aput v8, v6, v7
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_9

    :catch_9
    :try_start_a
    sget-object v6, Lcom/metamoji/ui/menu/UiMenuModeLayoutView$1;->$SwitchMap$com$metamoji$ui$flexible$FxManagerDef$FxId:[I

    sget-object v7, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_VIEW_MODE:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    invoke-virtual {v7}, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->ordinal()I

    move-result v7

    const/16 v8, 0xb

    aput v8, v6, v7
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_a

    :catch_a
    :try_start_b
    sget-object v6, Lcom/metamoji/ui/menu/UiMenuModeLayoutView$1;->$SwitchMap$com$metamoji$ui$flexible$FxManagerDef$FxId:[I

    sget-object v7, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_LASER_MODE:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    invoke-virtual {v7}, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->ordinal()I

    move-result v7

    const/16 v8, 0xc

    aput v8, v6, v7
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_b

    :catch_b
    :try_start_c
    sget-object v6, Lcom/metamoji/ui/menu/UiMenuModeLayoutView$1;->$SwitchMap$com$metamoji$ui$flexible$FxManagerDef$FxId:[I

    sget-object v7, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_PEN_MODE:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    invoke-virtual {v7}, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->ordinal()I

    move-result v7

    const/16 v8, 0xd

    aput v8, v6, v7
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_c

    :catch_c
    :try_start_d
    sget-object v6, Lcom/metamoji/ui/menu/UiMenuModeLayoutView$1;->$SwitchMap$com$metamoji$ui$flexible$FxManagerDef$FxId:[I

    sget-object v7, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_ERASER_MODE:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    invoke-virtual {v7}, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->ordinal()I

    move-result v7

    const/16 v8, 0xe

    aput v8, v6, v7
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_d

    :catch_d
    :try_start_e
    sget-object v6, Lcom/metamoji/ui/menu/UiMenuModeLayoutView$1;->$SwitchMap$com$metamoji$ui$flexible$FxManagerDef$FxId:[I

    sget-object v7, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_SELECT_MODE:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    invoke-virtual {v7}, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->ordinal()I

    move-result v7

    const/16 v8, 0xf

    aput v8, v6, v7
    :try_end_e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_e} :catch_e

    :catch_e
    :try_start_f
    sget-object v6, Lcom/metamoji/ui/menu/UiMenuModeLayoutView$1;->$SwitchMap$com$metamoji$ui$flexible$FxManagerDef$FxId:[I

    sget-object v7, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_TEXT_MODE:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    invoke-virtual {v7}, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->ordinal()I

    move-result v7

    const/16 v8, 0x10

    aput v8, v6, v7
    :try_end_f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f .. :try_end_f} :catch_f

    :catch_f
    :try_start_10
    sget-object v6, Lcom/metamoji/ui/menu/UiMenuModeLayoutView$1;->$SwitchMap$com$metamoji$ui$flexible$FxManagerDef$FxId:[I

    sget-object v7, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_ARRANGE_MODE:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    invoke-virtual {v7}, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->ordinal()I

    move-result v7

    const/16 v8, 0x11

    aput v8, v6, v7
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10 .. :try_end_10} :catch_10

    :catch_10
    :try_start_11
    sget-object v6, Lcom/metamoji/ui/menu/UiMenuModeLayoutView$1;->$SwitchMap$com$metamoji$ui$flexible$FxManagerDef$FxId:[I

    sget-object v7, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_TEXT_PALLET_PLUS:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    invoke-virtual {v7}, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->ordinal()I

    move-result v7

    const/16 v8, 0x12

    aput v8, v6, v7
    :try_end_11
    .catch Ljava/lang/NoSuchFieldError; {:try_start_11 .. :try_end_11} :catch_11

    :catch_11
    :try_start_12
    sget-object v6, Lcom/metamoji/ui/menu/UiMenuModeLayoutView$1;->$SwitchMap$com$metamoji$ui$flexible$FxManagerDef$FxId:[I

    sget-object v7, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_TEXT_PALLET_MINUS:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    invoke-virtual {v7}, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->ordinal()I

    move-result v7

    const/16 v8, 0x13

    aput v8, v6, v7
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_12} :catch_12

    :catch_12
    :try_start_13
    sget-object v6, Lcom/metamoji/ui/menu/UiMenuModeLayoutView$1;->$SwitchMap$com$metamoji$ui$flexible$FxManagerDef$FxId:[I

    sget-object v7, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_TEXT_PALLET_CONTEXT:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    invoke-virtual {v7}, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->ordinal()I

    move-result v7

    const/16 v8, 0x14

    aput v8, v6, v7
    :try_end_13
    .catch Ljava/lang/NoSuchFieldError; {:try_start_13 .. :try_end_13} :catch_13

    :catch_13
    :try_start_14
    sget-object v6, Lcom/metamoji/ui/menu/UiMenuModeLayoutView$1;->$SwitchMap$com$metamoji$ui$flexible$FxManagerDef$FxId:[I

    sget-object v7, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_TEXT_PALLET_STYLE:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    invoke-virtual {v7}, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->ordinal()I

    move-result v7

    const/16 v8, 0x15

    aput v8, v6, v7
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_14} :catch_14

    :catch_14
    :try_start_15
    sget-object v6, Lcom/metamoji/ui/menu/UiMenuModeLayoutView$1;->$SwitchMap$com$metamoji$ui$flexible$FxManagerDef$FxId:[I

    sget-object v7, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_TEXT_PALLET_MAZEC:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    invoke-virtual {v7}, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->ordinal()I

    move-result v7

    const/16 v8, 0x16

    aput v8, v6, v7
    :try_end_15
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15 .. :try_end_15} :catch_15

    :catch_15
    :try_start_16
    sget-object v6, Lcom/metamoji/ui/menu/UiMenuModeLayoutView$1;->$SwitchMap$com$metamoji$ui$flexible$FxManagerDef$FxId:[I

    sget-object v7, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_TEXT_PALLET_NOTE_SETTINGS_VERTICAL_WRITING:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    invoke-virtual {v7}, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->ordinal()I

    move-result v7

    const/16 v8, 0x17

    aput v8, v6, v7
    :try_end_16
    .catch Ljava/lang/NoSuchFieldError; {:try_start_16 .. :try_end_16} :catch_16

    :catch_16
    :try_start_17
    sget-object v6, Lcom/metamoji/ui/menu/UiMenuModeLayoutView$1;->$SwitchMap$com$metamoji$ui$flexible$FxManagerDef$FxId:[I

    sget-object v7, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_TEXT_PALLET_UNIT_SETTINGS_VERTICAL_WRITING:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    invoke-virtual {v7}, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->ordinal()I

    move-result v7

    const/16 v8, 0x18

    aput v8, v6, v7
    :try_end_17
    .catch Ljava/lang/NoSuchFieldError; {:try_start_17 .. :try_end_17} :catch_17

    :catch_17
    :try_start_18
    sget-object v6, Lcom/metamoji/ui/menu/UiMenuModeLayoutView$1;->$SwitchMap$com$metamoji$ui$flexible$FxManagerDef$FxId:[I

    sget-object v7, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_SHAPE_PEN_MODECHANGE:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    invoke-virtual {v7}, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->ordinal()I

    move-result v7

    const/16 v8, 0x19

    aput v8, v6, v7
    :try_end_18
    .catch Ljava/lang/NoSuchFieldError; {:try_start_18 .. :try_end_18} :catch_18

    .line 189
    :catch_18
    invoke-static {}, Lcom/metamoji/nt/NtNoteController$NoteMode;->values()[Lcom/metamoji/nt/NtNoteController$NoteMode;

    move-result-object v6

    array-length v6, v6

    new-array v6, v6, [I

    sput-object v6, Lcom/metamoji/ui/menu/UiMenuModeLayoutView$1;->$SwitchMap$com$metamoji$nt$NtNoteController$NoteMode:[I

    :try_start_19
    sget-object v7, Lcom/metamoji/nt/NtNoteController$NoteMode;->LASER:Lcom/metamoji/nt/NtNoteController$NoteMode;

    invoke-virtual {v7}, Lcom/metamoji/nt/NtNoteController$NoteMode;->ordinal()I

    move-result v7

    aput v1, v6, v7
    :try_end_19
    .catch Ljava/lang/NoSuchFieldError; {:try_start_19 .. :try_end_19} :catch_19

    :catch_19
    :try_start_1a
    sget-object v1, Lcom/metamoji/ui/menu/UiMenuModeLayoutView$1;->$SwitchMap$com$metamoji$nt$NtNoteController$NoteMode:[I

    sget-object v6, Lcom/metamoji/nt/NtNoteController$NoteMode;->PEN:Lcom/metamoji/nt/NtNoteController$NoteMode;

    invoke-virtual {v6}, Lcom/metamoji/nt/NtNoteController$NoteMode;->ordinal()I

    move-result v6

    aput v0, v1, v6
    :try_end_1a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1a .. :try_end_1a} :catch_1a

    :catch_1a
    :try_start_1b
    sget-object v0, Lcom/metamoji/ui/menu/UiMenuModeLayoutView$1;->$SwitchMap$com$metamoji$nt$NtNoteController$NoteMode:[I

    sget-object v1, Lcom/metamoji/nt/NtNoteController$NoteMode;->ERASER:Lcom/metamoji/nt/NtNoteController$NoteMode;

    invoke-virtual {v1}, Lcom/metamoji/nt/NtNoteController$NoteMode;->ordinal()I

    move-result v1

    aput v2, v0, v1
    :try_end_1b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1b .. :try_end_1b} :catch_1b

    :catch_1b
    :try_start_1c
    sget-object v0, Lcom/metamoji/ui/menu/UiMenuModeLayoutView$1;->$SwitchMap$com$metamoji$nt$NtNoteController$NoteMode:[I

    sget-object v1, Lcom/metamoji/nt/NtNoteController$NoteMode;->SELECT:Lcom/metamoji/nt/NtNoteController$NoteMode;

    invoke-virtual {v1}, Lcom/metamoji/nt/NtNoteController$NoteMode;->ordinal()I

    move-result v1

    aput v3, v0, v1
    :try_end_1c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1c .. :try_end_1c} :catch_1c

    :catch_1c
    :try_start_1d
    sget-object v0, Lcom/metamoji/ui/menu/UiMenuModeLayoutView$1;->$SwitchMap$com$metamoji$nt$NtNoteController$NoteMode:[I

    sget-object v1, Lcom/metamoji/nt/NtNoteController$NoteMode;->TEXT:Lcom/metamoji/nt/NtNoteController$NoteMode;

    invoke-virtual {v1}, Lcom/metamoji/nt/NtNoteController$NoteMode;->ordinal()I

    move-result v1

    aput v4, v0, v1
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_1d} :catch_1d

    :catch_1d
    :try_start_1e
    sget-object v0, Lcom/metamoji/ui/menu/UiMenuModeLayoutView$1;->$SwitchMap$com$metamoji$nt$NtNoteController$NoteMode:[I

    sget-object v1, Lcom/metamoji/nt/NtNoteController$NoteMode;->ARRANGE:Lcom/metamoji/nt/NtNoteController$NoteMode;

    invoke-virtual {v1}, Lcom/metamoji/nt/NtNoteController$NoteMode;->ordinal()I

    move-result v1

    aput v5, v0, v1
    :try_end_1e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1e .. :try_end_1e} :catch_1e

    :catch_1e
    return-void
.end method
