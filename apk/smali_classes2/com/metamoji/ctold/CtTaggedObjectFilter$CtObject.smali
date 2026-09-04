.class public final enum Lcom/metamoji/ctold/CtTaggedObjectFilter$CtObject;
.super Ljava/lang/Enum;
.source "CtTaggedObjectFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/ctold/CtTaggedObjectFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CtObject"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/metamoji/ctold/CtTaggedObjectFilter$CtObject;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/metamoji/ctold/CtTaggedObjectFilter$CtObject;

.field public static final enum CT_OBJECT_ELEM:Lcom/metamoji/ctold/CtTaggedObjectFilter$CtObject;

.field public static final enum CT_OBJECT_GROUP:Lcom/metamoji/ctold/CtTaggedObjectFilter$CtObject;

.field public static final enum CT_OBJECT_GROUP_MEMBER_ELEM:Lcom/metamoji/ctold/CtTaggedObjectFilter$CtObject;

.field public static final enum CT_OBJECT_GROUP_MEMBER_SHAPE:Lcom/metamoji/ctold/CtTaggedObjectFilter$CtObject;

.field public static final enum CT_OBJECT_GROUP_MEMBER_STROKE:Lcom/metamoji/ctold/CtTaggedObjectFilter$CtObject;

.field public static final enum CT_OBJECT_GROUP_MEMBER_UNIT:Lcom/metamoji/ctold/CtTaggedObjectFilter$CtObject;

.field public static final enum CT_OBJECT_MAXIMUM_GROUP:Lcom/metamoji/ctold/CtTaggedObjectFilter$CtObject;

.field public static final enum CT_OBJECT_PARAGRAPH:Lcom/metamoji/ctold/CtTaggedObjectFilter$CtObject;

.field public static final enum CT_OBJECT_SHAPE:Lcom/metamoji/ctold/CtTaggedObjectFilter$CtObject;

.field public static final enum CT_OBJECT_STROKE:Lcom/metamoji/ctold/CtTaggedObjectFilter$CtObject;

.field public static final enum CT_OBJECT_UNIT:Lcom/metamoji/ctold/CtTaggedObjectFilter$CtObject;

.field public static final enum CT_OBJECT_UNKNOWN:Lcom/metamoji/ctold/CtTaggedObjectFilter$CtObject;

.field private static final TYPE_MAP:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/metamoji/ctold/CtTaggedObjectFilter$CtObject;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private value:I


# direct methods
.method private static synthetic $values()[Lcom/metamoji/ctold/CtTaggedObjectFilter$CtObject;
    .locals 12

    .line 20
    sget-object v0, Lcom/metamoji/ctold/CtTaggedObjectFilter$CtObject;->CT_OBJECT_UNKNOWN:Lcom/metamoji/ctold/CtTaggedObjectFilter$CtObject;

    sget-object v1, Lcom/metamoji/ctold/CtTaggedObjectFilter$CtObject;->CT_OBJECT_ELEM:Lcom/metamoji/ctold/CtTaggedObjectFilter$CtObject;

    sget-object v2, Lcom/metamoji/ctold/CtTaggedObjectFilter$CtObject;->CT_OBJECT_STROKE:Lcom/metamoji/ctold/CtTaggedObjectFilter$CtObject;

    sget-object v3, Lcom/metamoji/ctold/CtTaggedObjectFilter$CtObject;->CT_OBJECT_SHAPE:Lcom/metamoji/ctold/CtTaggedObjectFilter$CtObject;

    sget-object v4, Lcom/metamoji/ctold/CtTaggedObjectFilter$CtObject;->CT_OBJECT_UNIT:Lcom/metamoji/ctold/CtTaggedObjectFilter$CtObject;

    sget-object v5, Lcom/metamoji/ctold/CtTaggedObjectFilter$CtObject;->CT_OBJECT_GROUP:Lcom/metamoji/ctold/CtTaggedObjectFilter$CtObject;

    sget-object v6, Lcom/metamoji/ctold/CtTaggedObjectFilter$CtObject;->CT_OBJECT_MAXIMUM_GROUP:Lcom/metamoji/ctold/CtTaggedObjectFilter$CtObject;

    sget-object v7, Lcom/metamoji/ctold/CtTaggedObjectFilter$CtObject;->CT_OBJECT_GROUP_MEMBER_ELEM:Lcom/metamoji/ctold/CtTaggedObjectFilter$CtObject;

    sget-object v8, Lcom/metamoji/ctold/CtTaggedObjectFilter$CtObject;->CT_OBJECT_GROUP_MEMBER_STROKE:Lcom/metamoji/ctold/CtTaggedObjectFilter$CtObject;

    sget-object v9, Lcom/metamoji/ctold/CtTaggedObjectFilter$CtObject;->CT_OBJECT_GROUP_MEMBER_SHAPE:Lcom/metamoji/ctold/CtTaggedObjectFilter$CtObject;

    sget-object v10, Lcom/metamoji/ctold/CtTaggedObjectFilter$CtObject;->CT_OBJECT_GROUP_MEMBER_UNIT:Lcom/metamoji/ctold/CtTaggedObjectFilter$CtObject;

    sget-object v11, Lcom/metamoji/ctold/CtTaggedObjectFilter$CtObject;->CT_OBJECT_PARAGRAPH:Lcom/metamoji/ctold/CtTaggedObjectFilter$CtObject;

    filled-new-array/range {v0 .. v11}, [Lcom/metamoji/ctold/CtTaggedObjectFilter$CtObject;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 21
    new-instance v0, Lcom/metamoji/ctold/CtTaggedObjectFilter$CtObject;

    const-string v1, "CT_OBJECT_UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/metamoji/ctold/CtTaggedObjectFilter$CtObject;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/metamoji/ctold/CtTaggedObjectFilter$CtObject;->CT_OBJECT_UNKNOWN:Lcom/metamoji/ctold/CtTaggedObjectFilter$CtObject;

    .line 23
    new-instance v0, Lcom/metamoji/ctold/CtTaggedObjectFilter$CtObject;

    const-string v1, "CT_OBJECT_ELEM"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Lcom/metamoji/ctold/CtTaggedObjectFilter$CtObject;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/metamoji/ctold/CtTaggedObjectFilter$CtObject;->CT_OBJECT_ELEM:Lcom/metamoji/ctold/CtTaggedObjectFilter$CtObject;

    .line 24
    new-instance v0, Lcom/metamoji/ctold/CtTaggedObjectFilter$CtObject;

    const-string v1, "CT_OBJECT_STROKE"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v2}, Lcom/metamoji/ctold/CtTaggedObjectFilter$CtObject;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/metamoji/ctold/CtTaggedObjectFilter$CtObject;->CT_OBJECT_STROKE:Lcom/metamoji/ctold/CtTaggedObjectFilter$CtObject;

    .line 25
    new-instance v0, Lcom/metamoji/ctold/CtTaggedObjectFilter$CtObject;

    const-string v1, "CT_OBJECT_SHAPE"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, v2}, Lcom/metamoji/ctold/CtTaggedObjectFilter$CtObject;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/metamoji/ctold/CtTaggedObjectFilter$CtObject;->CT_OBJECT_SHAPE:Lcom/metamoji/ctold/CtTaggedObjectFilter$CtObject;

    .line 26
    new-instance v0, Lcom/metamoji/ctold/CtTaggedObjectFilter$CtObject;

    const-string v1, "CT_OBJECT_UNIT"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2, v2}, Lcom/metamoji/ctold/CtTaggedObjectFilter$CtObject;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/metamoji/ctold/CtTaggedObjectFilter$CtObject;->CT_OBJECT_UNIT:Lcom/metamoji/ctold/CtTaggedObjectFilter$CtObject;

    .line 27
    new-instance v0, Lcom/metamoji/ctold/CtTaggedObjectFilter$CtObject;

    const-string v1, "CT_OBJECT_GROUP"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2, v2}, Lcom/metamoji/ctold/CtTaggedObjectFilter$CtObject;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/metamoji/ctold/CtTaggedObjectFilter$CtObject;->CT_OBJECT_GROUP:Lcom/metamoji/ctold/CtTaggedObjectFilter$CtObject;

    .line 28
    new-instance v0, Lcom/metamoji/ctold/CtTaggedObjectFilter$CtObject;

    const-string v1, "CT_OBJECT_MAXIMUM_GROUP"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2, v2}, Lcom/metamoji/ctold/CtTaggedObjectFilter$CtObject;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/metamoji/ctold/CtTaggedObjectFilter$CtObject;->CT_OBJECT_MAXIMUM_GROUP:Lcom/metamoji/ctold/CtTaggedObjectFilter$CtObject;

    .line 29
    new-instance v0, Lcom/metamoji/ctold/CtTaggedObjectFilter$CtObject;

    const-string v1, "CT_OBJECT_GROUP_MEMBER_ELEM"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2, v2}, Lcom/metamoji/ctold/CtTaggedObjectFilter$CtObject;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/metamoji/ctold/CtTaggedObjectFilter$CtObject;->CT_OBJECT_GROUP_MEMBER_ELEM:Lcom/metamoji/ctold/CtTaggedObjectFilter$CtObject;

    .line 30
    new-instance v0, Lcom/metamoji/ctold/CtTaggedObjectFilter$CtObject;

    const-string v1, "CT_OBJECT_GROUP_MEMBER_STROKE"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2, v2}, Lcom/metamoji/ctold/CtTaggedObjectFilter$CtObject;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/metamoji/ctold/CtTaggedObjectFilter$CtObject;->CT_OBJECT_GROUP_MEMBER_STROKE:Lcom/metamoji/ctold/CtTaggedObjectFilter$CtObject;

    .line 31
    new-instance v0, Lcom/metamoji/ctold/CtTaggedObjectFilter$CtObject;

    const-string v1, "CT_OBJECT_GROUP_MEMBER_SHAPE"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2, v2}, Lcom/metamoji/ctold/CtTaggedObjectFilter$CtObject;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/metamoji/ctold/CtTaggedObjectFilter$CtObject;->CT_OBJECT_GROUP_MEMBER_SHAPE:Lcom/metamoji/ctold/CtTaggedObjectFilter$CtObject;

    .line 32
    new-instance v0, Lcom/metamoji/ctold/CtTaggedObjectFilter$CtObject;

    const-string v1, "CT_OBJECT_GROUP_MEMBER_UNIT"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2, v2}, Lcom/metamoji/ctold/CtTaggedObjectFilter$CtObject;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/metamoji/ctold/CtTaggedObjectFilter$CtObject;->CT_OBJECT_GROUP_MEMBER_UNIT:Lcom/metamoji/ctold/CtTaggedObjectFilter$CtObject;

    .line 34
    new-instance v0, Lcom/metamoji/ctold/CtTaggedObjectFilter$CtObject;

    const-string v1, "CT_OBJECT_PARAGRAPH"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2, v2}, Lcom/metamoji/ctold/CtTaggedObjectFilter$CtObject;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/metamoji/ctold/CtTaggedObjectFilter$CtObject;->CT_OBJECT_PARAGRAPH:Lcom/metamoji/ctold/CtTaggedObjectFilter$CtObject;

    .line 20
    invoke-static {}, Lcom/metamoji/ctold/CtTaggedObjectFilter$CtObject;->$values()[Lcom/metamoji/ctold/CtTaggedObjectFilter$CtObject;

    move-result-object v0

    sput-object v0, Lcom/metamoji/ctold/CtTaggedObjectFilter$CtObject;->$VALUES:[Lcom/metamoji/ctold/CtTaggedObjectFilter$CtObject;

    .line 36
    new-instance v0, Lcom/metamoji/ctold/CtTaggedObjectFilter$CtObject$1;

    invoke-direct {v0}, Lcom/metamoji/ctold/CtTaggedObjectFilter$CtObject$1;-><init>()V

    sput-object v0, Lcom/metamoji/ctold/CtTaggedObjectFilter$CtObject;->TYPE_MAP:Landroid/util/SparseArray;

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

    .line 44
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 45
    iput p3, p0, Lcom/metamoji/ctold/CtTaggedObjectFilter$CtObject;->value:I

    return-void
.end method

.method public static enumOf(I)Lcom/metamoji/ctold/CtTaggedObjectFilter$CtObject;
    .locals 3

    .line 53
    sget-object v0, Lcom/metamoji/ctold/CtTaggedObjectFilter$CtObject;->TYPE_MAP:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/metamoji/ctold/CtTaggedObjectFilter$CtObject;

    if-eqz v0, :cond_0

    return-object v0

    .line 55
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

.method public static valueOf(Ljava/lang/String;)Lcom/metamoji/ctold/CtTaggedObjectFilter$CtObject;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 20
    const-class v0, Lcom/metamoji/ctold/CtTaggedObjectFilter$CtObject;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/metamoji/ctold/CtTaggedObjectFilter$CtObject;

    return-object p0
.end method

.method public static values()[Lcom/metamoji/ctold/CtTaggedObjectFilter$CtObject;
    .locals 1

    .line 20
    sget-object v0, Lcom/metamoji/ctold/CtTaggedObjectFilter$CtObject;->$VALUES:[Lcom/metamoji/ctold/CtTaggedObjectFilter$CtObject;

    invoke-virtual {v0}, [Lcom/metamoji/ctold/CtTaggedObjectFilter$CtObject;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/metamoji/ctold/CtTaggedObjectFilter$CtObject;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .line 49
    iget v0, p0, Lcom/metamoji/ctold/CtTaggedObjectFilter$CtObject;->value:I

    return v0
.end method
