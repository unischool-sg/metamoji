.class public final enum Lcom/metamoji/nt/NtNoteController$NoteMode;
.super Ljava/lang/Enum;
.source "NtNoteController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/nt/NtNoteController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "NoteMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/metamoji/nt/NtNoteController$NoteMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/metamoji/nt/NtNoteController$NoteMode;

.field public static final enum ARRANGE:Lcom/metamoji/nt/NtNoteController$NoteMode;

.field public static final enum ERASER:Lcom/metamoji/nt/NtNoteController$NoteMode;

.field public static final enum JUMP_SETTING:Lcom/metamoji/nt/NtNoteController$NoteMode;

.field public static final enum LASER:Lcom/metamoji/nt/NtNoteController$NoteMode;

.field public static final enum LIVE:Lcom/metamoji/nt/NtNoteController$NoteMode;

.field private static final MAP:[Lcom/metamoji/nt/NtNoteController$NoteMode;

.field public static final enum NONE:Lcom/metamoji/nt/NtNoteController$NoteMode;

.field public static final enum PEN:Lcom/metamoji/nt/NtNoteController$NoteMode;

.field public static final enum SELECT:Lcom/metamoji/nt/NtNoteController$NoteMode;

.field public static final enum TEXT:Lcom/metamoji/nt/NtNoteController$NoteMode;

.field public static final enum UNKNOWN:Lcom/metamoji/nt/NtNoteController$NoteMode;

.field public static final enum VIEW:Lcom/metamoji/nt/NtNoteController$NoteMode;


# direct methods
.method private static synthetic $values()[Lcom/metamoji/nt/NtNoteController$NoteMode;
    .locals 11

    .line 1859
    sget-object v0, Lcom/metamoji/nt/NtNoteController$NoteMode;->NONE:Lcom/metamoji/nt/NtNoteController$NoteMode;

    sget-object v1, Lcom/metamoji/nt/NtNoteController$NoteMode;->PEN:Lcom/metamoji/nt/NtNoteController$NoteMode;

    sget-object v2, Lcom/metamoji/nt/NtNoteController$NoteMode;->ERASER:Lcom/metamoji/nt/NtNoteController$NoteMode;

    sget-object v3, Lcom/metamoji/nt/NtNoteController$NoteMode;->SELECT:Lcom/metamoji/nt/NtNoteController$NoteMode;

    sget-object v4, Lcom/metamoji/nt/NtNoteController$NoteMode;->TEXT:Lcom/metamoji/nt/NtNoteController$NoteMode;

    sget-object v5, Lcom/metamoji/nt/NtNoteController$NoteMode;->VIEW:Lcom/metamoji/nt/NtNoteController$NoteMode;

    sget-object v6, Lcom/metamoji/nt/NtNoteController$NoteMode;->LIVE:Lcom/metamoji/nt/NtNoteController$NoteMode;

    sget-object v7, Lcom/metamoji/nt/NtNoteController$NoteMode;->LASER:Lcom/metamoji/nt/NtNoteController$NoteMode;

    sget-object v8, Lcom/metamoji/nt/NtNoteController$NoteMode;->JUMP_SETTING:Lcom/metamoji/nt/NtNoteController$NoteMode;

    sget-object v9, Lcom/metamoji/nt/NtNoteController$NoteMode;->ARRANGE:Lcom/metamoji/nt/NtNoteController$NoteMode;

    sget-object v10, Lcom/metamoji/nt/NtNoteController$NoteMode;->UNKNOWN:Lcom/metamoji/nt/NtNoteController$NoteMode;

    filled-new-array/range {v0 .. v10}, [Lcom/metamoji/nt/NtNoteController$NoteMode;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 1860
    new-instance v0, Lcom/metamoji/nt/NtNoteController$NoteMode;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/metamoji/nt/NtNoteController$NoteMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/nt/NtNoteController$NoteMode;->NONE:Lcom/metamoji/nt/NtNoteController$NoteMode;

    .line 1861
    new-instance v0, Lcom/metamoji/nt/NtNoteController$NoteMode;

    const-string v1, "PEN"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/metamoji/nt/NtNoteController$NoteMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/nt/NtNoteController$NoteMode;->PEN:Lcom/metamoji/nt/NtNoteController$NoteMode;

    .line 1862
    new-instance v0, Lcom/metamoji/nt/NtNoteController$NoteMode;

    const-string v1, "ERASER"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/metamoji/nt/NtNoteController$NoteMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/nt/NtNoteController$NoteMode;->ERASER:Lcom/metamoji/nt/NtNoteController$NoteMode;

    .line 1863
    new-instance v0, Lcom/metamoji/nt/NtNoteController$NoteMode;

    const-string v1, "SELECT"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/metamoji/nt/NtNoteController$NoteMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/nt/NtNoteController$NoteMode;->SELECT:Lcom/metamoji/nt/NtNoteController$NoteMode;

    .line 1864
    new-instance v0, Lcom/metamoji/nt/NtNoteController$NoteMode;

    const-string v1, "TEXT"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/metamoji/nt/NtNoteController$NoteMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/nt/NtNoteController$NoteMode;->TEXT:Lcom/metamoji/nt/NtNoteController$NoteMode;

    .line 1865
    new-instance v0, Lcom/metamoji/nt/NtNoteController$NoteMode;

    const-string v1, "VIEW"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/metamoji/nt/NtNoteController$NoteMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/nt/NtNoteController$NoteMode;->VIEW:Lcom/metamoji/nt/NtNoteController$NoteMode;

    .line 1866
    new-instance v0, Lcom/metamoji/nt/NtNoteController$NoteMode;

    const-string v1, "LIVE"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/metamoji/nt/NtNoteController$NoteMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/nt/NtNoteController$NoteMode;->LIVE:Lcom/metamoji/nt/NtNoteController$NoteMode;

    .line 1867
    new-instance v0, Lcom/metamoji/nt/NtNoteController$NoteMode;

    const-string v1, "LASER"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/metamoji/nt/NtNoteController$NoteMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/nt/NtNoteController$NoteMode;->LASER:Lcom/metamoji/nt/NtNoteController$NoteMode;

    .line 1868
    new-instance v0, Lcom/metamoji/nt/NtNoteController$NoteMode;

    const-string v1, "JUMP_SETTING"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/metamoji/nt/NtNoteController$NoteMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/nt/NtNoteController$NoteMode;->JUMP_SETTING:Lcom/metamoji/nt/NtNoteController$NoteMode;

    .line 1869
    new-instance v0, Lcom/metamoji/nt/NtNoteController$NoteMode;

    const-string v1, "ARRANGE"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/metamoji/nt/NtNoteController$NoteMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/nt/NtNoteController$NoteMode;->ARRANGE:Lcom/metamoji/nt/NtNoteController$NoteMode;

    .line 1870
    new-instance v0, Lcom/metamoji/nt/NtNoteController$NoteMode;

    const-string v1, "UNKNOWN"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/metamoji/nt/NtNoteController$NoteMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/nt/NtNoteController$NoteMode;->UNKNOWN:Lcom/metamoji/nt/NtNoteController$NoteMode;

    .line 1859
    invoke-static {}, Lcom/metamoji/nt/NtNoteController$NoteMode;->$values()[Lcom/metamoji/nt/NtNoteController$NoteMode;

    move-result-object v0

    sput-object v0, Lcom/metamoji/nt/NtNoteController$NoteMode;->$VALUES:[Lcom/metamoji/nt/NtNoteController$NoteMode;

    .line 1876
    invoke-static {}, Lcom/metamoji/nt/NtNoteController$NoteMode;->values()[Lcom/metamoji/nt/NtNoteController$NoteMode;

    move-result-object v0

    sput-object v0, Lcom/metamoji/nt/NtNoteController$NoteMode;->MAP:[Lcom/metamoji/nt/NtNoteController$NoteMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1859
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(I)Lcom/metamoji/nt/NtNoteController$NoteMode;
    .locals 2

    if-ltz p0, :cond_1

    .line 1879
    sget-object v0, Lcom/metamoji/nt/NtNoteController$NoteMode;->MAP:[Lcom/metamoji/nt/NtNoteController$NoteMode;

    array-length v1, v0

    if-lt p0, v1, :cond_0

    goto :goto_0

    .line 1882
    :cond_0
    aget-object p0, v0, p0

    return-object p0

    .line 1880
    :cond_1
    :goto_0
    sget-object p0, Lcom/metamoji/nt/NtNoteController$NoteMode;->UNKNOWN:Lcom/metamoji/nt/NtNoteController$NoteMode;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/metamoji/nt/NtNoteController$NoteMode;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 1859
    const-class v0, Lcom/metamoji/nt/NtNoteController$NoteMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/metamoji/nt/NtNoteController$NoteMode;

    return-object p0
.end method

.method public static values()[Lcom/metamoji/nt/NtNoteController$NoteMode;
    .locals 1

    .line 1859
    sget-object v0, Lcom/metamoji/nt/NtNoteController$NoteMode;->$VALUES:[Lcom/metamoji/nt/NtNoteController$NoteMode;

    invoke-virtual {v0}, [Lcom/metamoji/nt/NtNoteController$NoteMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/metamoji/nt/NtNoteController$NoteMode;

    return-object v0
.end method


# virtual methods
.method public intValue()I
    .locals 1

    .line 1873
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController$NoteMode;->ordinal()I

    move-result v0

    return v0
.end method
