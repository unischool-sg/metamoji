.class public final enum Lcom/metamoji/pdf/content/Instruction$Flag;
.super Ljava/lang/Enum;
.source "Instruction.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/pdf/content/Instruction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Flag"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/metamoji/pdf/content/Instruction$Flag;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\r\u0008\u0086\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003j\u0002\u0008\u0004j\u0002\u0008\u0005j\u0002\u0008\u0006j\u0002\u0008\u0007j\u0002\u0008\u0008j\u0002\u0008\tj\u0002\u0008\nj\u0002\u0008\u000bj\u0002\u0008\u000cj\u0002\u0008\r\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/metamoji/pdf/content/Instruction$Flag;",
        "",
        "<init>",
        "(Ljava/lang/String;I)V",
        "STACK",
        "TEXT",
        "DO",
        "BI",
        "FONT",
        "COORD",
        "TEXTLAYOUT",
        "MARK",
        "DRAW",
        "ENDPATH",
        "pdf"
    }
    k = 0x1
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field private static final synthetic $ENTRIES:Lkotlin/enums/EnumEntries;

.field private static final synthetic $VALUES:[Lcom/metamoji/pdf/content/Instruction$Flag;

.field public static final enum BI:Lcom/metamoji/pdf/content/Instruction$Flag;

.field public static final enum COORD:Lcom/metamoji/pdf/content/Instruction$Flag;

.field public static final enum DO:Lcom/metamoji/pdf/content/Instruction$Flag;

.field public static final enum DRAW:Lcom/metamoji/pdf/content/Instruction$Flag;

.field public static final enum ENDPATH:Lcom/metamoji/pdf/content/Instruction$Flag;

.field public static final enum FONT:Lcom/metamoji/pdf/content/Instruction$Flag;

.field public static final enum MARK:Lcom/metamoji/pdf/content/Instruction$Flag;

.field public static final enum STACK:Lcom/metamoji/pdf/content/Instruction$Flag;

.field public static final enum TEXT:Lcom/metamoji/pdf/content/Instruction$Flag;

.field public static final enum TEXTLAYOUT:Lcom/metamoji/pdf/content/Instruction$Flag;


# direct methods
.method private static final synthetic $values()[Lcom/metamoji/pdf/content/Instruction$Flag;
    .locals 10

    sget-object v0, Lcom/metamoji/pdf/content/Instruction$Flag;->STACK:Lcom/metamoji/pdf/content/Instruction$Flag;

    sget-object v1, Lcom/metamoji/pdf/content/Instruction$Flag;->TEXT:Lcom/metamoji/pdf/content/Instruction$Flag;

    sget-object v2, Lcom/metamoji/pdf/content/Instruction$Flag;->DO:Lcom/metamoji/pdf/content/Instruction$Flag;

    sget-object v3, Lcom/metamoji/pdf/content/Instruction$Flag;->BI:Lcom/metamoji/pdf/content/Instruction$Flag;

    sget-object v4, Lcom/metamoji/pdf/content/Instruction$Flag;->FONT:Lcom/metamoji/pdf/content/Instruction$Flag;

    sget-object v5, Lcom/metamoji/pdf/content/Instruction$Flag;->COORD:Lcom/metamoji/pdf/content/Instruction$Flag;

    sget-object v6, Lcom/metamoji/pdf/content/Instruction$Flag;->TEXTLAYOUT:Lcom/metamoji/pdf/content/Instruction$Flag;

    sget-object v7, Lcom/metamoji/pdf/content/Instruction$Flag;->MARK:Lcom/metamoji/pdf/content/Instruction$Flag;

    sget-object v8, Lcom/metamoji/pdf/content/Instruction$Flag;->DRAW:Lcom/metamoji/pdf/content/Instruction$Flag;

    sget-object v9, Lcom/metamoji/pdf/content/Instruction$Flag;->ENDPATH:Lcom/metamoji/pdf/content/Instruction$Flag;

    filled-new-array/range {v0 .. v9}, [Lcom/metamoji/pdf/content/Instruction$Flag;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 8
    new-instance v0, Lcom/metamoji/pdf/content/Instruction$Flag;

    const-string v1, "STACK"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/metamoji/pdf/content/Instruction$Flag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/pdf/content/Instruction$Flag;->STACK:Lcom/metamoji/pdf/content/Instruction$Flag;

    .line 9
    new-instance v0, Lcom/metamoji/pdf/content/Instruction$Flag;

    const-string v1, "TEXT"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/metamoji/pdf/content/Instruction$Flag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/pdf/content/Instruction$Flag;->TEXT:Lcom/metamoji/pdf/content/Instruction$Flag;

    .line 10
    new-instance v0, Lcom/metamoji/pdf/content/Instruction$Flag;

    const-string v1, "DO"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/metamoji/pdf/content/Instruction$Flag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/pdf/content/Instruction$Flag;->DO:Lcom/metamoji/pdf/content/Instruction$Flag;

    .line 11
    new-instance v0, Lcom/metamoji/pdf/content/Instruction$Flag;

    const-string v1, "BI"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/metamoji/pdf/content/Instruction$Flag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/pdf/content/Instruction$Flag;->BI:Lcom/metamoji/pdf/content/Instruction$Flag;

    .line 12
    new-instance v0, Lcom/metamoji/pdf/content/Instruction$Flag;

    const-string v1, "FONT"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/metamoji/pdf/content/Instruction$Flag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/pdf/content/Instruction$Flag;->FONT:Lcom/metamoji/pdf/content/Instruction$Flag;

    .line 13
    new-instance v0, Lcom/metamoji/pdf/content/Instruction$Flag;

    const-string v1, "COORD"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/metamoji/pdf/content/Instruction$Flag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/pdf/content/Instruction$Flag;->COORD:Lcom/metamoji/pdf/content/Instruction$Flag;

    .line 14
    new-instance v0, Lcom/metamoji/pdf/content/Instruction$Flag;

    const-string v1, "TEXTLAYOUT"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/metamoji/pdf/content/Instruction$Flag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/pdf/content/Instruction$Flag;->TEXTLAYOUT:Lcom/metamoji/pdf/content/Instruction$Flag;

    .line 15
    new-instance v0, Lcom/metamoji/pdf/content/Instruction$Flag;

    const-string v1, "MARK"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/metamoji/pdf/content/Instruction$Flag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/pdf/content/Instruction$Flag;->MARK:Lcom/metamoji/pdf/content/Instruction$Flag;

    .line 16
    new-instance v0, Lcom/metamoji/pdf/content/Instruction$Flag;

    const-string v1, "DRAW"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/metamoji/pdf/content/Instruction$Flag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/pdf/content/Instruction$Flag;->DRAW:Lcom/metamoji/pdf/content/Instruction$Flag;

    .line 17
    new-instance v0, Lcom/metamoji/pdf/content/Instruction$Flag;

    const-string v1, "ENDPATH"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/metamoji/pdf/content/Instruction$Flag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/pdf/content/Instruction$Flag;->ENDPATH:Lcom/metamoji/pdf/content/Instruction$Flag;

    invoke-static {}, Lcom/metamoji/pdf/content/Instruction$Flag;->$values()[Lcom/metamoji/pdf/content/Instruction$Flag;

    move-result-object v0

    sput-object v0, Lcom/metamoji/pdf/content/Instruction$Flag;->$VALUES:[Lcom/metamoji/pdf/content/Instruction$Flag;

    check-cast v0, [Ljava/lang/Enum;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/metamoji/pdf/content/Instruction$Flag;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 7
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lcom/metamoji/pdf/content/Instruction$Flag;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/metamoji/pdf/content/Instruction$Flag;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/metamoji/pdf/content/Instruction$Flag;
    .locals 1

    const-class v0, Lcom/metamoji/pdf/content/Instruction$Flag;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/metamoji/pdf/content/Instruction$Flag;

    return-object p0
.end method

.method public static values()[Lcom/metamoji/pdf/content/Instruction$Flag;
    .locals 1

    sget-object v0, Lcom/metamoji/pdf/content/Instruction$Flag;->$VALUES:[Lcom/metamoji/pdf/content/Instruction$Flag;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/metamoji/pdf/content/Instruction$Flag;

    return-object v0
.end method
