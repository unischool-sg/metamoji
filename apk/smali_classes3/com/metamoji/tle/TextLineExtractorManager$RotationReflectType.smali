.class final enum Lcom/metamoji/tle/TextLineExtractorManager$RotationReflectType;
.super Ljava/lang/Enum;
.source "TextLineExtractorManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/tle/TextLineExtractorManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "RotationReflectType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/metamoji/tle/TextLineExtractorManager$RotationReflectType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/metamoji/tle/TextLineExtractorManager$RotationReflectType;

.field public static final enum Large:Lcom/metamoji/tle/TextLineExtractorManager$RotationReflectType;

.field public static final enum None:Lcom/metamoji/tle/TextLineExtractorManager$RotationReflectType;

.field public static final enum Normal:Lcom/metamoji/tle/TextLineExtractorManager$RotationReflectType;

.field public static final enum Small:Lcom/metamoji/tle/TextLineExtractorManager$RotationReflectType;


# instance fields
.field private _value:I


# direct methods
.method private static synthetic $values()[Lcom/metamoji/tle/TextLineExtractorManager$RotationReflectType;
    .locals 4

    .line 209
    sget-object v0, Lcom/metamoji/tle/TextLineExtractorManager$RotationReflectType;->None:Lcom/metamoji/tle/TextLineExtractorManager$RotationReflectType;

    sget-object v1, Lcom/metamoji/tle/TextLineExtractorManager$RotationReflectType;->Small:Lcom/metamoji/tle/TextLineExtractorManager$RotationReflectType;

    sget-object v2, Lcom/metamoji/tle/TextLineExtractorManager$RotationReflectType;->Large:Lcom/metamoji/tle/TextLineExtractorManager$RotationReflectType;

    sget-object v3, Lcom/metamoji/tle/TextLineExtractorManager$RotationReflectType;->Normal:Lcom/metamoji/tle/TextLineExtractorManager$RotationReflectType;

    filled-new-array {v0, v1, v2, v3}, [Lcom/metamoji/tle/TextLineExtractorManager$RotationReflectType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 210
    new-instance v0, Lcom/metamoji/tle/TextLineExtractorManager$RotationReflectType;

    const-string v1, "None"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/metamoji/tle/TextLineExtractorManager$RotationReflectType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/metamoji/tle/TextLineExtractorManager$RotationReflectType;->None:Lcom/metamoji/tle/TextLineExtractorManager$RotationReflectType;

    .line 211
    new-instance v0, Lcom/metamoji/tle/TextLineExtractorManager$RotationReflectType;

    const-string v1, "Small"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Lcom/metamoji/tle/TextLineExtractorManager$RotationReflectType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/metamoji/tle/TextLineExtractorManager$RotationReflectType;->Small:Lcom/metamoji/tle/TextLineExtractorManager$RotationReflectType;

    .line 212
    new-instance v0, Lcom/metamoji/tle/TextLineExtractorManager$RotationReflectType;

    const-string v1, "Large"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v2}, Lcom/metamoji/tle/TextLineExtractorManager$RotationReflectType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/metamoji/tle/TextLineExtractorManager$RotationReflectType;->Large:Lcom/metamoji/tle/TextLineExtractorManager$RotationReflectType;

    .line 213
    new-instance v0, Lcom/metamoji/tle/TextLineExtractorManager$RotationReflectType;

    const-string v1, "Normal"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, v2}, Lcom/metamoji/tle/TextLineExtractorManager$RotationReflectType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/metamoji/tle/TextLineExtractorManager$RotationReflectType;->Normal:Lcom/metamoji/tle/TextLineExtractorManager$RotationReflectType;

    .line 209
    invoke-static {}, Lcom/metamoji/tle/TextLineExtractorManager$RotationReflectType;->$values()[Lcom/metamoji/tle/TextLineExtractorManager$RotationReflectType;

    move-result-object v0

    sput-object v0, Lcom/metamoji/tle/TextLineExtractorManager$RotationReflectType;->$VALUES:[Lcom/metamoji/tle/TextLineExtractorManager$RotationReflectType;

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

    .line 226
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 227
    iput p3, p0, Lcom/metamoji/tle/TextLineExtractorManager$RotationReflectType;->_value:I

    return-void
.end method

.method public static fromInt(I)Lcom/metamoji/tle/TextLineExtractorManager$RotationReflectType;
    .locals 5

    .line 234
    invoke-static {}, Lcom/metamoji/tle/TextLineExtractorManager$RotationReflectType;->values()[Lcom/metamoji/tle/TextLineExtractorManager$RotationReflectType;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 235
    invoke-virtual {v3}, Lcom/metamoji/tle/TextLineExtractorManager$RotationReflectType;->toInt()I

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

.method public static valueOf(Ljava/lang/String;)Lcom/metamoji/tle/TextLineExtractorManager$RotationReflectType;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 209
    const-class v0, Lcom/metamoji/tle/TextLineExtractorManager$RotationReflectType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/metamoji/tle/TextLineExtractorManager$RotationReflectType;

    return-object p0
.end method

.method public static values()[Lcom/metamoji/tle/TextLineExtractorManager$RotationReflectType;
    .locals 1

    .line 209
    sget-object v0, Lcom/metamoji/tle/TextLineExtractorManager$RotationReflectType;->$VALUES:[Lcom/metamoji/tle/TextLineExtractorManager$RotationReflectType;

    invoke-virtual {v0}, [Lcom/metamoji/tle/TextLineExtractorManager$RotationReflectType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/metamoji/tle/TextLineExtractorManager$RotationReflectType;

    return-object v0
.end method


# virtual methods
.method public toInt()I
    .locals 1

    .line 231
    iget v0, p0, Lcom/metamoji/tle/TextLineExtractorManager$RotationReflectType;->_value:I

    return v0
.end method
