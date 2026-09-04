.class synthetic Lcom/metamoji/ui/HoverSelectorView$9;
.super Ljava/lang/Object;
.source "HoverSelectorView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/ui/HoverSelectorView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$metamoji$nt$NtCommand:[I

.field static final synthetic $SwitchMap$com$metamoji$nt$NtNoteController$NoteMode:[I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 992
    invoke-static {}, Lcom/metamoji/nt/NtCommand;->values()[Lcom/metamoji/nt/NtCommand;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/metamoji/ui/HoverSelectorView$9;->$SwitchMap$com$metamoji$nt$NtCommand:[I

    const/4 v1, 0x1

    :try_start_0
    sget-object v2, Lcom/metamoji/nt/NtCommand;->CMD_SET_NOTEMODE:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {v2}, Lcom/metamoji/nt/NtCommand;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x2

    :try_start_1
    sget-object v2, Lcom/metamoji/ui/HoverSelectorView$9;->$SwitchMap$com$metamoji$nt$NtCommand:[I

    sget-object v3, Lcom/metamoji/nt/NtCommand;->CMD_SELECTPEN:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {v3}, Lcom/metamoji/nt/NtCommand;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    const/4 v2, 0x3

    :try_start_2
    sget-object v3, Lcom/metamoji/ui/HoverSelectorView$9;->$SwitchMap$com$metamoji$nt$NtCommand:[I

    sget-object v4, Lcom/metamoji/nt/NtCommand;->CMD_SELECTERASER:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {v4}, Lcom/metamoji/nt/NtCommand;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    const/4 v3, 0x4

    :try_start_3
    sget-object v4, Lcom/metamoji/ui/HoverSelectorView$9;->$SwitchMap$com$metamoji$nt$NtCommand:[I

    sget-object v5, Lcom/metamoji/nt/NtCommand;->CMD_SELECTRUBBERBANDKIND:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {v5}, Lcom/metamoji/nt/NtCommand;->ordinal()I

    move-result v5

    aput v3, v4, v5
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    const/4 v4, 0x5

    :try_start_4
    sget-object v5, Lcom/metamoji/ui/HoverSelectorView$9;->$SwitchMap$com$metamoji$nt$NtCommand:[I

    sget-object v6, Lcom/metamoji/nt/NtCommand;->CMD_PEN_UPDATE:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {v6}, Lcom/metamoji/nt/NtCommand;->ordinal()I

    move-result v6

    aput v4, v5, v6
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    const/4 v5, 0x6

    :try_start_5
    sget-object v6, Lcom/metamoji/ui/HoverSelectorView$9;->$SwitchMap$com$metamoji$nt$NtCommand:[I

    sget-object v7, Lcom/metamoji/nt/NtCommand;->CMD_LASER_POINTER_COLOR_CHANGED:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {v7}, Lcom/metamoji/nt/NtCommand;->ordinal()I

    move-result v7

    aput v5, v6, v7
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    const/4 v6, 0x7

    :try_start_6
    sget-object v7, Lcom/metamoji/ui/HoverSelectorView$9;->$SwitchMap$com$metamoji$nt$NtCommand:[I

    sget-object v8, Lcom/metamoji/nt/NtCommand;->CMD_PEN_SETTINGS_CHANGED:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {v8}, Lcom/metamoji/nt/NtCommand;->ordinal()I

    move-result v8

    aput v6, v7, v8
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    :catch_6
    :try_start_7
    sget-object v7, Lcom/metamoji/ui/HoverSelectorView$9;->$SwitchMap$com$metamoji$nt$NtCommand:[I

    sget-object v8, Lcom/metamoji/nt/NtCommand;->CMD_SHAPE_PEN_MODECHANGE:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {v8}, Lcom/metamoji/nt/NtCommand;->ordinal()I

    move-result v8

    const/16 v9, 0x8

    aput v9, v7, v8
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    .line 510
    :catch_7
    invoke-static {}, Lcom/metamoji/nt/NtNoteController$NoteMode;->values()[Lcom/metamoji/nt/NtNoteController$NoteMode;

    move-result-object v7

    array-length v7, v7

    new-array v7, v7, [I

    sput-object v7, Lcom/metamoji/ui/HoverSelectorView$9;->$SwitchMap$com$metamoji$nt$NtNoteController$NoteMode:[I

    :try_start_8
    sget-object v8, Lcom/metamoji/nt/NtNoteController$NoteMode;->PEN:Lcom/metamoji/nt/NtNoteController$NoteMode;

    invoke-virtual {v8}, Lcom/metamoji/nt/NtNoteController$NoteMode;->ordinal()I

    move-result v8

    aput v1, v7, v8
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_8

    :catch_8
    :try_start_9
    sget-object v1, Lcom/metamoji/ui/HoverSelectorView$9;->$SwitchMap$com$metamoji$nt$NtNoteController$NoteMode:[I

    sget-object v7, Lcom/metamoji/nt/NtNoteController$NoteMode;->ERASER:Lcom/metamoji/nt/NtNoteController$NoteMode;

    invoke-virtual {v7}, Lcom/metamoji/nt/NtNoteController$NoteMode;->ordinal()I

    move-result v7

    aput v0, v1, v7
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_9

    :catch_9
    :try_start_a
    sget-object v0, Lcom/metamoji/ui/HoverSelectorView$9;->$SwitchMap$com$metamoji$nt$NtNoteController$NoteMode:[I

    sget-object v1, Lcom/metamoji/nt/NtNoteController$NoteMode;->TEXT:Lcom/metamoji/nt/NtNoteController$NoteMode;

    invoke-virtual {v1}, Lcom/metamoji/nt/NtNoteController$NoteMode;->ordinal()I

    move-result v1

    aput v2, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_a

    :catch_a
    :try_start_b
    sget-object v0, Lcom/metamoji/ui/HoverSelectorView$9;->$SwitchMap$com$metamoji$nt$NtNoteController$NoteMode:[I

    sget-object v1, Lcom/metamoji/nt/NtNoteController$NoteMode;->SELECT:Lcom/metamoji/nt/NtNoteController$NoteMode;

    invoke-virtual {v1}, Lcom/metamoji/nt/NtNoteController$NoteMode;->ordinal()I

    move-result v1

    aput v3, v0, v1
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_b

    :catch_b
    :try_start_c
    sget-object v0, Lcom/metamoji/ui/HoverSelectorView$9;->$SwitchMap$com$metamoji$nt$NtNoteController$NoteMode:[I

    sget-object v1, Lcom/metamoji/nt/NtNoteController$NoteMode;->VIEW:Lcom/metamoji/nt/NtNoteController$NoteMode;

    invoke-virtual {v1}, Lcom/metamoji/nt/NtNoteController$NoteMode;->ordinal()I

    move-result v1

    aput v4, v0, v1
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_c

    :catch_c
    :try_start_d
    sget-object v0, Lcom/metamoji/ui/HoverSelectorView$9;->$SwitchMap$com$metamoji$nt$NtNoteController$NoteMode:[I

    sget-object v1, Lcom/metamoji/nt/NtNoteController$NoteMode;->LASER:Lcom/metamoji/nt/NtNoteController$NoteMode;

    invoke-virtual {v1}, Lcom/metamoji/nt/NtNoteController$NoteMode;->ordinal()I

    move-result v1

    aput v5, v0, v1
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_d

    :catch_d
    :try_start_e
    sget-object v0, Lcom/metamoji/ui/HoverSelectorView$9;->$SwitchMap$com$metamoji$nt$NtNoteController$NoteMode:[I

    sget-object v1, Lcom/metamoji/nt/NtNoteController$NoteMode;->ARRANGE:Lcom/metamoji/nt/NtNoteController$NoteMode;

    invoke-virtual {v1}, Lcom/metamoji/nt/NtNoteController$NoteMode;->ordinal()I

    move-result v1

    aput v6, v0, v1
    :try_end_e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_e} :catch_e

    :catch_e
    return-void
.end method
