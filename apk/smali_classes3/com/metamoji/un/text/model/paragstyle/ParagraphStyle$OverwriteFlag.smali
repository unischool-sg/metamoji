.class public final enum Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$OverwriteFlag;
.super Ljava/lang/Enum;
.source "ParagraphStyle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "OverwriteFlag"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$OverwriteFlag;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$OverwriteFlag;

.field public static final enum Align:Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$OverwriteFlag;

.field public static final enum AuthorInfo:Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$OverwriteFlag;

.field public static final enum BulletedListChar:Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$OverwriteFlag;

.field public static final enum Indent:Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$OverwriteFlag;

.field public static final enum ListKind:Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$OverwriteFlag;

.field public static final enum ListLevel:Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$OverwriteFlag;

.field public static final enum ListPrefix:Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$OverwriteFlag;

.field public static final enum NumeralListKind:Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$OverwriteFlag;

.field public static final enum TagId:Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$OverwriteFlag;


# instance fields
.field private value:I


# direct methods
.method private static synthetic $values()[Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$OverwriteFlag;
    .locals 9

    .line 54
    sget-object v0, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$OverwriteFlag;->Indent:Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$OverwriteFlag;

    sget-object v1, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$OverwriteFlag;->Align:Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$OverwriteFlag;

    sget-object v2, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$OverwriteFlag;->ListKind:Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$OverwriteFlag;

    sget-object v3, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$OverwriteFlag;->NumeralListKind:Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$OverwriteFlag;

    sget-object v4, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$OverwriteFlag;->BulletedListChar:Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$OverwriteFlag;

    sget-object v5, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$OverwriteFlag;->ListLevel:Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$OverwriteFlag;

    sget-object v6, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$OverwriteFlag;->TagId:Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$OverwriteFlag;

    sget-object v7, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$OverwriteFlag;->AuthorInfo:Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$OverwriteFlag;

    sget-object v8, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$OverwriteFlag;->ListPrefix:Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$OverwriteFlag;

    filled-new-array/range {v0 .. v8}, [Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$OverwriteFlag;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 8

    .line 55
    new-instance v0, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$OverwriteFlag;

    const-string v1, "Indent"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$OverwriteFlag;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$OverwriteFlag;->Indent:Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$OverwriteFlag;

    .line 56
    new-instance v0, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$OverwriteFlag;

    const-string v1, "Align"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v3, v2}, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$OverwriteFlag;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$OverwriteFlag;->Align:Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$OverwriteFlag;

    .line 58
    new-instance v0, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$OverwriteFlag;

    const-string v1, "ListKind"

    const/4 v3, 0x4

    invoke-direct {v0, v1, v2, v3}, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$OverwriteFlag;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$OverwriteFlag;->ListKind:Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$OverwriteFlag;

    .line 59
    new-instance v1, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$OverwriteFlag;

    const-string v2, "NumeralListKind"

    const/4 v4, 0x3

    const/16 v5, 0x8

    invoke-direct {v1, v2, v4, v5}, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$OverwriteFlag;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$OverwriteFlag;->NumeralListKind:Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$OverwriteFlag;

    .line 60
    new-instance v2, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$OverwriteFlag;

    const-string v4, "BulletedListChar"

    const/16 v6, 0x10

    invoke-direct {v2, v4, v3, v6}, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$OverwriteFlag;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$OverwriteFlag;->BulletedListChar:Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$OverwriteFlag;

    .line 61
    new-instance v3, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$OverwriteFlag;

    const/4 v4, 0x5

    const/16 v6, 0x20

    const-string v7, "ListLevel"

    invoke-direct {v3, v7, v4, v6}, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$OverwriteFlag;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$OverwriteFlag;->ListLevel:Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$OverwriteFlag;

    .line 62
    new-instance v3, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$OverwriteFlag;

    const/4 v4, 0x6

    const/16 v6, 0x40

    const-string v7, "TagId"

    invoke-direct {v3, v7, v4, v6}, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$OverwriteFlag;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$OverwriteFlag;->TagId:Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$OverwriteFlag;

    .line 63
    new-instance v3, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$OverwriteFlag;

    const/4 v4, 0x7

    const/16 v6, 0x80

    const-string v7, "AuthorInfo"

    invoke-direct {v3, v7, v4, v6}, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$OverwriteFlag;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$OverwriteFlag;->AuthorInfo:Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$OverwriteFlag;

    .line 65
    new-instance v3, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$OverwriteFlag;

    invoke-virtual {v0}, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$OverwriteFlag;->getIntValue()I

    move-result v0

    invoke-virtual {v1}, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$OverwriteFlag;->getIntValue()I

    move-result v1

    or-int/2addr v0, v1

    invoke-virtual {v2}, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$OverwriteFlag;->getIntValue()I

    move-result v1

    or-int/2addr v0, v1

    const-string v1, "ListPrefix"

    invoke-direct {v3, v1, v5, v0}, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$OverwriteFlag;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$OverwriteFlag;->ListPrefix:Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$OverwriteFlag;

    .line 54
    invoke-static {}, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$OverwriteFlag;->$values()[Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$OverwriteFlag;

    move-result-object v0

    sput-object v0, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$OverwriteFlag;->$VALUES:[Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$OverwriteFlag;

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

    .line 69
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 70
    iput p3, p0, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$OverwriteFlag;->value:I

    return-void
.end method

.method public static enumSetFromInt(I)Ljava/util/EnumSet;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/EnumSet<",
            "Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$OverwriteFlag;",
            ">;"
        }
    .end annotation

    .line 93
    const-class v0, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$OverwriteFlag;

    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    .line 94
    invoke-static {}, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$OverwriteFlag;->values()[Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$OverwriteFlag;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 95
    invoke-virtual {v4}, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$OverwriteFlag;->getIntValue()I

    move-result v5

    and-int/2addr v5, p0

    if-eqz v5, :cond_0

    .line 96
    invoke-virtual {v0, v4}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static enumSetToInt(Ljava/util/EnumSet;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumSet<",
            "Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$OverwriteFlag;",
            ">;)I"
        }
    .end annotation

    .line 87
    invoke-virtual {p0}, Ljava/util/EnumSet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$OverwriteFlag;

    .line 88
    invoke-virtual {v1}, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$OverwriteFlag;->getIntValue()I

    move-result v1

    or-int/2addr v0, v1

    goto :goto_0

    :cond_0
    return v0
.end method

.method public static fromValue(I)Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$OverwriteFlag;
    .locals 5

    .line 77
    invoke-static {}, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$OverwriteFlag;->values()[Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$OverwriteFlag;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 78
    invoke-virtual {v3}, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$OverwriteFlag;->getIntValue()I

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

.method public static valueOf(Ljava/lang/String;)Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$OverwriteFlag;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 54
    const-class v0, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$OverwriteFlag;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$OverwriteFlag;

    return-object p0
.end method

.method public static values()[Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$OverwriteFlag;
    .locals 1

    .line 54
    sget-object v0, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$OverwriteFlag;->$VALUES:[Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$OverwriteFlag;

    invoke-virtual {v0}, [Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$OverwriteFlag;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$OverwriteFlag;

    return-object v0
.end method


# virtual methods
.method public getIntValue()I
    .locals 1

    .line 74
    iget v0, p0, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$OverwriteFlag;->value:I

    return v0
.end method
