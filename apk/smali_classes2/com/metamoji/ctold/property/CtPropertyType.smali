.class public final enum Lcom/metamoji/ctold/property/CtPropertyType;
.super Ljava/lang/Enum;
.source "CtPropertyType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/metamoji/ctold/property/CtPropertyType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/metamoji/ctold/property/CtPropertyType;

.field public static final enum CT_PROPTYPE_BOOL:Lcom/metamoji/ctold/property/CtPropertyType;

.field public static final enum CT_PROPTYPE_DATE:Lcom/metamoji/ctold/property/CtPropertyType;

.field public static final enum CT_PROPTYPE_DATETIME:Lcom/metamoji/ctold/property/CtPropertyType;

.field public static final enum CT_PROPTYPE_INTEGER:Lcom/metamoji/ctold/property/CtPropertyType;

.field public static final enum CT_PROPTYPE_NUMBER:Lcom/metamoji/ctold/property/CtPropertyType;

.field public static final enum CT_PROPTYPE_STRING:Lcom/metamoji/ctold/property/CtPropertyType;

.field public static final enum CT_PROPTYPE_UNKNOWN:Lcom/metamoji/ctold/property/CtPropertyType;

.field private static final TYPE_MAP:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/metamoji/ctold/property/CtPropertyType;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private value:I


# direct methods
.method private static synthetic $values()[Lcom/metamoji/ctold/property/CtPropertyType;
    .locals 7

    .line 18
    sget-object v0, Lcom/metamoji/ctold/property/CtPropertyType;->CT_PROPTYPE_UNKNOWN:Lcom/metamoji/ctold/property/CtPropertyType;

    sget-object v1, Lcom/metamoji/ctold/property/CtPropertyType;->CT_PROPTYPE_BOOL:Lcom/metamoji/ctold/property/CtPropertyType;

    sget-object v2, Lcom/metamoji/ctold/property/CtPropertyType;->CT_PROPTYPE_NUMBER:Lcom/metamoji/ctold/property/CtPropertyType;

    sget-object v3, Lcom/metamoji/ctold/property/CtPropertyType;->CT_PROPTYPE_INTEGER:Lcom/metamoji/ctold/property/CtPropertyType;

    sget-object v4, Lcom/metamoji/ctold/property/CtPropertyType;->CT_PROPTYPE_STRING:Lcom/metamoji/ctold/property/CtPropertyType;

    sget-object v5, Lcom/metamoji/ctold/property/CtPropertyType;->CT_PROPTYPE_DATE:Lcom/metamoji/ctold/property/CtPropertyType;

    sget-object v6, Lcom/metamoji/ctold/property/CtPropertyType;->CT_PROPTYPE_DATETIME:Lcom/metamoji/ctold/property/CtPropertyType;

    filled-new-array/range {v0 .. v6}, [Lcom/metamoji/ctold/property/CtPropertyType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 20
    new-instance v0, Lcom/metamoji/ctold/property/CtPropertyType;

    const-string v1, "CT_PROPTYPE_UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/metamoji/ctold/property/CtPropertyType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/metamoji/ctold/property/CtPropertyType;->CT_PROPTYPE_UNKNOWN:Lcom/metamoji/ctold/property/CtPropertyType;

    .line 21
    new-instance v0, Lcom/metamoji/ctold/property/CtPropertyType;

    const-string v1, "CT_PROPTYPE_BOOL"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Lcom/metamoji/ctold/property/CtPropertyType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/metamoji/ctold/property/CtPropertyType;->CT_PROPTYPE_BOOL:Lcom/metamoji/ctold/property/CtPropertyType;

    .line 22
    new-instance v0, Lcom/metamoji/ctold/property/CtPropertyType;

    const-string v1, "CT_PROPTYPE_NUMBER"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v2}, Lcom/metamoji/ctold/property/CtPropertyType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/metamoji/ctold/property/CtPropertyType;->CT_PROPTYPE_NUMBER:Lcom/metamoji/ctold/property/CtPropertyType;

    .line 23
    new-instance v0, Lcom/metamoji/ctold/property/CtPropertyType;

    const-string v1, "CT_PROPTYPE_INTEGER"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, v2}, Lcom/metamoji/ctold/property/CtPropertyType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/metamoji/ctold/property/CtPropertyType;->CT_PROPTYPE_INTEGER:Lcom/metamoji/ctold/property/CtPropertyType;

    .line 24
    new-instance v0, Lcom/metamoji/ctold/property/CtPropertyType;

    const-string v1, "CT_PROPTYPE_STRING"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2, v2}, Lcom/metamoji/ctold/property/CtPropertyType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/metamoji/ctold/property/CtPropertyType;->CT_PROPTYPE_STRING:Lcom/metamoji/ctold/property/CtPropertyType;

    .line 25
    new-instance v0, Lcom/metamoji/ctold/property/CtPropertyType;

    const-string v1, "CT_PROPTYPE_DATE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2, v2}, Lcom/metamoji/ctold/property/CtPropertyType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/metamoji/ctold/property/CtPropertyType;->CT_PROPTYPE_DATE:Lcom/metamoji/ctold/property/CtPropertyType;

    .line 27
    new-instance v0, Lcom/metamoji/ctold/property/CtPropertyType;

    const/4 v1, 0x6

    const/4 v2, 0x7

    const-string v3, "CT_PROPTYPE_DATETIME"

    invoke-direct {v0, v3, v1, v2}, Lcom/metamoji/ctold/property/CtPropertyType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/metamoji/ctold/property/CtPropertyType;->CT_PROPTYPE_DATETIME:Lcom/metamoji/ctold/property/CtPropertyType;

    .line 18
    invoke-static {}, Lcom/metamoji/ctold/property/CtPropertyType;->$values()[Lcom/metamoji/ctold/property/CtPropertyType;

    move-result-object v0

    sput-object v0, Lcom/metamoji/ctold/property/CtPropertyType;->$VALUES:[Lcom/metamoji/ctold/property/CtPropertyType;

    .line 29
    new-instance v0, Lcom/metamoji/ctold/property/CtPropertyType$1;

    invoke-direct {v0}, Lcom/metamoji/ctold/property/CtPropertyType$1;-><init>()V

    sput-object v0, Lcom/metamoji/ctold/property/CtPropertyType;->TYPE_MAP:Landroid/util/SparseArray;

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

    .line 37
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 38
    iput p3, p0, Lcom/metamoji/ctold/property/CtPropertyType;->value:I

    return-void
.end method

.method public static enumOf(I)Lcom/metamoji/ctold/property/CtPropertyType;
    .locals 3

    .line 46
    sget-object v0, Lcom/metamoji/ctold/property/CtPropertyType;->TYPE_MAP:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/metamoji/ctold/property/CtPropertyType;

    if-eqz v0, :cond_0

    return-object v0

    .line 48
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

.method public static valueOf(Ljava/lang/String;)Lcom/metamoji/ctold/property/CtPropertyType;
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
    const-class v0, Lcom/metamoji/ctold/property/CtPropertyType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/metamoji/ctold/property/CtPropertyType;

    return-object p0
.end method

.method public static values()[Lcom/metamoji/ctold/property/CtPropertyType;
    .locals 1

    .line 18
    sget-object v0, Lcom/metamoji/ctold/property/CtPropertyType;->$VALUES:[Lcom/metamoji/ctold/property/CtPropertyType;

    invoke-virtual {v0}, [Lcom/metamoji/ctold/property/CtPropertyType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/metamoji/ctold/property/CtPropertyType;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .line 42
    iget v0, p0, Lcom/metamoji/ctold/property/CtPropertyType;->value:I

    return v0
.end method
