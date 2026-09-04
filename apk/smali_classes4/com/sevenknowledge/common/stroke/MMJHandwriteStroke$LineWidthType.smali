.class public final enum Lcom/sevenknowledge/common/stroke/MMJHandwriteStroke$LineWidthType;
.super Ljava/lang/Enum;
.source "MMJHandwriteStroke.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sevenknowledge/common/stroke/MMJHandwriteStroke;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LineWidthType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sevenknowledge/common/stroke/MMJHandwriteStroke$LineWidthType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sevenknowledge/common/stroke/MMJHandwriteStroke$LineWidthType;

.field public static final enum BOLD:Lcom/sevenknowledge/common/stroke/MMJHandwriteStroke$LineWidthType;

.field public static final enum NORMAL:Lcom/sevenknowledge/common/stroke/MMJHandwriteStroke$LineWidthType;

.field public static final enum SEMIBOLD:Lcom/sevenknowledge/common/stroke/MMJHandwriteStroke$LineWidthType;

.field public static final enum THIN:Lcom/sevenknowledge/common/stroke/MMJHandwriteStroke$LineWidthType;


# instance fields
.field private final value:I


# direct methods
.method private static synthetic $values()[Lcom/sevenknowledge/common/stroke/MMJHandwriteStroke$LineWidthType;
    .locals 4

    .line 31
    sget-object v0, Lcom/sevenknowledge/common/stroke/MMJHandwriteStroke$LineWidthType;->NORMAL:Lcom/sevenknowledge/common/stroke/MMJHandwriteStroke$LineWidthType;

    sget-object v1, Lcom/sevenknowledge/common/stroke/MMJHandwriteStroke$LineWidthType;->THIN:Lcom/sevenknowledge/common/stroke/MMJHandwriteStroke$LineWidthType;

    sget-object v2, Lcom/sevenknowledge/common/stroke/MMJHandwriteStroke$LineWidthType;->SEMIBOLD:Lcom/sevenknowledge/common/stroke/MMJHandwriteStroke$LineWidthType;

    sget-object v3, Lcom/sevenknowledge/common/stroke/MMJHandwriteStroke$LineWidthType;->BOLD:Lcom/sevenknowledge/common/stroke/MMJHandwriteStroke$LineWidthType;

    filled-new-array {v0, v1, v2, v3}, [Lcom/sevenknowledge/common/stroke/MMJHandwriteStroke$LineWidthType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 32
    new-instance v0, Lcom/sevenknowledge/common/stroke/MMJHandwriteStroke$LineWidthType;

    const-string v1, "NORMAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/sevenknowledge/common/stroke/MMJHandwriteStroke$LineWidthType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sevenknowledge/common/stroke/MMJHandwriteStroke$LineWidthType;->NORMAL:Lcom/sevenknowledge/common/stroke/MMJHandwriteStroke$LineWidthType;

    .line 33
    new-instance v0, Lcom/sevenknowledge/common/stroke/MMJHandwriteStroke$LineWidthType;

    const-string v1, "THIN"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Lcom/sevenknowledge/common/stroke/MMJHandwriteStroke$LineWidthType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sevenknowledge/common/stroke/MMJHandwriteStroke$LineWidthType;->THIN:Lcom/sevenknowledge/common/stroke/MMJHandwriteStroke$LineWidthType;

    .line 34
    new-instance v0, Lcom/sevenknowledge/common/stroke/MMJHandwriteStroke$LineWidthType;

    const-string v1, "SEMIBOLD"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v2}, Lcom/sevenknowledge/common/stroke/MMJHandwriteStroke$LineWidthType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sevenknowledge/common/stroke/MMJHandwriteStroke$LineWidthType;->SEMIBOLD:Lcom/sevenknowledge/common/stroke/MMJHandwriteStroke$LineWidthType;

    .line 35
    new-instance v0, Lcom/sevenknowledge/common/stroke/MMJHandwriteStroke$LineWidthType;

    const-string v1, "BOLD"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, v2}, Lcom/sevenknowledge/common/stroke/MMJHandwriteStroke$LineWidthType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sevenknowledge/common/stroke/MMJHandwriteStroke$LineWidthType;->BOLD:Lcom/sevenknowledge/common/stroke/MMJHandwriteStroke$LineWidthType;

    .line 31
    invoke-static {}, Lcom/sevenknowledge/common/stroke/MMJHandwriteStroke$LineWidthType;->$values()[Lcom/sevenknowledge/common/stroke/MMJHandwriteStroke$LineWidthType;

    move-result-object v0

    sput-object v0, Lcom/sevenknowledge/common/stroke/MMJHandwriteStroke$LineWidthType;->$VALUES:[Lcom/sevenknowledge/common/stroke/MMJHandwriteStroke$LineWidthType;

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

    .line 38
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/sevenknowledge/common/stroke/MMJHandwriteStroke$LineWidthType;->value:I

    return-void
.end method

.method public static createByValue(I)Lcom/sevenknowledge/common/stroke/MMJHandwriteStroke$LineWidthType;
    .locals 5

    .line 41
    invoke-static {}, Lcom/sevenknowledge/common/stroke/MMJHandwriteStroke$LineWidthType;->values()[Lcom/sevenknowledge/common/stroke/MMJHandwriteStroke$LineWidthType;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 42
    invoke-virtual {v3}, Lcom/sevenknowledge/common/stroke/MMJHandwriteStroke$LineWidthType;->getValue()I

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

.method public static valueOf(Ljava/lang/String;)Lcom/sevenknowledge/common/stroke/MMJHandwriteStroke$LineWidthType;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 31
    const-class v0, Lcom/sevenknowledge/common/stroke/MMJHandwriteStroke$LineWidthType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sevenknowledge/common/stroke/MMJHandwriteStroke$LineWidthType;

    return-object p0
.end method

.method public static values()[Lcom/sevenknowledge/common/stroke/MMJHandwriteStroke$LineWidthType;
    .locals 1

    .line 31
    sget-object v0, Lcom/sevenknowledge/common/stroke/MMJHandwriteStroke$LineWidthType;->$VALUES:[Lcom/sevenknowledge/common/stroke/MMJHandwriteStroke$LineWidthType;

    invoke-virtual {v0}, [Lcom/sevenknowledge/common/stroke/MMJHandwriteStroke$LineWidthType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sevenknowledge/common/stroke/MMJHandwriteStroke$LineWidthType;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .line 39
    iget v0, p0, Lcom/sevenknowledge/common/stroke/MMJHandwriteStroke$LineWidthType;->value:I

    return v0
.end method
