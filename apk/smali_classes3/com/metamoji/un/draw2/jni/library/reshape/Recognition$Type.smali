.class public final enum Lcom/metamoji/un/draw2/jni/library/reshape/Recognition$Type;
.super Ljava/lang/Enum;
.source "Recognition.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/un/draw2/jni/library/reshape/Recognition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/metamoji/un/draw2/jni/library/reshape/Recognition$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/metamoji/un/draw2/jni/library/reshape/Recognition$Type;

.field public static final enum CIRCLE:Lcom/metamoji/un/draw2/jni/library/reshape/Recognition$Type;

.field public static final enum DIAMOND:Lcom/metamoji/un/draw2/jni/library/reshape/Recognition$Type;

.field public static final enum ELLIPSE:Lcom/metamoji/un/draw2/jni/library/reshape/Recognition$Type;

.field public static final enum LINE:Lcom/metamoji/un/draw2/jni/library/reshape/Recognition$Type;

.field public static final enum NONE:Lcom/metamoji/un/draw2/jni/library/reshape/Recognition$Type;

.field public static final enum QUADRATIC:Lcom/metamoji/un/draw2/jni/library/reshape/Recognition$Type;

.field public static final enum RECTANGLE:Lcom/metamoji/un/draw2/jni/library/reshape/Recognition$Type;

.field private static final values:[Lcom/metamoji/un/draw2/jni/library/reshape/Recognition$Type;


# direct methods
.method private static synthetic $values()[Lcom/metamoji/un/draw2/jni/library/reshape/Recognition$Type;
    .locals 7

    .line 19
    sget-object v0, Lcom/metamoji/un/draw2/jni/library/reshape/Recognition$Type;->NONE:Lcom/metamoji/un/draw2/jni/library/reshape/Recognition$Type;

    sget-object v1, Lcom/metamoji/un/draw2/jni/library/reshape/Recognition$Type;->LINE:Lcom/metamoji/un/draw2/jni/library/reshape/Recognition$Type;

    sget-object v2, Lcom/metamoji/un/draw2/jni/library/reshape/Recognition$Type;->CIRCLE:Lcom/metamoji/un/draw2/jni/library/reshape/Recognition$Type;

    sget-object v3, Lcom/metamoji/un/draw2/jni/library/reshape/Recognition$Type;->ELLIPSE:Lcom/metamoji/un/draw2/jni/library/reshape/Recognition$Type;

    sget-object v4, Lcom/metamoji/un/draw2/jni/library/reshape/Recognition$Type;->RECTANGLE:Lcom/metamoji/un/draw2/jni/library/reshape/Recognition$Type;

    sget-object v5, Lcom/metamoji/un/draw2/jni/library/reshape/Recognition$Type;->DIAMOND:Lcom/metamoji/un/draw2/jni/library/reshape/Recognition$Type;

    sget-object v6, Lcom/metamoji/un/draw2/jni/library/reshape/Recognition$Type;->QUADRATIC:Lcom/metamoji/un/draw2/jni/library/reshape/Recognition$Type;

    filled-new-array/range {v0 .. v6}, [Lcom/metamoji/un/draw2/jni/library/reshape/Recognition$Type;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 20
    new-instance v0, Lcom/metamoji/un/draw2/jni/library/reshape/Recognition$Type;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/metamoji/un/draw2/jni/library/reshape/Recognition$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/un/draw2/jni/library/reshape/Recognition$Type;->NONE:Lcom/metamoji/un/draw2/jni/library/reshape/Recognition$Type;

    .line 21
    new-instance v0, Lcom/metamoji/un/draw2/jni/library/reshape/Recognition$Type;

    const-string v1, "LINE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/metamoji/un/draw2/jni/library/reshape/Recognition$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/un/draw2/jni/library/reshape/Recognition$Type;->LINE:Lcom/metamoji/un/draw2/jni/library/reshape/Recognition$Type;

    .line 22
    new-instance v0, Lcom/metamoji/un/draw2/jni/library/reshape/Recognition$Type;

    const-string v1, "CIRCLE"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/metamoji/un/draw2/jni/library/reshape/Recognition$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/un/draw2/jni/library/reshape/Recognition$Type;->CIRCLE:Lcom/metamoji/un/draw2/jni/library/reshape/Recognition$Type;

    .line 23
    new-instance v0, Lcom/metamoji/un/draw2/jni/library/reshape/Recognition$Type;

    const-string v1, "ELLIPSE"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/metamoji/un/draw2/jni/library/reshape/Recognition$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/un/draw2/jni/library/reshape/Recognition$Type;->ELLIPSE:Lcom/metamoji/un/draw2/jni/library/reshape/Recognition$Type;

    .line 24
    new-instance v0, Lcom/metamoji/un/draw2/jni/library/reshape/Recognition$Type;

    const-string v1, "RECTANGLE"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/metamoji/un/draw2/jni/library/reshape/Recognition$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/un/draw2/jni/library/reshape/Recognition$Type;->RECTANGLE:Lcom/metamoji/un/draw2/jni/library/reshape/Recognition$Type;

    .line 25
    new-instance v0, Lcom/metamoji/un/draw2/jni/library/reshape/Recognition$Type;

    const-string v1, "DIAMOND"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/metamoji/un/draw2/jni/library/reshape/Recognition$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/un/draw2/jni/library/reshape/Recognition$Type;->DIAMOND:Lcom/metamoji/un/draw2/jni/library/reshape/Recognition$Type;

    .line 26
    new-instance v0, Lcom/metamoji/un/draw2/jni/library/reshape/Recognition$Type;

    const-string v1, "QUADRATIC"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/metamoji/un/draw2/jni/library/reshape/Recognition$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/un/draw2/jni/library/reshape/Recognition$Type;->QUADRATIC:Lcom/metamoji/un/draw2/jni/library/reshape/Recognition$Type;

    .line 19
    invoke-static {}, Lcom/metamoji/un/draw2/jni/library/reshape/Recognition$Type;->$values()[Lcom/metamoji/un/draw2/jni/library/reshape/Recognition$Type;

    move-result-object v0

    sput-object v0, Lcom/metamoji/un/draw2/jni/library/reshape/Recognition$Type;->$VALUES:[Lcom/metamoji/un/draw2/jni/library/reshape/Recognition$Type;

    .line 29
    invoke-static {}, Lcom/metamoji/un/draw2/jni/library/reshape/Recognition$Type;->values()[Lcom/metamoji/un/draw2/jni/library/reshape/Recognition$Type;

    move-result-object v0

    sput-object v0, Lcom/metamoji/un/draw2/jni/library/reshape/Recognition$Type;->values:[Lcom/metamoji/un/draw2/jni/library/reshape/Recognition$Type;

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

    .line 19
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static get(I)Lcom/metamoji/un/draw2/jni/library/reshape/Recognition$Type;
    .locals 2

    if-ltz p0, :cond_0

    .line 31
    sget-object v0, Lcom/metamoji/un/draw2/jni/library/reshape/Recognition$Type;->values:[Lcom/metamoji/un/draw2/jni/library/reshape/Recognition$Type;

    array-length v1, v0

    if-ge p0, v1, :cond_0

    aget-object p0, v0, p0

    return-object p0

    :cond_0
    sget-object p0, Lcom/metamoji/un/draw2/jni/library/reshape/Recognition$Type;->NONE:Lcom/metamoji/un/draw2/jni/library/reshape/Recognition$Type;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/metamoji/un/draw2/jni/library/reshape/Recognition$Type;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 19
    const-class v0, Lcom/metamoji/un/draw2/jni/library/reshape/Recognition$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/metamoji/un/draw2/jni/library/reshape/Recognition$Type;

    return-object p0
.end method

.method public static values()[Lcom/metamoji/un/draw2/jni/library/reshape/Recognition$Type;
    .locals 1

    .line 19
    sget-object v0, Lcom/metamoji/un/draw2/jni/library/reshape/Recognition$Type;->$VALUES:[Lcom/metamoji/un/draw2/jni/library/reshape/Recognition$Type;

    invoke-virtual {v0}, [Lcom/metamoji/un/draw2/jni/library/reshape/Recognition$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/metamoji/un/draw2/jni/library/reshape/Recognition$Type;

    return-object v0
.end method
