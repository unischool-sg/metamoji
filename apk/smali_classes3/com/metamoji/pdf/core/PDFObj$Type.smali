.class public final enum Lcom/metamoji/pdf/core/PDFObj$Type;
.super Ljava/lang/Enum;
.source "PDFObj.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/pdf/core/PDFObj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/metamoji/pdf/core/PDFObj$Type;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\r\u0008\u0086\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003j\u0002\u0008\u0004j\u0002\u0008\u0005j\u0002\u0008\u0006j\u0002\u0008\u0007j\u0002\u0008\u0008j\u0002\u0008\tj\u0002\u0008\nj\u0002\u0008\u000bj\u0002\u0008\u000cj\u0002\u0008\r\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/metamoji/pdf/core/PDFObj$Type;",
        "",
        "<init>",
        "(Ljava/lang/String;I)V",
        "NULL",
        "BOOL",
        "INT",
        "DOUBLE",
        "STRING",
        "NAME",
        "ARRAY",
        "DICTIONARY",
        "STREAM",
        "REFERENCE",
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

.field private static final synthetic $VALUES:[Lcom/metamoji/pdf/core/PDFObj$Type;

.field public static final enum ARRAY:Lcom/metamoji/pdf/core/PDFObj$Type;

.field public static final enum BOOL:Lcom/metamoji/pdf/core/PDFObj$Type;

.field public static final enum DICTIONARY:Lcom/metamoji/pdf/core/PDFObj$Type;

.field public static final enum DOUBLE:Lcom/metamoji/pdf/core/PDFObj$Type;

.field public static final enum INT:Lcom/metamoji/pdf/core/PDFObj$Type;

.field public static final enum NAME:Lcom/metamoji/pdf/core/PDFObj$Type;

.field public static final enum NULL:Lcom/metamoji/pdf/core/PDFObj$Type;

.field public static final enum REFERENCE:Lcom/metamoji/pdf/core/PDFObj$Type;

.field public static final enum STREAM:Lcom/metamoji/pdf/core/PDFObj$Type;

.field public static final enum STRING:Lcom/metamoji/pdf/core/PDFObj$Type;


# direct methods
.method private static final synthetic $values()[Lcom/metamoji/pdf/core/PDFObj$Type;
    .locals 10

    sget-object v0, Lcom/metamoji/pdf/core/PDFObj$Type;->NULL:Lcom/metamoji/pdf/core/PDFObj$Type;

    sget-object v1, Lcom/metamoji/pdf/core/PDFObj$Type;->BOOL:Lcom/metamoji/pdf/core/PDFObj$Type;

    sget-object v2, Lcom/metamoji/pdf/core/PDFObj$Type;->INT:Lcom/metamoji/pdf/core/PDFObj$Type;

    sget-object v3, Lcom/metamoji/pdf/core/PDFObj$Type;->DOUBLE:Lcom/metamoji/pdf/core/PDFObj$Type;

    sget-object v4, Lcom/metamoji/pdf/core/PDFObj$Type;->STRING:Lcom/metamoji/pdf/core/PDFObj$Type;

    sget-object v5, Lcom/metamoji/pdf/core/PDFObj$Type;->NAME:Lcom/metamoji/pdf/core/PDFObj$Type;

    sget-object v6, Lcom/metamoji/pdf/core/PDFObj$Type;->ARRAY:Lcom/metamoji/pdf/core/PDFObj$Type;

    sget-object v7, Lcom/metamoji/pdf/core/PDFObj$Type;->DICTIONARY:Lcom/metamoji/pdf/core/PDFObj$Type;

    sget-object v8, Lcom/metamoji/pdf/core/PDFObj$Type;->STREAM:Lcom/metamoji/pdf/core/PDFObj$Type;

    sget-object v9, Lcom/metamoji/pdf/core/PDFObj$Type;->REFERENCE:Lcom/metamoji/pdf/core/PDFObj$Type;

    filled-new-array/range {v0 .. v9}, [Lcom/metamoji/pdf/core/PDFObj$Type;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 26
    new-instance v0, Lcom/metamoji/pdf/core/PDFObj$Type;

    const-string v1, "NULL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/metamoji/pdf/core/PDFObj$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/pdf/core/PDFObj$Type;->NULL:Lcom/metamoji/pdf/core/PDFObj$Type;

    .line 27
    new-instance v0, Lcom/metamoji/pdf/core/PDFObj$Type;

    const-string v1, "BOOL"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/metamoji/pdf/core/PDFObj$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/pdf/core/PDFObj$Type;->BOOL:Lcom/metamoji/pdf/core/PDFObj$Type;

    .line 28
    new-instance v0, Lcom/metamoji/pdf/core/PDFObj$Type;

    const-string v1, "INT"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/metamoji/pdf/core/PDFObj$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/pdf/core/PDFObj$Type;->INT:Lcom/metamoji/pdf/core/PDFObj$Type;

    .line 29
    new-instance v0, Lcom/metamoji/pdf/core/PDFObj$Type;

    const-string v1, "DOUBLE"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/metamoji/pdf/core/PDFObj$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/pdf/core/PDFObj$Type;->DOUBLE:Lcom/metamoji/pdf/core/PDFObj$Type;

    .line 30
    new-instance v0, Lcom/metamoji/pdf/core/PDFObj$Type;

    const-string v1, "STRING"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/metamoji/pdf/core/PDFObj$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/pdf/core/PDFObj$Type;->STRING:Lcom/metamoji/pdf/core/PDFObj$Type;

    .line 31
    new-instance v0, Lcom/metamoji/pdf/core/PDFObj$Type;

    const-string v1, "NAME"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/metamoji/pdf/core/PDFObj$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/pdf/core/PDFObj$Type;->NAME:Lcom/metamoji/pdf/core/PDFObj$Type;

    .line 32
    new-instance v0, Lcom/metamoji/pdf/core/PDFObj$Type;

    const-string v1, "ARRAY"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/metamoji/pdf/core/PDFObj$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/pdf/core/PDFObj$Type;->ARRAY:Lcom/metamoji/pdf/core/PDFObj$Type;

    .line 33
    new-instance v0, Lcom/metamoji/pdf/core/PDFObj$Type;

    const-string v1, "DICTIONARY"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/metamoji/pdf/core/PDFObj$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/pdf/core/PDFObj$Type;->DICTIONARY:Lcom/metamoji/pdf/core/PDFObj$Type;

    .line 34
    new-instance v0, Lcom/metamoji/pdf/core/PDFObj$Type;

    const-string v1, "STREAM"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/metamoji/pdf/core/PDFObj$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/pdf/core/PDFObj$Type;->STREAM:Lcom/metamoji/pdf/core/PDFObj$Type;

    .line 35
    new-instance v0, Lcom/metamoji/pdf/core/PDFObj$Type;

    const-string v1, "REFERENCE"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/metamoji/pdf/core/PDFObj$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/pdf/core/PDFObj$Type;->REFERENCE:Lcom/metamoji/pdf/core/PDFObj$Type;

    invoke-static {}, Lcom/metamoji/pdf/core/PDFObj$Type;->$values()[Lcom/metamoji/pdf/core/PDFObj$Type;

    move-result-object v0

    sput-object v0, Lcom/metamoji/pdf/core/PDFObj$Type;->$VALUES:[Lcom/metamoji/pdf/core/PDFObj$Type;

    check-cast v0, [Ljava/lang/Enum;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/metamoji/pdf/core/PDFObj$Type;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 25
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lcom/metamoji/pdf/core/PDFObj$Type;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/metamoji/pdf/core/PDFObj$Type;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/metamoji/pdf/core/PDFObj$Type;
    .locals 1

    const-class v0, Lcom/metamoji/pdf/core/PDFObj$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/metamoji/pdf/core/PDFObj$Type;

    return-object p0
.end method

.method public static values()[Lcom/metamoji/pdf/core/PDFObj$Type;
    .locals 1

    sget-object v0, Lcom/metamoji/pdf/core/PDFObj$Type;->$VALUES:[Lcom/metamoji/pdf/core/PDFObj$Type;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/metamoji/pdf/core/PDFObj$Type;

    return-object v0
.end method
