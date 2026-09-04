.class public final enum Lcom/metamoji/un/draw2/jni/library/reshape/Recognition$Trait;
.super Ljava/lang/Enum;
.source "Recognition.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/un/draw2/jni/library/reshape/Recognition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Trait"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/metamoji/un/draw2/jni/library/reshape/Recognition$Trait;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/metamoji/un/draw2/jni/library/reshape/Recognition$Trait;

.field public static final enum BACKWARD_ARROWHEAD:Lcom/metamoji/un/draw2/jni/library/reshape/Recognition$Trait;

.field public static final enum CLOSED:Lcom/metamoji/un/draw2/jni/library/reshape/Recognition$Trait;

.field public static final enum FORWARD_ARROWHEAD:Lcom/metamoji/un/draw2/jni/library/reshape/Recognition$Trait;


# direct methods
.method private static synthetic $values()[Lcom/metamoji/un/draw2/jni/library/reshape/Recognition$Trait;
    .locals 3

    .line 35
    sget-object v0, Lcom/metamoji/un/draw2/jni/library/reshape/Recognition$Trait;->CLOSED:Lcom/metamoji/un/draw2/jni/library/reshape/Recognition$Trait;

    sget-object v1, Lcom/metamoji/un/draw2/jni/library/reshape/Recognition$Trait;->FORWARD_ARROWHEAD:Lcom/metamoji/un/draw2/jni/library/reshape/Recognition$Trait;

    sget-object v2, Lcom/metamoji/un/draw2/jni/library/reshape/Recognition$Trait;->BACKWARD_ARROWHEAD:Lcom/metamoji/un/draw2/jni/library/reshape/Recognition$Trait;

    filled-new-array {v0, v1, v2}, [Lcom/metamoji/un/draw2/jni/library/reshape/Recognition$Trait;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 36
    new-instance v0, Lcom/metamoji/un/draw2/jni/library/reshape/Recognition$Trait;

    const-string v1, "CLOSED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/metamoji/un/draw2/jni/library/reshape/Recognition$Trait;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/un/draw2/jni/library/reshape/Recognition$Trait;->CLOSED:Lcom/metamoji/un/draw2/jni/library/reshape/Recognition$Trait;

    .line 37
    new-instance v0, Lcom/metamoji/un/draw2/jni/library/reshape/Recognition$Trait;

    const-string v1, "FORWARD_ARROWHEAD"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/metamoji/un/draw2/jni/library/reshape/Recognition$Trait;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/un/draw2/jni/library/reshape/Recognition$Trait;->FORWARD_ARROWHEAD:Lcom/metamoji/un/draw2/jni/library/reshape/Recognition$Trait;

    .line 38
    new-instance v0, Lcom/metamoji/un/draw2/jni/library/reshape/Recognition$Trait;

    const-string v1, "BACKWARD_ARROWHEAD"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/metamoji/un/draw2/jni/library/reshape/Recognition$Trait;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/un/draw2/jni/library/reshape/Recognition$Trait;->BACKWARD_ARROWHEAD:Lcom/metamoji/un/draw2/jni/library/reshape/Recognition$Trait;

    .line 35
    invoke-static {}, Lcom/metamoji/un/draw2/jni/library/reshape/Recognition$Trait;->$values()[Lcom/metamoji/un/draw2/jni/library/reshape/Recognition$Trait;

    move-result-object v0

    sput-object v0, Lcom/metamoji/un/draw2/jni/library/reshape/Recognition$Trait;->$VALUES:[Lcom/metamoji/un/draw2/jni/library/reshape/Recognition$Trait;

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

    .line 35
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static decompose(I)Ljava/util/EnumSet;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/EnumSet<",
            "Lcom/metamoji/un/draw2/jni/library/reshape/Recognition$Trait;",
            ">;"
        }
    .end annotation

    .line 42
    const-class v0, Lcom/metamoji/un/draw2/jni/library/reshape/Recognition$Trait;

    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    .line 43
    invoke-static {}, Lcom/metamoji/un/draw2/jni/library/reshape/Recognition$Trait;->values()[Lcom/metamoji/un/draw2/jni/library/reshape/Recognition$Trait;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 44
    invoke-virtual {v4}, Lcom/metamoji/un/draw2/jni/library/reshape/Recognition$Trait;->ordinal()I

    move-result v5

    const/4 v6, 0x1

    shl-int v5, v6, v5

    and-int/2addr v5, p0

    if-eqz v5, :cond_0

    .line 45
    invoke-virtual {v0, v4}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/metamoji/un/draw2/jni/library/reshape/Recognition$Trait;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 35
    const-class v0, Lcom/metamoji/un/draw2/jni/library/reshape/Recognition$Trait;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/metamoji/un/draw2/jni/library/reshape/Recognition$Trait;

    return-object p0
.end method

.method public static values()[Lcom/metamoji/un/draw2/jni/library/reshape/Recognition$Trait;
    .locals 1

    .line 35
    sget-object v0, Lcom/metamoji/un/draw2/jni/library/reshape/Recognition$Trait;->$VALUES:[Lcom/metamoji/un/draw2/jni/library/reshape/Recognition$Trait;

    invoke-virtual {v0}, [Lcom/metamoji/un/draw2/jni/library/reshape/Recognition$Trait;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/metamoji/un/draw2/jni/library/reshape/Recognition$Trait;

    return-object v0
.end method
