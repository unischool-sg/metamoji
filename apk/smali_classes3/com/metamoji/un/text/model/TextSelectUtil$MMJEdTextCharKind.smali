.class public final enum Lcom/metamoji/un/text/model/TextSelectUtil$MMJEdTextCharKind;
.super Ljava/lang/Enum;
.source "TextSelectUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/un/text/model/TextSelectUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MMJEdTextCharKind"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/metamoji/un/text/model/TextSelectUtil$MMJEdTextCharKind;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/metamoji/un/text/model/TextSelectUtil$MMJEdTextCharKind;

.field public static final enum MMJEdTextCharKind_CYRILLIC:Lcom/metamoji/un/text/model/TextSelectUtil$MMJEdTextCharKind;

.field public static final enum MMJEdTextCharKind_GREEK:Lcom/metamoji/un/text/model/TextSelectUtil$MMJEdTextCharKind;

.field public static final enum MMJEdTextCharKind_HAN_A:Lcom/metamoji/un/text/model/TextSelectUtil$MMJEdTextCharKind;

.field public static final enum MMJEdTextCharKind_HAN_KATA:Lcom/metamoji/un/text/model/TextSelectUtil$MMJEdTextCharKind;

.field public static final enum MMJEdTextCharKind_HAN_NUM:Lcom/metamoji/un/text/model/TextSelectUtil$MMJEdTextCharKind;

.field public static final enum MMJEdTextCharKind_HAN_a:Lcom/metamoji/un/text/model/TextSelectUtil$MMJEdTextCharKind;

.field public static final enum MMJEdTextCharKind_HIRA:Lcom/metamoji/un/text/model/TextSelectUtil$MMJEdTextCharKind;

.field public static final enum MMJEdTextCharKind_KANJI:Lcom/metamoji/un/text/model/TextSelectUtil$MMJEdTextCharKind;

.field public static final enum MMJEdTextCharKind_OTHER:Lcom/metamoji/un/text/model/TextSelectUtil$MMJEdTextCharKind;

.field public static final enum MMJEdTextCharKind_ZEN_A:Lcom/metamoji/un/text/model/TextSelectUtil$MMJEdTextCharKind;

.field public static final enum MMJEdTextCharKind_ZEN_KATA:Lcom/metamoji/un/text/model/TextSelectUtil$MMJEdTextCharKind;

.field public static final enum MMJEdTextCharKind_ZEN_NUM:Lcom/metamoji/un/text/model/TextSelectUtil$MMJEdTextCharKind;

.field public static final enum MMJEdTextCharKind_ZEN_a:Lcom/metamoji/un/text/model/TextSelectUtil$MMJEdTextCharKind;


# instance fields
.field private _value:I


# direct methods
.method private static synthetic $values()[Lcom/metamoji/un/text/model/TextSelectUtil$MMJEdTextCharKind;
    .locals 13

    .line 11
    sget-object v0, Lcom/metamoji/un/text/model/TextSelectUtil$MMJEdTextCharKind;->MMJEdTextCharKind_OTHER:Lcom/metamoji/un/text/model/TextSelectUtil$MMJEdTextCharKind;

    sget-object v1, Lcom/metamoji/un/text/model/TextSelectUtil$MMJEdTextCharKind;->MMJEdTextCharKind_HIRA:Lcom/metamoji/un/text/model/TextSelectUtil$MMJEdTextCharKind;

    sget-object v2, Lcom/metamoji/un/text/model/TextSelectUtil$MMJEdTextCharKind;->MMJEdTextCharKind_ZEN_KATA:Lcom/metamoji/un/text/model/TextSelectUtil$MMJEdTextCharKind;

    sget-object v3, Lcom/metamoji/un/text/model/TextSelectUtil$MMJEdTextCharKind;->MMJEdTextCharKind_HAN_KATA:Lcom/metamoji/un/text/model/TextSelectUtil$MMJEdTextCharKind;

    sget-object v4, Lcom/metamoji/un/text/model/TextSelectUtil$MMJEdTextCharKind;->MMJEdTextCharKind_ZEN_NUM:Lcom/metamoji/un/text/model/TextSelectUtil$MMJEdTextCharKind;

    sget-object v5, Lcom/metamoji/un/text/model/TextSelectUtil$MMJEdTextCharKind;->MMJEdTextCharKind_ZEN_A:Lcom/metamoji/un/text/model/TextSelectUtil$MMJEdTextCharKind;

    sget-object v6, Lcom/metamoji/un/text/model/TextSelectUtil$MMJEdTextCharKind;->MMJEdTextCharKind_ZEN_a:Lcom/metamoji/un/text/model/TextSelectUtil$MMJEdTextCharKind;

    sget-object v7, Lcom/metamoji/un/text/model/TextSelectUtil$MMJEdTextCharKind;->MMJEdTextCharKind_HAN_NUM:Lcom/metamoji/un/text/model/TextSelectUtil$MMJEdTextCharKind;

    sget-object v8, Lcom/metamoji/un/text/model/TextSelectUtil$MMJEdTextCharKind;->MMJEdTextCharKind_HAN_A:Lcom/metamoji/un/text/model/TextSelectUtil$MMJEdTextCharKind;

    sget-object v9, Lcom/metamoji/un/text/model/TextSelectUtil$MMJEdTextCharKind;->MMJEdTextCharKind_HAN_a:Lcom/metamoji/un/text/model/TextSelectUtil$MMJEdTextCharKind;

    sget-object v10, Lcom/metamoji/un/text/model/TextSelectUtil$MMJEdTextCharKind;->MMJEdTextCharKind_GREEK:Lcom/metamoji/un/text/model/TextSelectUtil$MMJEdTextCharKind;

    sget-object v11, Lcom/metamoji/un/text/model/TextSelectUtil$MMJEdTextCharKind;->MMJEdTextCharKind_CYRILLIC:Lcom/metamoji/un/text/model/TextSelectUtil$MMJEdTextCharKind;

    sget-object v12, Lcom/metamoji/un/text/model/TextSelectUtil$MMJEdTextCharKind;->MMJEdTextCharKind_KANJI:Lcom/metamoji/un/text/model/TextSelectUtil$MMJEdTextCharKind;

    filled-new-array/range {v0 .. v12}, [Lcom/metamoji/un/text/model/TextSelectUtil$MMJEdTextCharKind;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 12
    new-instance v0, Lcom/metamoji/un/text/model/TextSelectUtil$MMJEdTextCharKind;

    const-string v1, "MMJEdTextCharKind_OTHER"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/metamoji/un/text/model/TextSelectUtil$MMJEdTextCharKind;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/metamoji/un/text/model/TextSelectUtil$MMJEdTextCharKind;->MMJEdTextCharKind_OTHER:Lcom/metamoji/un/text/model/TextSelectUtil$MMJEdTextCharKind;

    .line 13
    new-instance v0, Lcom/metamoji/un/text/model/TextSelectUtil$MMJEdTextCharKind;

    const-string v1, "MMJEdTextCharKind_HIRA"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Lcom/metamoji/un/text/model/TextSelectUtil$MMJEdTextCharKind;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/metamoji/un/text/model/TextSelectUtil$MMJEdTextCharKind;->MMJEdTextCharKind_HIRA:Lcom/metamoji/un/text/model/TextSelectUtil$MMJEdTextCharKind;

    .line 14
    new-instance v0, Lcom/metamoji/un/text/model/TextSelectUtil$MMJEdTextCharKind;

    const-string v1, "MMJEdTextCharKind_ZEN_KATA"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v2}, Lcom/metamoji/un/text/model/TextSelectUtil$MMJEdTextCharKind;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/metamoji/un/text/model/TextSelectUtil$MMJEdTextCharKind;->MMJEdTextCharKind_ZEN_KATA:Lcom/metamoji/un/text/model/TextSelectUtil$MMJEdTextCharKind;

    .line 15
    new-instance v0, Lcom/metamoji/un/text/model/TextSelectUtil$MMJEdTextCharKind;

    const-string v1, "MMJEdTextCharKind_HAN_KATA"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, v2}, Lcom/metamoji/un/text/model/TextSelectUtil$MMJEdTextCharKind;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/metamoji/un/text/model/TextSelectUtil$MMJEdTextCharKind;->MMJEdTextCharKind_HAN_KATA:Lcom/metamoji/un/text/model/TextSelectUtil$MMJEdTextCharKind;

    .line 16
    new-instance v0, Lcom/metamoji/un/text/model/TextSelectUtil$MMJEdTextCharKind;

    const-string v1, "MMJEdTextCharKind_ZEN_NUM"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2, v2}, Lcom/metamoji/un/text/model/TextSelectUtil$MMJEdTextCharKind;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/metamoji/un/text/model/TextSelectUtil$MMJEdTextCharKind;->MMJEdTextCharKind_ZEN_NUM:Lcom/metamoji/un/text/model/TextSelectUtil$MMJEdTextCharKind;

    .line 17
    new-instance v0, Lcom/metamoji/un/text/model/TextSelectUtil$MMJEdTextCharKind;

    const-string v1, "MMJEdTextCharKind_ZEN_A"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2, v2}, Lcom/metamoji/un/text/model/TextSelectUtil$MMJEdTextCharKind;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/metamoji/un/text/model/TextSelectUtil$MMJEdTextCharKind;->MMJEdTextCharKind_ZEN_A:Lcom/metamoji/un/text/model/TextSelectUtil$MMJEdTextCharKind;

    .line 18
    new-instance v0, Lcom/metamoji/un/text/model/TextSelectUtil$MMJEdTextCharKind;

    const-string v1, "MMJEdTextCharKind_ZEN_a"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2, v2}, Lcom/metamoji/un/text/model/TextSelectUtil$MMJEdTextCharKind;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/metamoji/un/text/model/TextSelectUtil$MMJEdTextCharKind;->MMJEdTextCharKind_ZEN_a:Lcom/metamoji/un/text/model/TextSelectUtil$MMJEdTextCharKind;

    .line 19
    new-instance v0, Lcom/metamoji/un/text/model/TextSelectUtil$MMJEdTextCharKind;

    const-string v1, "MMJEdTextCharKind_HAN_NUM"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2, v2}, Lcom/metamoji/un/text/model/TextSelectUtil$MMJEdTextCharKind;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/metamoji/un/text/model/TextSelectUtil$MMJEdTextCharKind;->MMJEdTextCharKind_HAN_NUM:Lcom/metamoji/un/text/model/TextSelectUtil$MMJEdTextCharKind;

    .line 20
    new-instance v0, Lcom/metamoji/un/text/model/TextSelectUtil$MMJEdTextCharKind;

    const-string v1, "MMJEdTextCharKind_HAN_A"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2, v2}, Lcom/metamoji/un/text/model/TextSelectUtil$MMJEdTextCharKind;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/metamoji/un/text/model/TextSelectUtil$MMJEdTextCharKind;->MMJEdTextCharKind_HAN_A:Lcom/metamoji/un/text/model/TextSelectUtil$MMJEdTextCharKind;

    .line 21
    new-instance v0, Lcom/metamoji/un/text/model/TextSelectUtil$MMJEdTextCharKind;

    const-string v1, "MMJEdTextCharKind_HAN_a"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2, v2}, Lcom/metamoji/un/text/model/TextSelectUtil$MMJEdTextCharKind;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/metamoji/un/text/model/TextSelectUtil$MMJEdTextCharKind;->MMJEdTextCharKind_HAN_a:Lcom/metamoji/un/text/model/TextSelectUtil$MMJEdTextCharKind;

    .line 22
    new-instance v0, Lcom/metamoji/un/text/model/TextSelectUtil$MMJEdTextCharKind;

    const-string v1, "MMJEdTextCharKind_GREEK"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2, v2}, Lcom/metamoji/un/text/model/TextSelectUtil$MMJEdTextCharKind;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/metamoji/un/text/model/TextSelectUtil$MMJEdTextCharKind;->MMJEdTextCharKind_GREEK:Lcom/metamoji/un/text/model/TextSelectUtil$MMJEdTextCharKind;

    .line 23
    new-instance v0, Lcom/metamoji/un/text/model/TextSelectUtil$MMJEdTextCharKind;

    const-string v1, "MMJEdTextCharKind_CYRILLIC"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2, v2}, Lcom/metamoji/un/text/model/TextSelectUtil$MMJEdTextCharKind;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/metamoji/un/text/model/TextSelectUtil$MMJEdTextCharKind;->MMJEdTextCharKind_CYRILLIC:Lcom/metamoji/un/text/model/TextSelectUtil$MMJEdTextCharKind;

    .line 24
    new-instance v0, Lcom/metamoji/un/text/model/TextSelectUtil$MMJEdTextCharKind;

    const-string v1, "MMJEdTextCharKind_KANJI"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2, v2}, Lcom/metamoji/un/text/model/TextSelectUtil$MMJEdTextCharKind;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/metamoji/un/text/model/TextSelectUtil$MMJEdTextCharKind;->MMJEdTextCharKind_KANJI:Lcom/metamoji/un/text/model/TextSelectUtil$MMJEdTextCharKind;

    .line 11
    invoke-static {}, Lcom/metamoji/un/text/model/TextSelectUtil$MMJEdTextCharKind;->$values()[Lcom/metamoji/un/text/model/TextSelectUtil$MMJEdTextCharKind;

    move-result-object v0

    sput-object v0, Lcom/metamoji/un/text/model/TextSelectUtil$MMJEdTextCharKind;->$VALUES:[Lcom/metamoji/un/text/model/TextSelectUtil$MMJEdTextCharKind;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 28
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 29
    iput p3, p0, Lcom/metamoji/un/text/model/TextSelectUtil$MMJEdTextCharKind;->_value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/metamoji/un/text/model/TextSelectUtil$MMJEdTextCharKind;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 11
    const-class v0, Lcom/metamoji/un/text/model/TextSelectUtil$MMJEdTextCharKind;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/metamoji/un/text/model/TextSelectUtil$MMJEdTextCharKind;

    return-object p0
.end method

.method public static values()[Lcom/metamoji/un/text/model/TextSelectUtil$MMJEdTextCharKind;
    .locals 1

    .line 11
    sget-object v0, Lcom/metamoji/un/text/model/TextSelectUtil$MMJEdTextCharKind;->$VALUES:[Lcom/metamoji/un/text/model/TextSelectUtil$MMJEdTextCharKind;

    invoke-virtual {v0}, [Lcom/metamoji/un/text/model/TextSelectUtil$MMJEdTextCharKind;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/metamoji/un/text/model/TextSelectUtil$MMJEdTextCharKind;

    return-object v0
.end method


# virtual methods
.method public toIntValue()I
    .locals 1

    .line 33
    iget v0, p0, Lcom/metamoji/un/text/model/TextSelectUtil$MMJEdTextCharKind;->_value:I

    return v0
.end method
