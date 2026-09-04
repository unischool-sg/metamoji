.class public Lcom/metamoji/cm/ListUtils;
.super Ljava/lang/Object;
.source "ListUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/cm/ListUtils$SerializableClassTable;
    }
.end annotation


# static fields
.field private static sSerializableClassTable:[Lcom/metamoji/cm/ListUtils$SerializableClassTable;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static add(Ljava/util/List;ILjava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;I",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    .line 33
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    add-int v2, p1, v1

    .line 35
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p0, v2, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static classIdByName(Ljava/lang/String;)I
    .locals 3

    const/4 v0, 0x0

    .line 130
    :goto_0
    sget-object v1, Lcom/metamoji/cm/ListUtils;->sSerializableClassTable:[Lcom/metamoji/cm/ListUtils$SerializableClassTable;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 132
    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/metamoji/cm/ListUtils$SerializableClassTable;->className:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 134
    sget-object p0, Lcom/metamoji/cm/ListUtils;->sSerializableClassTable:[Lcom/metamoji/cm/ListUtils$SerializableClassTable;

    aget-object p0, p0, v0

    iget p0, p0, Lcom/metamoji/cm/ListUtils$SerializableClassTable;->classId:I

    return p0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public static classNameById(I)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    .line 141
    :goto_0
    sget-object v1, Lcom/metamoji/cm/ListUtils;->sSerializableClassTable:[Lcom/metamoji/cm/ListUtils$SerializableClassTable;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 143
    aget-object v1, v1, v0

    iget v1, v1, Lcom/metamoji/cm/ListUtils$SerializableClassTable;->classId:I

    if-ne p0, v1, :cond_0

    .line 145
    sget-object p0, Lcom/metamoji/cm/ListUtils;->sSerializableClassTable:[Lcom/metamoji/cm/ListUtils$SerializableClassTable;

    aget-object p0, p0, v0

    iget-object p0, p0, Lcom/metamoji/cm/ListUtils$SerializableClassTable;->className:Ljava/lang/String;

    return-object p0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getFirst(Ljava/util/List;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 18
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getLast(Ljava/util/List;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 21
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getRange(Ljava/util/List;Lcom/metamoji/cm/Range;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;",
            "Lcom/metamoji/cm/Range;",
            ")",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    iget v1, p1, Lcom/metamoji/cm/Range;->location:I

    iget v2, p1, Lcom/metamoji/cm/Range;->location:I

    iget p1, p1, Lcom/metamoji/cm/Range;->length:I

    add-int/2addr v2, p1

    invoke-interface {p0, v1, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public static initialize([Lcom/metamoji/cm/ListUtils$SerializableClassTable;)V
    .locals 0

    .line 113
    sput-object p0, Lcom/metamoji/cm/ListUtils;->sSerializableClassTable:[Lcom/metamoji/cm/ListUtils$SerializableClassTable;

    return-void
.end method

.method public static removeRange(Ljava/util/List;Lcom/metamoji/cm/Range;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;",
            "Lcom/metamoji/cm/Range;",
            ")V"
        }
    .end annotation

    .line 29
    iget v0, p1, Lcom/metamoji/cm/Range;->location:I

    iget v1, p1, Lcom/metamoji/cm/Range;->location:I

    iget p1, p1, Lcom/metamoji/cm/Range;->length:I

    add-int/2addr v1, p1

    invoke-interface {p0, v0, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public static serialize(Ljava/util/List;Lcom/metamoji/cm/DataArchiver;Ljava/lang/Class;)I
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;",
            "Lcom/metamoji/cm/DataArchiver;",
            "Ljava/lang/Class<",
            "*>;)I"
        }
    .end annotation

    .line 154
    invoke-virtual {p1}, Lcom/metamoji/cm/DataArchiver;->isStoring()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 156
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p2

    .line 157
    invoke-virtual {p1, p2}, Lcom/metamoji/cm/DataArchiver;->writeInt32(I)I

    move-result v0

    if-lez p2, :cond_3

    .line 161
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    .line 162
    instance-of v1, p2, Lcom/metamoji/cm/ISerializable;

    if-eqz v1, :cond_2

    .line 163
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/metamoji/cm/ListUtils;->classIdByName(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_1

    .line 166
    invoke-virtual {p1, v1}, Lcom/metamoji/cm/DataArchiver;->writeInt32(I)I

    move-result p2

    add-int/2addr v0, p2

    .line 167
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    const/4 v1, 0x1

    .line 169
    invoke-virtual {p1, v1}, Lcom/metamoji/cm/DataArchiver;->writeInt32(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 170
    check-cast p2, Lcom/metamoji/cm/ISerializable;

    invoke-interface {p2, p1}, Lcom/metamoji/cm/ISerializable;->serialize(Lcom/metamoji/cm/DataArchiver;)I

    move-result p2

    add-int/2addr v0, p2

    goto :goto_0

    :cond_0
    return v0

    .line 175
    :cond_1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "Can\'t serialize:%s not in Table"

    invoke-static {p1, p0}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    return v0

    .line 179
    :cond_2
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "%s\u304cISerializable\u3092\u5b9f\u88c5\u3057\u3066\u306a\u304f\u3066\u30b7\u30ea\u30a2\u30e9\u30a4\u30ba\u306b\u5931\u6557"

    invoke-static {p1, p0}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_3
    return v0

    .line 185
    :cond_4
    invoke-interface {p0}, Ljava/util/List;->clear()V

    .line 186
    invoke-virtual {p1}, Lcom/metamoji/cm/DataArchiver;->readInt32()I

    move-result v0

    if-lez v0, :cond_8

    .line 189
    invoke-virtual {p1}, Lcom/metamoji/cm/DataArchiver;->readInt32()I

    move-result v2

    invoke-static {v2}, Lcom/metamoji/cm/ListUtils;->classNameById(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 192
    :try_start_0
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 193
    invoke-virtual {p2, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_6

    move p2, v1

    :goto_1
    if-ge p2, v0, :cond_8

    .line 197
    invoke-virtual {p1}, Lcom/metamoji/cm/DataArchiver;->readInt32()I
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2

    .line 200
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/metamoji/cm/ISerializable;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_2

    .line 203
    :catch_0
    :try_start_2
    const-string v3, "%s\u306e\u30a4\u30f3\u30b9\u30bf\u30f3\u30b9\u4f5c\u6210\u3067\u4f8b\u5916\u767a\u751f\u3057\u3066\u30b7\u30ea\u30a2\u30e9\u30a4\u30ba\u306b\u5931\u6557"

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v3, v4

    :goto_2
    if-eqz v3, :cond_5

    .line 207
    invoke-interface {v3, p1}, Lcom/metamoji/cm/ISerializable;->serialize(Lcom/metamoji/cm/DataArchiver;)I

    .line 210
    invoke-interface {p0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    .line 214
    :cond_6
    const-class p0, Lcom/metamoji/cm/ISerializable;

    invoke-virtual {p0, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p0

    if-eqz p0, :cond_8

    .line 216
    const-string p0, "\u30b7\u30ea\u30a2\u30e9\u30a4\u30ba\u3067\u4f5c\u6210\u3055\u308c\u308b%s\u304cList\u306e\u8981\u7d20\u578b%s\u306b\u30ad\u30e3\u30b9\u30c8\u3067\u304d\u306a\u304f\u3066\u30b7\u30ea\u30a2\u30e9\u30a4\u30ba\u306b\u5931\u6557"

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    filled-new-array {v3, p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-static {p0, p2}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    .line 220
    :try_start_3
    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/metamoji/cm/ISerializable;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_3} :catch_2

    move-object v4, p0

    :catch_1
    if-eqz v4, :cond_8

    move p0, v1

    :goto_3
    if-ge p0, v0, :cond_8

    .line 228
    :try_start_4
    invoke-virtual {p1}, Lcom/metamoji/cm/DataArchiver;->readInt32()I

    .line 229
    invoke-interface {v4, p1}, Lcom/metamoji/cm/ISerializable;->serialize(Lcom/metamoji/cm/DataArchiver;)I
    :try_end_4
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4 .. :try_end_4} :catch_2

    add-int/lit8 p0, p0, 0x1

    goto :goto_3

    .line 236
    :catch_2
    const-string p0, "unknown class. in NSArray(MMJEdSerialize)"

    invoke-static {p0}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;)V

    goto :goto_4

    .line 240
    :cond_7
    const-string p0, "unknown classID. in NSArray(MMJEdSerialize)"

    invoke-static {p0}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;)V

    :cond_8
    :goto_4
    return v1
.end method

.method public static toObjectList([B)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/List<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 55
    :cond_0
    array-length v0, p0

    if-nez v0, :cond_1

    .line 56
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0

    .line 57
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 58
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-byte v3, p0, v2

    .line 59
    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public static toPrimitiveArrayFromByteList(Ljava/util/List;)[B
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Byte;",
            ">;)[B"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 42
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 43
    new-array p0, v1, [B

    return-object p0

    .line 45
    :cond_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [B

    .line 46
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 47
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Byte;

    invoke-virtual {v2}, Ljava/lang/Byte;->byteValue()B

    move-result v2

    aput-byte v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method
