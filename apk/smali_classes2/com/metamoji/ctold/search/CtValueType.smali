.class public final enum Lcom/metamoji/ctold/search/CtValueType;
.super Ljava/lang/Enum;
.source "CtValueType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/metamoji/ctold/search/CtValueType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/metamoji/ctold/search/CtValueType;

.field public static final enum CT_VALUE_TYPE_ABSOLUTE:Lcom/metamoji/ctold/search/CtValueType;

.field public static final enum CT_VALUE_TYPE_RELATIVE_DAY:Lcom/metamoji/ctold/search/CtValueType;

.field public static final enum CT_VALUE_TYPE_RELATIVE_MONTH:Lcom/metamoji/ctold/search/CtValueType;

.field public static final enum CT_VALUE_TYPE_RELATIVE_WEEK:Lcom/metamoji/ctold/search/CtValueType;

.field public static final enum CT_VALUE_TYPE_RELATIVE_YEAR:Lcom/metamoji/ctold/search/CtValueType;

.field private static final TYPE_MAP:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/metamoji/ctold/search/CtValueType;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private value:I


# direct methods
.method private static synthetic $values()[Lcom/metamoji/ctold/search/CtValueType;
    .locals 5

    .line 19
    sget-object v0, Lcom/metamoji/ctold/search/CtValueType;->CT_VALUE_TYPE_ABSOLUTE:Lcom/metamoji/ctold/search/CtValueType;

    sget-object v1, Lcom/metamoji/ctold/search/CtValueType;->CT_VALUE_TYPE_RELATIVE_DAY:Lcom/metamoji/ctold/search/CtValueType;

    sget-object v2, Lcom/metamoji/ctold/search/CtValueType;->CT_VALUE_TYPE_RELATIVE_WEEK:Lcom/metamoji/ctold/search/CtValueType;

    sget-object v3, Lcom/metamoji/ctold/search/CtValueType;->CT_VALUE_TYPE_RELATIVE_MONTH:Lcom/metamoji/ctold/search/CtValueType;

    sget-object v4, Lcom/metamoji/ctold/search/CtValueType;->CT_VALUE_TYPE_RELATIVE_YEAR:Lcom/metamoji/ctold/search/CtValueType;

    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/metamoji/ctold/search/CtValueType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 20
    new-instance v0, Lcom/metamoji/ctold/search/CtValueType;

    const-string v1, "CT_VALUE_TYPE_ABSOLUTE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/metamoji/ctold/search/CtValueType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/metamoji/ctold/search/CtValueType;->CT_VALUE_TYPE_ABSOLUTE:Lcom/metamoji/ctold/search/CtValueType;

    .line 21
    new-instance v0, Lcom/metamoji/ctold/search/CtValueType;

    const-string v1, "CT_VALUE_TYPE_RELATIVE_DAY"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Lcom/metamoji/ctold/search/CtValueType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/metamoji/ctold/search/CtValueType;->CT_VALUE_TYPE_RELATIVE_DAY:Lcom/metamoji/ctold/search/CtValueType;

    .line 22
    new-instance v0, Lcom/metamoji/ctold/search/CtValueType;

    const-string v1, "CT_VALUE_TYPE_RELATIVE_WEEK"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v2}, Lcom/metamoji/ctold/search/CtValueType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/metamoji/ctold/search/CtValueType;->CT_VALUE_TYPE_RELATIVE_WEEK:Lcom/metamoji/ctold/search/CtValueType;

    .line 23
    new-instance v0, Lcom/metamoji/ctold/search/CtValueType;

    const-string v1, "CT_VALUE_TYPE_RELATIVE_MONTH"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, v2}, Lcom/metamoji/ctold/search/CtValueType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/metamoji/ctold/search/CtValueType;->CT_VALUE_TYPE_RELATIVE_MONTH:Lcom/metamoji/ctold/search/CtValueType;

    .line 24
    new-instance v0, Lcom/metamoji/ctold/search/CtValueType;

    const-string v1, "CT_VALUE_TYPE_RELATIVE_YEAR"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2, v2}, Lcom/metamoji/ctold/search/CtValueType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/metamoji/ctold/search/CtValueType;->CT_VALUE_TYPE_RELATIVE_YEAR:Lcom/metamoji/ctold/search/CtValueType;

    .line 19
    invoke-static {}, Lcom/metamoji/ctold/search/CtValueType;->$values()[Lcom/metamoji/ctold/search/CtValueType;

    move-result-object v0

    sput-object v0, Lcom/metamoji/ctold/search/CtValueType;->$VALUES:[Lcom/metamoji/ctold/search/CtValueType;

    .line 26
    new-instance v0, Lcom/metamoji/ctold/search/CtValueType$1;

    invoke-direct {v0}, Lcom/metamoji/ctold/search/CtValueType$1;-><init>()V

    sput-object v0, Lcom/metamoji/ctold/search/CtValueType;->TYPE_MAP:Landroid/util/SparseArray;

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
    iput p3, p0, Lcom/metamoji/ctold/search/CtValueType;->value:I

    return-void
.end method

.method public static enumOf(I)Lcom/metamoji/ctold/search/CtValueType;
    .locals 3

    .line 43
    sget-object v0, Lcom/metamoji/ctold/search/CtValueType;->TYPE_MAP:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/metamoji/ctold/search/CtValueType;

    if-eqz v0, :cond_0

    return-object v0

    .line 45
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v2, "invalid enum value: %d"

    invoke-static {v1, v2, p0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/metamoji/ctold/search/CtValueType;
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
    const-class v0, Lcom/metamoji/ctold/search/CtValueType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/metamoji/ctold/search/CtValueType;

    return-object p0
.end method

.method public static values()[Lcom/metamoji/ctold/search/CtValueType;
    .locals 1

    .line 19
    sget-object v0, Lcom/metamoji/ctold/search/CtValueType;->$VALUES:[Lcom/metamoji/ctold/search/CtValueType;

    invoke-virtual {v0}, [Lcom/metamoji/ctold/search/CtValueType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/metamoji/ctold/search/CtValueType;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .line 39
    iget v0, p0, Lcom/metamoji/ctold/search/CtValueType;->value:I

    return v0
.end method
