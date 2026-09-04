.class public final enum Lcom/metamoji/pdf/core/PDFParser$TokenType;
.super Ljava/lang/Enum;
.source "PDFParser.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/pdf/core/PDFParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401c
    name = "TokenType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/metamoji/pdf/core/PDFParser$TokenType;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0012\u0008\u0084\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003j\u0002\u0008\u0004j\u0002\u0008\u0005j\u0002\u0008\u0006j\u0002\u0008\u0007j\u0002\u0008\u0008j\u0002\u0008\tj\u0002\u0008\nj\u0002\u0008\u000bj\u0002\u0008\u000cj\u0002\u0008\rj\u0002\u0008\u000ej\u0002\u0008\u000fj\u0002\u0008\u0010j\u0002\u0008\u0011j\u0002\u0008\u0012\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/metamoji/pdf/core/PDFParser$TokenType;",
        "",
        "<init>",
        "(Ljava/lang/String;I)V",
        "SPACE",
        "EOL",
        "INT",
        "FLOAT",
        "ID",
        "NAME",
        "STRING",
        "HEXSTR",
        "DIC",
        "ARRAY",
        "ENDDIC",
        "ENDARRAY",
        "EOF",
        "FUNC",
        "ENDFUNC",
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

.field private static final synthetic $VALUES:[Lcom/metamoji/pdf/core/PDFParser$TokenType;

.field public static final enum ARRAY:Lcom/metamoji/pdf/core/PDFParser$TokenType;

.field public static final enum DIC:Lcom/metamoji/pdf/core/PDFParser$TokenType;

.field public static final enum ENDARRAY:Lcom/metamoji/pdf/core/PDFParser$TokenType;

.field public static final enum ENDDIC:Lcom/metamoji/pdf/core/PDFParser$TokenType;

.field public static final enum ENDFUNC:Lcom/metamoji/pdf/core/PDFParser$TokenType;

.field public static final enum EOF:Lcom/metamoji/pdf/core/PDFParser$TokenType;

.field public static final enum EOL:Lcom/metamoji/pdf/core/PDFParser$TokenType;

.field public static final enum FLOAT:Lcom/metamoji/pdf/core/PDFParser$TokenType;

.field public static final enum FUNC:Lcom/metamoji/pdf/core/PDFParser$TokenType;

.field public static final enum HEXSTR:Lcom/metamoji/pdf/core/PDFParser$TokenType;

.field public static final enum ID:Lcom/metamoji/pdf/core/PDFParser$TokenType;

.field public static final enum INT:Lcom/metamoji/pdf/core/PDFParser$TokenType;

.field public static final enum NAME:Lcom/metamoji/pdf/core/PDFParser$TokenType;

.field public static final enum SPACE:Lcom/metamoji/pdf/core/PDFParser$TokenType;

.field public static final enum STRING:Lcom/metamoji/pdf/core/PDFParser$TokenType;


# direct methods
.method private static final synthetic $values()[Lcom/metamoji/pdf/core/PDFParser$TokenType;
    .locals 15

    sget-object v0, Lcom/metamoji/pdf/core/PDFParser$TokenType;->SPACE:Lcom/metamoji/pdf/core/PDFParser$TokenType;

    sget-object v1, Lcom/metamoji/pdf/core/PDFParser$TokenType;->EOL:Lcom/metamoji/pdf/core/PDFParser$TokenType;

    sget-object v2, Lcom/metamoji/pdf/core/PDFParser$TokenType;->INT:Lcom/metamoji/pdf/core/PDFParser$TokenType;

    sget-object v3, Lcom/metamoji/pdf/core/PDFParser$TokenType;->FLOAT:Lcom/metamoji/pdf/core/PDFParser$TokenType;

    sget-object v4, Lcom/metamoji/pdf/core/PDFParser$TokenType;->ID:Lcom/metamoji/pdf/core/PDFParser$TokenType;

    sget-object v5, Lcom/metamoji/pdf/core/PDFParser$TokenType;->NAME:Lcom/metamoji/pdf/core/PDFParser$TokenType;

    sget-object v6, Lcom/metamoji/pdf/core/PDFParser$TokenType;->STRING:Lcom/metamoji/pdf/core/PDFParser$TokenType;

    sget-object v7, Lcom/metamoji/pdf/core/PDFParser$TokenType;->HEXSTR:Lcom/metamoji/pdf/core/PDFParser$TokenType;

    sget-object v8, Lcom/metamoji/pdf/core/PDFParser$TokenType;->DIC:Lcom/metamoji/pdf/core/PDFParser$TokenType;

    sget-object v9, Lcom/metamoji/pdf/core/PDFParser$TokenType;->ARRAY:Lcom/metamoji/pdf/core/PDFParser$TokenType;

    sget-object v10, Lcom/metamoji/pdf/core/PDFParser$TokenType;->ENDDIC:Lcom/metamoji/pdf/core/PDFParser$TokenType;

    sget-object v11, Lcom/metamoji/pdf/core/PDFParser$TokenType;->ENDARRAY:Lcom/metamoji/pdf/core/PDFParser$TokenType;

    sget-object v12, Lcom/metamoji/pdf/core/PDFParser$TokenType;->EOF:Lcom/metamoji/pdf/core/PDFParser$TokenType;

    sget-object v13, Lcom/metamoji/pdf/core/PDFParser$TokenType;->FUNC:Lcom/metamoji/pdf/core/PDFParser$TokenType;

    sget-object v14, Lcom/metamoji/pdf/core/PDFParser$TokenType;->ENDFUNC:Lcom/metamoji/pdf/core/PDFParser$TokenType;

    filled-new-array/range {v0 .. v14}, [Lcom/metamoji/pdf/core/PDFParser$TokenType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 115
    new-instance v0, Lcom/metamoji/pdf/core/PDFParser$TokenType;

    const-string v1, "SPACE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/metamoji/pdf/core/PDFParser$TokenType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/pdf/core/PDFParser$TokenType;->SPACE:Lcom/metamoji/pdf/core/PDFParser$TokenType;

    .line 116
    new-instance v0, Lcom/metamoji/pdf/core/PDFParser$TokenType;

    const-string v1, "EOL"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/metamoji/pdf/core/PDFParser$TokenType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/pdf/core/PDFParser$TokenType;->EOL:Lcom/metamoji/pdf/core/PDFParser$TokenType;

    .line 117
    new-instance v0, Lcom/metamoji/pdf/core/PDFParser$TokenType;

    const-string v1, "INT"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/metamoji/pdf/core/PDFParser$TokenType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/pdf/core/PDFParser$TokenType;->INT:Lcom/metamoji/pdf/core/PDFParser$TokenType;

    .line 118
    new-instance v0, Lcom/metamoji/pdf/core/PDFParser$TokenType;

    const-string v1, "FLOAT"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/metamoji/pdf/core/PDFParser$TokenType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/pdf/core/PDFParser$TokenType;->FLOAT:Lcom/metamoji/pdf/core/PDFParser$TokenType;

    .line 119
    new-instance v0, Lcom/metamoji/pdf/core/PDFParser$TokenType;

    const-string v1, "ID"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/metamoji/pdf/core/PDFParser$TokenType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/pdf/core/PDFParser$TokenType;->ID:Lcom/metamoji/pdf/core/PDFParser$TokenType;

    .line 120
    new-instance v0, Lcom/metamoji/pdf/core/PDFParser$TokenType;

    const-string v1, "NAME"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/metamoji/pdf/core/PDFParser$TokenType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/pdf/core/PDFParser$TokenType;->NAME:Lcom/metamoji/pdf/core/PDFParser$TokenType;

    .line 121
    new-instance v0, Lcom/metamoji/pdf/core/PDFParser$TokenType;

    const-string v1, "STRING"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/metamoji/pdf/core/PDFParser$TokenType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/pdf/core/PDFParser$TokenType;->STRING:Lcom/metamoji/pdf/core/PDFParser$TokenType;

    .line 122
    new-instance v0, Lcom/metamoji/pdf/core/PDFParser$TokenType;

    const-string v1, "HEXSTR"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/metamoji/pdf/core/PDFParser$TokenType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/pdf/core/PDFParser$TokenType;->HEXSTR:Lcom/metamoji/pdf/core/PDFParser$TokenType;

    .line 123
    new-instance v0, Lcom/metamoji/pdf/core/PDFParser$TokenType;

    const-string v1, "DIC"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/metamoji/pdf/core/PDFParser$TokenType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/pdf/core/PDFParser$TokenType;->DIC:Lcom/metamoji/pdf/core/PDFParser$TokenType;

    .line 124
    new-instance v0, Lcom/metamoji/pdf/core/PDFParser$TokenType;

    const-string v1, "ARRAY"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/metamoji/pdf/core/PDFParser$TokenType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/pdf/core/PDFParser$TokenType;->ARRAY:Lcom/metamoji/pdf/core/PDFParser$TokenType;

    .line 125
    new-instance v0, Lcom/metamoji/pdf/core/PDFParser$TokenType;

    const-string v1, "ENDDIC"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/metamoji/pdf/core/PDFParser$TokenType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/pdf/core/PDFParser$TokenType;->ENDDIC:Lcom/metamoji/pdf/core/PDFParser$TokenType;

    .line 126
    new-instance v0, Lcom/metamoji/pdf/core/PDFParser$TokenType;

    const-string v1, "ENDARRAY"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/metamoji/pdf/core/PDFParser$TokenType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/pdf/core/PDFParser$TokenType;->ENDARRAY:Lcom/metamoji/pdf/core/PDFParser$TokenType;

    .line 127
    new-instance v0, Lcom/metamoji/pdf/core/PDFParser$TokenType;

    const-string v1, "EOF"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/metamoji/pdf/core/PDFParser$TokenType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/pdf/core/PDFParser$TokenType;->EOF:Lcom/metamoji/pdf/core/PDFParser$TokenType;

    .line 129
    new-instance v0, Lcom/metamoji/pdf/core/PDFParser$TokenType;

    const-string v1, "FUNC"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/metamoji/pdf/core/PDFParser$TokenType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/pdf/core/PDFParser$TokenType;->FUNC:Lcom/metamoji/pdf/core/PDFParser$TokenType;

    .line 130
    new-instance v0, Lcom/metamoji/pdf/core/PDFParser$TokenType;

    const-string v1, "ENDFUNC"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lcom/metamoji/pdf/core/PDFParser$TokenType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/pdf/core/PDFParser$TokenType;->ENDFUNC:Lcom/metamoji/pdf/core/PDFParser$TokenType;

    invoke-static {}, Lcom/metamoji/pdf/core/PDFParser$TokenType;->$values()[Lcom/metamoji/pdf/core/PDFParser$TokenType;

    move-result-object v0

    sput-object v0, Lcom/metamoji/pdf/core/PDFParser$TokenType;->$VALUES:[Lcom/metamoji/pdf/core/PDFParser$TokenType;

    check-cast v0, [Ljava/lang/Enum;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/metamoji/pdf/core/PDFParser$TokenType;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 114
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lcom/metamoji/pdf/core/PDFParser$TokenType;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/metamoji/pdf/core/PDFParser$TokenType;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/metamoji/pdf/core/PDFParser$TokenType;
    .locals 1

    const-class v0, Lcom/metamoji/pdf/core/PDFParser$TokenType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/metamoji/pdf/core/PDFParser$TokenType;

    return-object p0
.end method

.method public static values()[Lcom/metamoji/pdf/core/PDFParser$TokenType;
    .locals 1

    sget-object v0, Lcom/metamoji/pdf/core/PDFParser$TokenType;->$VALUES:[Lcom/metamoji/pdf/core/PDFParser$TokenType;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/metamoji/pdf/core/PDFParser$TokenType;

    return-object v0
.end method
