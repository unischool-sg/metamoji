.class synthetic Lcom/metamoji/ui/DetailWindow$25;
.super Ljava/lang/Object;
.source "DetailWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/ui/DetailWindow;
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
    .locals 4

    .line 576
    invoke-static {}, Lcom/metamoji/nt/NtNoteController$NoteMode;->values()[Lcom/metamoji/nt/NtNoteController$NoteMode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/metamoji/ui/DetailWindow$25;->$SwitchMap$com$metamoji$nt$NtNoteController$NoteMode:[I

    const/4 v1, 0x1

    :try_start_0
    sget-object v2, Lcom/metamoji/nt/NtNoteController$NoteMode;->PEN:Lcom/metamoji/nt/NtNoteController$NoteMode;

    invoke-virtual {v2}, Lcom/metamoji/nt/NtNoteController$NoteMode;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x2

    :try_start_1
    sget-object v2, Lcom/metamoji/ui/DetailWindow$25;->$SwitchMap$com$metamoji$nt$NtNoteController$NoteMode:[I

    sget-object v3, Lcom/metamoji/nt/NtNoteController$NoteMode;->ERASER:Lcom/metamoji/nt/NtNoteController$NoteMode;

    invoke-virtual {v3}, Lcom/metamoji/nt/NtNoteController$NoteMode;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    .line 498
    :catch_1
    invoke-static {}, Lcom/metamoji/nt/NtCommand;->values()[Lcom/metamoji/nt/NtCommand;

    move-result-object v2

    array-length v2, v2

    new-array v2, v2, [I

    sput-object v2, Lcom/metamoji/ui/DetailWindow$25;->$SwitchMap$com$metamoji$nt$NtCommand:[I

    :try_start_2
    sget-object v3, Lcom/metamoji/nt/NtCommand;->CMD_SET_NOTEMODE:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {v3}, Lcom/metamoji/nt/NtCommand;->ordinal()I

    move-result v3

    aput v1, v2, v3
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v1, Lcom/metamoji/ui/DetailWindow$25;->$SwitchMap$com$metamoji$nt$NtCommand:[I

    sget-object v2, Lcom/metamoji/nt/NtCommand;->CMD_SELECTPEN:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {v2}, Lcom/metamoji/nt/NtCommand;->ordinal()I

    move-result v2

    aput v0, v1, v2
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    :try_start_4
    sget-object v0, Lcom/metamoji/ui/DetailWindow$25;->$SwitchMap$com$metamoji$nt$NtCommand:[I

    sget-object v1, Lcom/metamoji/nt/NtCommand;->CMD_SELECTERASER:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {v1}, Lcom/metamoji/nt/NtCommand;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    :try_start_5
    sget-object v0, Lcom/metamoji/ui/DetailWindow$25;->$SwitchMap$com$metamoji$nt$NtCommand:[I

    sget-object v1, Lcom/metamoji/nt/NtCommand;->CMD_PEN_UPDATE:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {v1}, Lcom/metamoji/nt/NtCommand;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    :try_start_6
    sget-object v0, Lcom/metamoji/ui/DetailWindow$25;->$SwitchMap$com$metamoji$nt$NtCommand:[I

    sget-object v1, Lcom/metamoji/nt/NtCommand;->CMD_PEN_SETTINGS_CHANGED:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {v1}, Lcom/metamoji/nt/NtCommand;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    :catch_6
    :try_start_7
    sget-object v0, Lcom/metamoji/ui/DetailWindow$25;->$SwitchMap$com$metamoji$nt$NtCommand:[I

    sget-object v1, Lcom/metamoji/nt/NtCommand;->CMD_SHAPE_PEN_MODECHANGE:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {v1}, Lcom/metamoji/nt/NtCommand;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    :catch_7
    :try_start_8
    sget-object v0, Lcom/metamoji/ui/DetailWindow$25;->$SwitchMap$com$metamoji$nt$NtCommand:[I

    sget-object v1, Lcom/metamoji/nt/NtCommand;->CMD_UNDO:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {v1}, Lcom/metamoji/nt/NtCommand;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_8

    :catch_8
    :try_start_9
    sget-object v0, Lcom/metamoji/ui/DetailWindow$25;->$SwitchMap$com$metamoji$nt$NtCommand:[I

    sget-object v1, Lcom/metamoji/nt/NtCommand;->CMD_REDO:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {v1}, Lcom/metamoji/nt/NtCommand;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_9

    :catch_9
    return-void
.end method
