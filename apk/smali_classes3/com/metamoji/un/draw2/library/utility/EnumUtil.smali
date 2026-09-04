.class public Lcom/metamoji/un/draw2/library/utility/EnumUtil;
.super Ljava/lang/Object;
.source "EnumUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/un/draw2/library/utility/EnumUtil$UnordinalEnum;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final ordinalEnumTable:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/Enum<",
            "*>;>;"
        }
    .end annotation
.end field

.field private static final unordinalEnumTable:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Class<",
            "*>;",
            "Landroid/util/SparseArray<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 47
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/metamoji/un/draw2/library/utility/EnumUtil;->ordinalEnumTable:Ljava/util/HashMap;

    .line 48
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/metamoji/un/draw2/library/utility/EnumUtil;->unordinalEnumTable:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static enumOf(ILjava/lang/Class;)Ljava/lang/Enum;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Enum<",
            "TT;>;U:",
            "Ljava/lang/Enum<",
            "TU;>;:",
            "Lcom/metamoji/un/draw2/library/utility/EnumUtil$UnordinalEnum;",
            ">(I",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 159
    const-class v0, Lcom/metamoji/un/draw2/library/utility/EnumUtil$UnordinalEnum;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 161
    invoke-static {p0, p1}, Lcom/metamoji/un/draw2/library/utility/EnumUtil;->unordinalEnumOf(ILjava/lang/Class;)Ljava/lang/Enum;

    move-result-object p0

    return-object p0

    .line 164
    :cond_0
    invoke-static {p0, p1}, Lcom/metamoji/un/draw2/library/utility/EnumUtil;->ordinalEnumOf(ILjava/lang/Class;)Ljava/lang/Enum;

    move-result-object p0

    return-object p0
.end method

.method public static enumOf(ILjava/lang/Enum;)Ljava/lang/Enum;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Enum<",
            "TT;>;U:",
            "Ljava/lang/Enum<",
            "TU;>;:",
            "Lcom/metamoji/un/draw2/library/utility/EnumUtil$UnordinalEnum;",
            ">(ITT;)TT;"
        }
    .end annotation

    .line 141
    instance-of v0, p1, Lcom/metamoji/un/draw2/library/utility/EnumUtil$UnordinalEnum;

    if-eqz v0, :cond_0

    .line 143
    invoke-static {p0, p1}, Lcom/metamoji/un/draw2/library/utility/EnumUtil;->unordinalEnumOf(ILjava/lang/Enum;)Ljava/lang/Enum;

    move-result-object p0

    return-object p0

    .line 146
    :cond_0
    invoke-static {p0, p1}, Lcom/metamoji/un/draw2/library/utility/EnumUtil;->ordinalEnumOf(ILjava/lang/Enum;)Ljava/lang/Enum;

    move-result-object p0

    return-object p0
.end method

.method private static getOrdinalEnumTable(Ljava/lang/Class;)[Ljava/lang/Enum;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Enum<",
            "TT;>;>(",
            "Ljava/lang/Class<",
            "TT;>;)[TT;"
        }
    .end annotation

    .line 54
    sget-object v0, Lcom/metamoji/un/draw2/library/utility/EnumUtil;->ordinalEnumTable:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Enum;

    if-nez v1, :cond_0

    .line 56
    invoke-virtual {p0}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Enum;

    .line 58
    invoke-virtual {v0, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v1
.end method

.method private static getUnordinalEnumTable(Ljava/lang/Class;)Landroid/util/SparseArray;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Enum<",
            "TT;>;:",
            "Lcom/metamoji/un/draw2/library/utility/EnumUtil$UnordinalEnum;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Landroid/util/SparseArray<",
            "TT;>;"
        }
    .end annotation

    .line 67
    sget-object v0, Lcom/metamoji/un/draw2/library/utility/EnumUtil;->unordinalEnumTable:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseArray;

    if-nez v0, :cond_1

    .line 69
    invoke-virtual {p0}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Enum;

    if-eqz v1, :cond_1

    .line 72
    new-instance v0, Landroid/util/SparseArray;

    array-length v2, v1

    invoke-direct {v0, v2}, Landroid/util/SparseArray;-><init>(I)V

    .line 73
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    .line 74
    move-object v5, v4

    check-cast v5, Lcom/metamoji/un/draw2/library/utility/EnumUtil$UnordinalEnum;

    invoke-interface {v5}, Lcom/metamoji/un/draw2/library/utility/EnumUtil$UnordinalEnum;->intValue()I

    move-result v5

    invoke-virtual {v0, v5, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 76
    :cond_0
    sget-object v1, Lcom/metamoji/un/draw2/library/utility/EnumUtil;->unordinalEnumTable:Ljava/util/HashMap;

    invoke-virtual {v1, p0, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method public static intValue(Ljava/lang/Enum;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Enum<",
            "*>;)I"
        }
    .end annotation

    .line 174
    instance-of v0, p0, Lcom/metamoji/un/draw2/library/utility/EnumUtil$UnordinalEnum;

    if-eqz v0, :cond_0

    .line 175
    check-cast p0, Lcom/metamoji/un/draw2/library/utility/EnumUtil$UnordinalEnum;

    invoke-interface {p0}, Lcom/metamoji/un/draw2/library/utility/EnumUtil$UnordinalEnum;->intValue()I

    move-result p0

    return p0

    .line 177
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    return p0
.end method

.method public static ordinalEnumOf(ILjava/lang/Class;)Ljava/lang/Enum;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Enum<",
            "TT;>;>(I",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 102
    invoke-static {p1}, Lcom/metamoji/un/draw2/library/utility/EnumUtil;->getOrdinalEnumTable(Ljava/lang/Class;)[Ljava/lang/Enum;

    move-result-object p1

    if-eqz p1, :cond_0

    if-ltz p0, :cond_0

    .line 104
    array-length v0, p1

    if-ge p0, v0, :cond_0

    aget-object p0, p1, p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static ordinalEnumOf(ILjava/lang/Enum;)Ljava/lang/Enum;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Enum<",
            "TT;>;>(ITT;)TT;"
        }
    .end annotation

    .line 90
    invoke-virtual {p1}, Ljava/lang/Enum;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/metamoji/un/draw2/library/utility/EnumUtil;->ordinalEnumOf(ILjava/lang/Class;)Ljava/lang/Enum;

    move-result-object p0

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    return-object p1
.end method

.method public static unordinalEnumOf(ILjava/lang/Class;)Ljava/lang/Enum;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Enum<",
            "TT;>;:",
            "Lcom/metamoji/un/draw2/library/utility/EnumUtil$UnordinalEnum;",
            ">(I",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 127
    invoke-static {p1}, Lcom/metamoji/un/draw2/library/utility/EnumUtil;->getUnordinalEnumTable(Ljava/lang/Class;)Landroid/util/SparseArray;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 129
    invoke-virtual {p1, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Enum;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static unordinalEnumOf(ILjava/lang/Enum;)Ljava/lang/Enum;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Enum<",
            "TT;>;:",
            "Lcom/metamoji/un/draw2/library/utility/EnumUtil$UnordinalEnum;",
            ">(ITT;)TT;"
        }
    .end annotation

    .line 115
    invoke-virtual {p1}, Ljava/lang/Enum;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/metamoji/un/draw2/library/utility/EnumUtil;->unordinalEnumOf(ILjava/lang/Class;)Ljava/lang/Enum;

    move-result-object p0

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    return-object p1
.end method
