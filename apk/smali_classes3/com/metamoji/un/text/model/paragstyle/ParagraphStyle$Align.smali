.class public final enum Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$Align;
.super Ljava/lang/Enum;
.source "ParagraphStyle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Align"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$Align;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$Align;

.field public static final enum Centering:Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$Align;

.field public static final enum Left:Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$Align;

.field public static final enum None:Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$Align;

.field public static final enum Right:Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$Align;


# instance fields
.field private value:I


# direct methods
.method private static synthetic $values()[Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$Align;
    .locals 4

    .line 26
    sget-object v0, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$Align;->None:Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$Align;

    sget-object v1, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$Align;->Left:Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$Align;

    sget-object v2, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$Align;->Centering:Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$Align;

    sget-object v3, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$Align;->Right:Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$Align;

    filled-new-array {v0, v1, v2, v3}, [Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$Align;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 27
    new-instance v0, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$Align;

    const-string v1, "None"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$Align;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$Align;->None:Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$Align;

    .line 28
    new-instance v0, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$Align;

    const-string v1, "Left"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$Align;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$Align;->Left:Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$Align;

    .line 29
    new-instance v0, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$Align;

    const-string v1, "Centering"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v2}, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$Align;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$Align;->Centering:Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$Align;

    .line 30
    new-instance v0, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$Align;

    const-string v1, "Right"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, v2}, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$Align;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$Align;->Right:Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$Align;

    .line 26
    invoke-static {}, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$Align;->$values()[Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$Align;

    move-result-object v0

    sput-object v0, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$Align;->$VALUES:[Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$Align;

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

    .line 34
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 35
    iput p3, p0, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$Align;->value:I

    return-void
.end method

.method public static fromValue(I)Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$Align;
    .locals 5

    .line 43
    invoke-static {}, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$Align;->values()[Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$Align;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 44
    invoke-virtual {v3}, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$Align;->getIntValue()I

    move-result v4

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 49
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ParagraphStyle$Align.fromValue(): invalid value -> "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;)V

    .line 50
    sget-object p0, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$Align;->None:Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$Align;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$Align;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 26
    const-class v0, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$Align;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$Align;

    return-object p0
.end method

.method public static values()[Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$Align;
    .locals 1

    .line 26
    sget-object v0, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$Align;->$VALUES:[Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$Align;

    invoke-virtual {v0}, [Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$Align;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$Align;

    return-object v0
.end method


# virtual methods
.method public getIntValue()I
    .locals 1

    .line 39
    iget v0, p0, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$Align;->value:I

    return v0
.end method
