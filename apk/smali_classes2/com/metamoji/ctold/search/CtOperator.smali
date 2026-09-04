.class public final enum Lcom/metamoji/ctold/search/CtOperator;
.super Ljava/lang/Enum;
.source "CtOperator.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/metamoji/ctold/search/CtOperator;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/metamoji/ctold/search/CtOperator;

.field public static final enum CT_OPERATOR_CONTAINS:Lcom/metamoji/ctold/search/CtOperator;

.field public static final enum CT_OPERATOR_ENDS_WITH:Lcom/metamoji/ctold/search/CtOperator;

.field public static final enum CT_OPERATOR_EQ:Lcom/metamoji/ctold/search/CtOperator;

.field public static final enum CT_OPERATOR_GT:Lcom/metamoji/ctold/search/CtOperator;

.field public static final enum CT_OPERATOR_GTE:Lcom/metamoji/ctold/search/CtOperator;

.field public static final enum CT_OPERATOR_LT:Lcom/metamoji/ctold/search/CtOperator;

.field public static final enum CT_OPERATOR_LTE:Lcom/metamoji/ctold/search/CtOperator;

.field public static final enum CT_OPERATOR_NOT_CONTAINS:Lcom/metamoji/ctold/search/CtOperator;

.field public static final enum CT_OPERATOR_NOT_EQ:Lcom/metamoji/ctold/search/CtOperator;

.field public static final enum CT_OPERATOR_STARTS_WITH:Lcom/metamoji/ctold/search/CtOperator;

.field public static final enum CT_OPERATOR_UNKNOWN:Lcom/metamoji/ctold/search/CtOperator;

.field private static final TYPE_MAP:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/metamoji/ctold/search/CtOperator;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private value:I


# direct methods
.method private static synthetic $values()[Lcom/metamoji/ctold/search/CtOperator;
    .locals 11

    .line 18
    sget-object v0, Lcom/metamoji/ctold/search/CtOperator;->CT_OPERATOR_UNKNOWN:Lcom/metamoji/ctold/search/CtOperator;

    sget-object v1, Lcom/metamoji/ctold/search/CtOperator;->CT_OPERATOR_EQ:Lcom/metamoji/ctold/search/CtOperator;

    sget-object v2, Lcom/metamoji/ctold/search/CtOperator;->CT_OPERATOR_NOT_EQ:Lcom/metamoji/ctold/search/CtOperator;

    sget-object v3, Lcom/metamoji/ctold/search/CtOperator;->CT_OPERATOR_GT:Lcom/metamoji/ctold/search/CtOperator;

    sget-object v4, Lcom/metamoji/ctold/search/CtOperator;->CT_OPERATOR_GTE:Lcom/metamoji/ctold/search/CtOperator;

    sget-object v5, Lcom/metamoji/ctold/search/CtOperator;->CT_OPERATOR_LT:Lcom/metamoji/ctold/search/CtOperator;

    sget-object v6, Lcom/metamoji/ctold/search/CtOperator;->CT_OPERATOR_LTE:Lcom/metamoji/ctold/search/CtOperator;

    sget-object v7, Lcom/metamoji/ctold/search/CtOperator;->CT_OPERATOR_STARTS_WITH:Lcom/metamoji/ctold/search/CtOperator;

    sget-object v8, Lcom/metamoji/ctold/search/CtOperator;->CT_OPERATOR_ENDS_WITH:Lcom/metamoji/ctold/search/CtOperator;

    sget-object v9, Lcom/metamoji/ctold/search/CtOperator;->CT_OPERATOR_CONTAINS:Lcom/metamoji/ctold/search/CtOperator;

    sget-object v10, Lcom/metamoji/ctold/search/CtOperator;->CT_OPERATOR_NOT_CONTAINS:Lcom/metamoji/ctold/search/CtOperator;

    filled-new-array/range {v0 .. v10}, [Lcom/metamoji/ctold/search/CtOperator;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 20
    new-instance v0, Lcom/metamoji/ctold/search/CtOperator;

    const-string v1, "CT_OPERATOR_UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/metamoji/ctold/search/CtOperator;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/metamoji/ctold/search/CtOperator;->CT_OPERATOR_UNKNOWN:Lcom/metamoji/ctold/search/CtOperator;

    .line 22
    new-instance v0, Lcom/metamoji/ctold/search/CtOperator;

    const/4 v1, 0x1

    const/16 v2, 0x12d

    const-string v3, "CT_OPERATOR_EQ"

    invoke-direct {v0, v3, v1, v2}, Lcom/metamoji/ctold/search/CtOperator;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/metamoji/ctold/search/CtOperator;->CT_OPERATOR_EQ:Lcom/metamoji/ctold/search/CtOperator;

    .line 23
    new-instance v0, Lcom/metamoji/ctold/search/CtOperator;

    const/4 v1, 0x2

    const/16 v2, 0x12e

    const-string v3, "CT_OPERATOR_NOT_EQ"

    invoke-direct {v0, v3, v1, v2}, Lcom/metamoji/ctold/search/CtOperator;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/metamoji/ctold/search/CtOperator;->CT_OPERATOR_NOT_EQ:Lcom/metamoji/ctold/search/CtOperator;

    .line 25
    new-instance v0, Lcom/metamoji/ctold/search/CtOperator;

    const/4 v1, 0x3

    const/16 v2, 0x12f

    const-string v3, "CT_OPERATOR_GT"

    invoke-direct {v0, v3, v1, v2}, Lcom/metamoji/ctold/search/CtOperator;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/metamoji/ctold/search/CtOperator;->CT_OPERATOR_GT:Lcom/metamoji/ctold/search/CtOperator;

    .line 26
    new-instance v0, Lcom/metamoji/ctold/search/CtOperator;

    const/4 v1, 0x4

    const/16 v2, 0x130

    const-string v3, "CT_OPERATOR_GTE"

    invoke-direct {v0, v3, v1, v2}, Lcom/metamoji/ctold/search/CtOperator;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/metamoji/ctold/search/CtOperator;->CT_OPERATOR_GTE:Lcom/metamoji/ctold/search/CtOperator;

    .line 27
    new-instance v0, Lcom/metamoji/ctold/search/CtOperator;

    const/4 v1, 0x5

    const/16 v2, 0x131

    const-string v3, "CT_OPERATOR_LT"

    invoke-direct {v0, v3, v1, v2}, Lcom/metamoji/ctold/search/CtOperator;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/metamoji/ctold/search/CtOperator;->CT_OPERATOR_LT:Lcom/metamoji/ctold/search/CtOperator;

    .line 28
    new-instance v0, Lcom/metamoji/ctold/search/CtOperator;

    const/4 v1, 0x6

    const/16 v2, 0x132

    const-string v3, "CT_OPERATOR_LTE"

    invoke-direct {v0, v3, v1, v2}, Lcom/metamoji/ctold/search/CtOperator;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/metamoji/ctold/search/CtOperator;->CT_OPERATOR_LTE:Lcom/metamoji/ctold/search/CtOperator;

    .line 30
    new-instance v0, Lcom/metamoji/ctold/search/CtOperator;

    const/4 v1, 0x7

    const/16 v2, 0x133

    const-string v3, "CT_OPERATOR_STARTS_WITH"

    invoke-direct {v0, v3, v1, v2}, Lcom/metamoji/ctold/search/CtOperator;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/metamoji/ctold/search/CtOperator;->CT_OPERATOR_STARTS_WITH:Lcom/metamoji/ctold/search/CtOperator;

    .line 31
    new-instance v0, Lcom/metamoji/ctold/search/CtOperator;

    const/16 v1, 0x8

    const/16 v2, 0x134

    const-string v3, "CT_OPERATOR_ENDS_WITH"

    invoke-direct {v0, v3, v1, v2}, Lcom/metamoji/ctold/search/CtOperator;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/metamoji/ctold/search/CtOperator;->CT_OPERATOR_ENDS_WITH:Lcom/metamoji/ctold/search/CtOperator;

    .line 32
    new-instance v0, Lcom/metamoji/ctold/search/CtOperator;

    const/16 v1, 0x9

    const/16 v2, 0x135

    const-string v3, "CT_OPERATOR_CONTAINS"

    invoke-direct {v0, v3, v1, v2}, Lcom/metamoji/ctold/search/CtOperator;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/metamoji/ctold/search/CtOperator;->CT_OPERATOR_CONTAINS:Lcom/metamoji/ctold/search/CtOperator;

    .line 33
    new-instance v0, Lcom/metamoji/ctold/search/CtOperator;

    const/16 v1, 0xa

    const/16 v2, 0x136

    const-string v3, "CT_OPERATOR_NOT_CONTAINS"

    invoke-direct {v0, v3, v1, v2}, Lcom/metamoji/ctold/search/CtOperator;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/metamoji/ctold/search/CtOperator;->CT_OPERATOR_NOT_CONTAINS:Lcom/metamoji/ctold/search/CtOperator;

    .line 18
    invoke-static {}, Lcom/metamoji/ctold/search/CtOperator;->$values()[Lcom/metamoji/ctold/search/CtOperator;

    move-result-object v0

    sput-object v0, Lcom/metamoji/ctold/search/CtOperator;->$VALUES:[Lcom/metamoji/ctold/search/CtOperator;

    .line 35
    new-instance v0, Lcom/metamoji/ctold/search/CtOperator$1;

    invoke-direct {v0}, Lcom/metamoji/ctold/search/CtOperator$1;-><init>()V

    sput-object v0, Lcom/metamoji/ctold/search/CtOperator;->TYPE_MAP:Landroid/util/SparseArray;

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

    .line 43
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 44
    iput p3, p0, Lcom/metamoji/ctold/search/CtOperator;->value:I

    return-void
.end method

.method public static enumOf(I)Lcom/metamoji/ctold/search/CtOperator;
    .locals 3

    .line 52
    sget-object v0, Lcom/metamoji/ctold/search/CtOperator;->TYPE_MAP:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/metamoji/ctold/search/CtOperator;

    if-eqz v0, :cond_0

    return-object v0

    .line 54
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

.method public static valueOf(Ljava/lang/String;)Lcom/metamoji/ctold/search/CtOperator;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 18
    const-class v0, Lcom/metamoji/ctold/search/CtOperator;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/metamoji/ctold/search/CtOperator;

    return-object p0
.end method

.method public static values()[Lcom/metamoji/ctold/search/CtOperator;
    .locals 1

    .line 18
    sget-object v0, Lcom/metamoji/ctold/search/CtOperator;->$VALUES:[Lcom/metamoji/ctold/search/CtOperator;

    invoke-virtual {v0}, [Lcom/metamoji/ctold/search/CtOperator;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/metamoji/ctold/search/CtOperator;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .line 48
    iget v0, p0, Lcom/metamoji/ctold/search/CtOperator;->value:I

    return v0
.end method
