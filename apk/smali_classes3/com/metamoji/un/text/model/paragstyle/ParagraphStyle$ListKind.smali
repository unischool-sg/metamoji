.class public final enum Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$ListKind;
.super Ljava/lang/Enum;
.source "ParagraphStyle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ListKind"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$ListKind;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$ListKind;

.field public static final enum BulletedList:Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$ListKind;

.field public static final enum NoList:Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$ListKind;

.field public static final enum NumberedList:Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$ListKind;


# instance fields
.field private _value:I


# direct methods
.method private static synthetic $values()[Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$ListKind;
    .locals 3

    .line 106
    sget-object v0, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$ListKind;->NoList:Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$ListKind;

    sget-object v1, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$ListKind;->BulletedList:Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$ListKind;

    sget-object v2, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$ListKind;->NumberedList:Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$ListKind;

    filled-new-array {v0, v1, v2}, [Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$ListKind;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 107
    new-instance v0, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$ListKind;

    const-string v1, "NoList"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$ListKind;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$ListKind;->NoList:Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$ListKind;

    .line 108
    new-instance v0, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$ListKind;

    const-string v1, "BulletedList"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$ListKind;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$ListKind;->BulletedList:Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$ListKind;

    .line 109
    new-instance v0, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$ListKind;

    const-string v1, "NumberedList"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v2}, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$ListKind;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$ListKind;->NumberedList:Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$ListKind;

    .line 106
    invoke-static {}, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$ListKind;->$values()[Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$ListKind;

    move-result-object v0

    sput-object v0, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$ListKind;->$VALUES:[Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$ListKind;

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

    .line 112
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 113
    iput p3, p0, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$ListKind;->_value:I

    return-void
.end method

.method public static fromIntValue(I)Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$ListKind;
    .locals 5

    .line 119
    invoke-static {}, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$ListKind;->values()[Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$ListKind;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 120
    invoke-virtual {v3}, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$ListKind;->toIntValue()I

    move-result v4

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$ListKind;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 106
    const-class v0, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$ListKind;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$ListKind;

    return-object p0
.end method

.method public static values()[Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$ListKind;
    .locals 1

    .line 106
    sget-object v0, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$ListKind;->$VALUES:[Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$ListKind;

    invoke-virtual {v0}, [Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$ListKind;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$ListKind;

    return-object v0
.end method


# virtual methods
.method public toIntValue()I
    .locals 1

    .line 116
    iget v0, p0, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$ListKind;->_value:I

    return v0
.end method
