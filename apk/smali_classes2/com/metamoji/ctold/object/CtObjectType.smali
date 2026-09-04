.class public final enum Lcom/metamoji/ctold/object/CtObjectType;
.super Ljava/lang/Enum;
.source "CtObjectType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/metamoji/ctold/object/CtObjectType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/metamoji/ctold/object/CtObjectType;

.field public static final enum CT_OBJTYPE_ELEM:Lcom/metamoji/ctold/object/CtObjectType;

.field public static final enum CT_OBJTYPE_EVENT:Lcom/metamoji/ctold/object/CtObjectType;

.field public static final enum CT_OBJTYPE_GROUP:Lcom/metamoji/ctold/object/CtObjectType;

.field public static final enum CT_OBJTYPE_NOTE:Lcom/metamoji/ctold/object/CtObjectType;

.field public static final enum CT_OBJTYPE_PAGE:Lcom/metamoji/ctold/object/CtObjectType;

.field public static final enum CT_OBJTYPE_UNIT:Lcom/metamoji/ctold/object/CtObjectType;

.field public static final enum CT_OBJTYPE_UNKNOWN:Lcom/metamoji/ctold/object/CtObjectType;

.field public static final enum CT_OBJTYPE_VIDEO:Lcom/metamoji/ctold/object/CtObjectType;

.field public static final enum CT_OBJTYPE_VOICE:Lcom/metamoji/ctold/object/CtObjectType;

.field private static final TYPE_MAP:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/metamoji/ctold/object/CtObjectType;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private value:I


# direct methods
.method private static synthetic $values()[Lcom/metamoji/ctold/object/CtObjectType;
    .locals 9

    .line 18
    sget-object v0, Lcom/metamoji/ctold/object/CtObjectType;->CT_OBJTYPE_UNKNOWN:Lcom/metamoji/ctold/object/CtObjectType;

    sget-object v1, Lcom/metamoji/ctold/object/CtObjectType;->CT_OBJTYPE_NOTE:Lcom/metamoji/ctold/object/CtObjectType;

    sget-object v2, Lcom/metamoji/ctold/object/CtObjectType;->CT_OBJTYPE_PAGE:Lcom/metamoji/ctold/object/CtObjectType;

    sget-object v3, Lcom/metamoji/ctold/object/CtObjectType;->CT_OBJTYPE_UNIT:Lcom/metamoji/ctold/object/CtObjectType;

    sget-object v4, Lcom/metamoji/ctold/object/CtObjectType;->CT_OBJTYPE_ELEM:Lcom/metamoji/ctold/object/CtObjectType;

    sget-object v5, Lcom/metamoji/ctold/object/CtObjectType;->CT_OBJTYPE_VOICE:Lcom/metamoji/ctold/object/CtObjectType;

    sget-object v6, Lcom/metamoji/ctold/object/CtObjectType;->CT_OBJTYPE_EVENT:Lcom/metamoji/ctold/object/CtObjectType;

    sget-object v7, Lcom/metamoji/ctold/object/CtObjectType;->CT_OBJTYPE_VIDEO:Lcom/metamoji/ctold/object/CtObjectType;

    sget-object v8, Lcom/metamoji/ctold/object/CtObjectType;->CT_OBJTYPE_GROUP:Lcom/metamoji/ctold/object/CtObjectType;

    filled-new-array/range {v0 .. v8}, [Lcom/metamoji/ctold/object/CtObjectType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 20
    new-instance v0, Lcom/metamoji/ctold/object/CtObjectType;

    const-string v1, "CT_OBJTYPE_UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/metamoji/ctold/object/CtObjectType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/metamoji/ctold/object/CtObjectType;->CT_OBJTYPE_UNKNOWN:Lcom/metamoji/ctold/object/CtObjectType;

    .line 21
    new-instance v0, Lcom/metamoji/ctold/object/CtObjectType;

    const-string v1, "CT_OBJTYPE_NOTE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Lcom/metamoji/ctold/object/CtObjectType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/metamoji/ctold/object/CtObjectType;->CT_OBJTYPE_NOTE:Lcom/metamoji/ctold/object/CtObjectType;

    .line 22
    new-instance v0, Lcom/metamoji/ctold/object/CtObjectType;

    const-string v1, "CT_OBJTYPE_PAGE"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v2}, Lcom/metamoji/ctold/object/CtObjectType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/metamoji/ctold/object/CtObjectType;->CT_OBJTYPE_PAGE:Lcom/metamoji/ctold/object/CtObjectType;

    .line 23
    new-instance v0, Lcom/metamoji/ctold/object/CtObjectType;

    const-string v1, "CT_OBJTYPE_UNIT"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, v2}, Lcom/metamoji/ctold/object/CtObjectType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/metamoji/ctold/object/CtObjectType;->CT_OBJTYPE_UNIT:Lcom/metamoji/ctold/object/CtObjectType;

    .line 24
    new-instance v0, Lcom/metamoji/ctold/object/CtObjectType;

    const-string v1, "CT_OBJTYPE_ELEM"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2, v2}, Lcom/metamoji/ctold/object/CtObjectType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/metamoji/ctold/object/CtObjectType;->CT_OBJTYPE_ELEM:Lcom/metamoji/ctold/object/CtObjectType;

    .line 25
    new-instance v0, Lcom/metamoji/ctold/object/CtObjectType;

    const-string v1, "CT_OBJTYPE_VOICE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2, v2}, Lcom/metamoji/ctold/object/CtObjectType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/metamoji/ctold/object/CtObjectType;->CT_OBJTYPE_VOICE:Lcom/metamoji/ctold/object/CtObjectType;

    .line 26
    new-instance v0, Lcom/metamoji/ctold/object/CtObjectType;

    const-string v1, "CT_OBJTYPE_EVENT"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2, v2}, Lcom/metamoji/ctold/object/CtObjectType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/metamoji/ctold/object/CtObjectType;->CT_OBJTYPE_EVENT:Lcom/metamoji/ctold/object/CtObjectType;

    .line 27
    new-instance v0, Lcom/metamoji/ctold/object/CtObjectType;

    const-string v1, "CT_OBJTYPE_VIDEO"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2, v2}, Lcom/metamoji/ctold/object/CtObjectType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/metamoji/ctold/object/CtObjectType;->CT_OBJTYPE_VIDEO:Lcom/metamoji/ctold/object/CtObjectType;

    .line 28
    new-instance v0, Lcom/metamoji/ctold/object/CtObjectType;

    const-string v1, "CT_OBJTYPE_GROUP"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2, v2}, Lcom/metamoji/ctold/object/CtObjectType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/metamoji/ctold/object/CtObjectType;->CT_OBJTYPE_GROUP:Lcom/metamoji/ctold/object/CtObjectType;

    .line 18
    invoke-static {}, Lcom/metamoji/ctold/object/CtObjectType;->$values()[Lcom/metamoji/ctold/object/CtObjectType;

    move-result-object v0

    sput-object v0, Lcom/metamoji/ctold/object/CtObjectType;->$VALUES:[Lcom/metamoji/ctold/object/CtObjectType;

    .line 30
    new-instance v0, Lcom/metamoji/ctold/object/CtObjectType$1;

    invoke-direct {v0}, Lcom/metamoji/ctold/object/CtObjectType$1;-><init>()V

    sput-object v0, Lcom/metamoji/ctold/object/CtObjectType;->TYPE_MAP:Landroid/util/SparseArray;

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

    .line 39
    iput p3, p0, Lcom/metamoji/ctold/object/CtObjectType;->value:I

    return-void
.end method

.method public static enumOf(I)Lcom/metamoji/ctold/object/CtObjectType;
    .locals 3

    .line 47
    sget-object v0, Lcom/metamoji/ctold/object/CtObjectType;->TYPE_MAP:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/metamoji/ctold/object/CtObjectType;

    if-eqz v0, :cond_0

    return-object v0

    .line 49
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

.method public static valueOf(Ljava/lang/String;)Lcom/metamoji/ctold/object/CtObjectType;
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
    const-class v0, Lcom/metamoji/ctold/object/CtObjectType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/metamoji/ctold/object/CtObjectType;

    return-object p0
.end method

.method public static values()[Lcom/metamoji/ctold/object/CtObjectType;
    .locals 1

    .line 18
    sget-object v0, Lcom/metamoji/ctold/object/CtObjectType;->$VALUES:[Lcom/metamoji/ctold/object/CtObjectType;

    invoke-virtual {v0}, [Lcom/metamoji/ctold/object/CtObjectType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/metamoji/ctold/object/CtObjectType;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .line 43
    iget v0, p0, Lcom/metamoji/ctold/object/CtObjectType;->value:I

    return v0
.end method
