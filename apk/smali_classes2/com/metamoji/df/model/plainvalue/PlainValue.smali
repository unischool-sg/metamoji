.class public final Lcom/metamoji/df/model/plainvalue/PlainValue;
.super Ljava/lang/Object;
.source "PlainValue.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/df/model/plainvalue/PlainValue$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPlainValue.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PlainValue.kt\ncom/metamoji/df/model/plainvalue/PlainValue\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n*L\n1#1,296:1\n1563#2:297\n1634#2,3:298\n1252#2,4:303\n1563#2:307\n1634#2,3:308\n463#3:301\n413#3:302\n*S KotlinDebug\n*F\n+ 1 PlainValue.kt\ncom/metamoji/df/model/plainvalue/PlainValue\n*L\n166#1:297\n166#1:298,3\n181#1:303,4\n195#1:307\n195#1:308,3\n181#1:301\n181#1:302\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\\\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0006\n\u0002\u0010\u0008\n\u0002\u0008\u0006\n\u0002\u0010\u0006\n\u0002\u0008\u0006\n\u0002\u0010\u000b\n\u0002\u0008\u0006\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0010 \n\u0002\u0008\u0005\n\u0002\u0010$\n\u0002\u0008\u0005\n\u0002\u0010\"\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0018\u0000 G2\u00020\u0001:\u0001GB\u0013\u0008\u0002\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0001\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u0013\u0010D\u001a\u00020\u00162\u0008\u0010E\u001a\u0004\u0018\u00010\u0001H\u0096\u0002J\u0008\u0010F\u001a\u00020\u0008H\u0016R\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0001\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006R\u0013\u0010\u0007\u001a\u0004\u0018\u00010\u00088F\u00a2\u0006\u0006\u001a\u0004\u0008\t\u0010\nR\u0011\u0010\u000b\u001a\u00020\u00088F\u00a2\u0006\u0006\u001a\u0004\u0008\u000c\u0010\rR\u0013\u0010\u000e\u001a\u0004\u0018\u00010\u000f8F\u00a2\u0006\u0006\u001a\u0004\u0008\u0010\u0010\u0011R\u0011\u0010\u0012\u001a\u00020\u000f8F\u00a2\u0006\u0006\u001a\u0004\u0008\u0013\u0010\u0014R\u0013\u0010\u0015\u001a\u0004\u0018\u00010\u00168F\u00a2\u0006\u0006\u001a\u0004\u0008\u0017\u0010\u0018R\u0011\u0010\u0019\u001a\u00020\u00168F\u00a2\u0006\u0006\u001a\u0004\u0008\u001a\u0010\u001bR\u0013\u0010\u001c\u001a\u0004\u0018\u00010\u001d8F\u00a2\u0006\u0006\u001a\u0004\u0008\u001e\u0010\u001fR\u0011\u0010 \u001a\u00020\u001d8F\u00a2\u0006\u0006\u001a\u0004\u0008!\u0010\u001fR\u0019\u0010\"\u001a\n\u0012\u0004\u0012\u00020\u0000\u0018\u00010#8F\u00a2\u0006\u0006\u001a\u0004\u0008$\u0010%R\u0017\u0010&\u001a\u0008\u0012\u0004\u0012\u00020\u00000#8F\u00a2\u0006\u0006\u001a\u0004\u0008\'\u0010%R\u001f\u0010(\u001a\u0010\u0012\u0004\u0012\u00020\u001d\u0012\u0004\u0012\u00020\u0000\u0018\u00010)8F\u00a2\u0006\u0006\u001a\u0004\u0008*\u0010+R\u001d\u0010,\u001a\u000e\u0012\u0004\u0012\u00020\u001d\u0012\u0004\u0012\u00020\u00000)8F\u00a2\u0006\u0006\u001a\u0004\u0008-\u0010+R\u0019\u0010.\u001a\n\u0012\u0004\u0012\u00020\u0000\u0018\u00010/8F\u00a2\u0006\u0006\u001a\u0004\u00080\u00101R\u0017\u00102\u001a\u0008\u0012\u0004\u0012\u00020\u00000/8F\u00a2\u0006\u0006\u001a\u0004\u00083\u00101R\u0013\u00104\u001a\u0004\u0018\u0001058F\u00a2\u0006\u0006\u001a\u0004\u00086\u00107R\u0011\u00108\u001a\u0002058F\u00a2\u0006\u0006\u001a\u0004\u00089\u00107R\u0013\u0010:\u001a\u0004\u0018\u00010;8F\u00a2\u0006\u0006\u001a\u0004\u0008<\u0010=R\u0013\u0010>\u001a\u0004\u0018\u00010?8F\u00a2\u0006\u0006\u001a\u0004\u0008@\u0010AR\u0011\u0010B\u001a\u00020?8F\u00a2\u0006\u0006\u001a\u0004\u0008C\u0010A\u00a8\u0006:"
    }
    d2 = {
        "Lcom/metamoji/df/model/plainvalue/PlainValue;",
        "",
        "wrapped",
        "<init>",
        "(Ljava/lang/Object;)V",
        "getWrapped",
        "()Ljava/lang/Object;",
        "int",
        "",
        "getInt",
        "()Ljava/lang/Integer;",
        "intValue",
        "getIntValue",
        "()I",
        "double",
        "",
        "getDouble",
        "()Ljava/lang/Double;",
        "doubleValue",
        "getDoubleValue",
        "()D",
        "bool",
        "",
        "getBool",
        "()Ljava/lang/Boolean;",
        "boolValue",
        "getBoolValue",
        "()Z",
        "string",
        "",
        "getString",
        "()Ljava/lang/String;",
        "stringValue",
        "getStringValue",
        "array",
        "",
        "getArray",
        "()Ljava/util/List;",
        "arrayValue",
        "getArrayValue",
        "dictionary",
        "",
        "getDictionary",
        "()Ljava/util/Map;",
        "dictionaryValue",
        "getDictionaryValue",
        "set",
        "",
        "getSet",
        "()Ljava/util/Set;",
        "setValue",
        "getSetValue",
        "blob",
        "Lcom/metamoji/cm/Blob;",
        "getBlob",
        "()Lcom/metamoji/cm/Blob;",
        "blobValue",
        "getBlobValue",
        "model",
        "Lcom/metamoji/df/model/IModel;",
        "getModel",
        "()Lcom/metamoji/df/model/IModel;",
        "pointArray",
        "Lcom/metamoji/cm/PointArray;",
        "getPointArray",
        "()Lcom/metamoji/cm/PointArray;",
        "pointArrayValue",
        "getPointArrayValue",
        "equals",
        "other",
        "hashCode",
        "Companion"
    }
    k = 0x1
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lcom/metamoji/df/model/plainvalue/PlainValue$Companion;

.field private static final NULL:Lcom/metamoji/df/model/plainvalue/PlainValue;


# instance fields
.field private final wrapped:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/metamoji/df/model/plainvalue/PlainValue$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/metamoji/df/model/plainvalue/PlainValue$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/metamoji/df/model/plainvalue/PlainValue;->Companion:Lcom/metamoji/df/model/plainvalue/PlainValue$Companion;

    .line 28
    new-instance v0, Lcom/metamoji/df/model/plainvalue/PlainValue;

    invoke-direct {v0, v1}, Lcom/metamoji/df/model/plainvalue/PlainValue;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/metamoji/df/model/plainvalue/PlainValue;->NULL:Lcom/metamoji/df/model/plainvalue/PlainValue;

    return-void
.end method

.method private constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/metamoji/df/model/plainvalue/PlainValue;->wrapped:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/metamoji/df/model/plainvalue/PlainValue;-><init>(Ljava/lang/Object;)V

    return-void
.end method

.method public static final synthetic access$getNULL$cp()Lcom/metamoji/df/model/plainvalue/PlainValue;
    .locals 1

    .line 11
    sget-object v0, Lcom/metamoji/df/model/plainvalue/PlainValue;->NULL:Lcom/metamoji/df/model/plainvalue/PlainValue;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 231
    :cond_0
    instance-of v1, p1, Lcom/metamoji/df/model/plainvalue/PlainValue;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 233
    :cond_1
    iget-object v1, p0, Lcom/metamoji/df/model/plainvalue/PlainValue;->wrapped:Ljava/lang/Object;

    check-cast p1, Lcom/metamoji/df/model/plainvalue/PlainValue;

    iget-object p1, p1, Lcom/metamoji/df/model/plainvalue/PlainValue;->wrapped:Ljava/lang/Object;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method public final getArray()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/metamoji/df/model/plainvalue/PlainValue;",
            ">;"
        }
    .end annotation

    .line 165
    iget-object v0, p0, Lcom/metamoji/df/model/plainvalue/PlainValue;->wrapped:Ljava/lang/Object;

    .line 166
    instance-of v1, v0, Ljava/util/List;

    if-eqz v1, :cond_1

    check-cast v0, Ljava/lang/Iterable;

    .line 297
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v1, Ljava/util/Collection;

    .line 298
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 166
    new-instance v3, Lcom/metamoji/df/model/plainvalue/PlainValue;

    invoke-direct {v3, v2}, Lcom/metamoji/df/model/plainvalue/PlainValue;-><init>(Ljava/lang/Object;)V

    .line 299
    invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 300
    :cond_0
    check-cast v1, Ljava/util/List;

    return-object v1

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getArrayValue()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/metamoji/df/model/plainvalue/PlainValue;",
            ">;"
        }
    .end annotation

    .line 173
    invoke-virtual {p0}, Lcom/metamoji/df/model/plainvalue/PlainValue;->getArray()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public final getBlob()Lcom/metamoji/cm/Blob;
    .locals 2

    .line 207
    iget-object v0, p0, Lcom/metamoji/df/model/plainvalue/PlainValue;->wrapped:Ljava/lang/Object;

    instance-of v1, v0, Lcom/metamoji/cm/Blob;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/metamoji/cm/Blob;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getBlobValue()Lcom/metamoji/cm/Blob;
    .locals 3

    .line 212
    invoke-virtual {p0}, Lcom/metamoji/df/model/plainvalue/PlainValue;->getBlob()Lcom/metamoji/cm/Blob;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/metamoji/cm/Blob;

    const/4 v1, 0x0

    new-array v1, v1, [B

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Lcom/metamoji/cm/Blob;-><init>([BLjava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public final getBool()Ljava/lang/Boolean;
    .locals 2

    .line 141
    iget-object v0, p0, Lcom/metamoji/df/model/plainvalue/PlainValue;->wrapped:Ljava/lang/Object;

    .line 142
    instance-of v1, v0, Ljava/lang/Boolean;

    if-nez v1, :cond_1

    .line 143
    instance-of v1, v0, Ljava/lang/Number;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return-object v0

    :cond_1
    :goto_0
    invoke-static {v0}, Lcom/metamoji/cm/CmUtils;->toBool(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public final getBoolValue()Z
    .locals 1

    .line 150
    invoke-virtual {p0}, Lcom/metamoji/df/model/plainvalue/PlainValue;->getBool()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final getDictionary()Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/metamoji/df/model/plainvalue/PlainValue;",
            ">;"
        }
    .end annotation

    .line 178
    iget-object v0, p0, Lcom/metamoji/df/model/plainvalue/PlainValue;->wrapped:Ljava/lang/Object;

    .line 179
    instance-of v1, v0, Ljava/util/Map;

    if-eqz v1, :cond_1

    .line 181
    check-cast v0, Ljava/util/Map;

    .line 301
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v2

    invoke-static {v2}, Lkotlin/collections/MapsKt;->mapCapacity(I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/LinkedHashMap;-><init>(I)V

    check-cast v1, Ljava/util/Map;

    .line 302
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 303
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 304
    check-cast v2, Ljava/util/Map$Entry;

    .line 302
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    .line 181
    new-instance v4, Lcom/metamoji/df/model/plainvalue/PlainValue;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v4, v2}, Lcom/metamoji/df/model/plainvalue/PlainValue;-><init>(Ljava/lang/Object;)V

    .line 304
    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-object v1

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getDictionaryValue()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/metamoji/df/model/plainvalue/PlainValue;",
            ">;"
        }
    .end annotation

    .line 189
    invoke-virtual {p0}, Lcom/metamoji/df/model/plainvalue/PlainValue;->getDictionary()Ljava/util/Map;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public final getDouble()Ljava/lang/Double;
    .locals 2

    .line 127
    iget-object v0, p0, Lcom/metamoji/df/model/plainvalue/PlainValue;->wrapped:Ljava/lang/Object;

    .line 128
    instance-of v1, v0, Ljava/lang/Boolean;

    if-eqz v1, :cond_1

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0

    .line 129
    :cond_1
    instance-of v1, v0, Ljava/lang/Number;

    if-eqz v1, :cond_2

    invoke-static {v0}, Lcom/metamoji/cm/CmUtils;->toDouble(Ljava/lang/Object;)Ljava/lang/Double;

    move-result-object v0

    return-object v0

    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getDoubleValue()D
    .locals 2

    .line 136
    invoke-virtual {p0}, Lcom/metamoji/df/model/plainvalue/PlainValue;->getDouble()Ljava/lang/Double;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final getInt()Ljava/lang/Integer;
    .locals 2

    .line 113
    iget-object v0, p0, Lcom/metamoji/df/model/plainvalue/PlainValue;->wrapped:Ljava/lang/Object;

    .line 114
    instance-of v1, v0, Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 115
    :cond_0
    instance-of v1, v0, Ljava/lang/Number;

    if-eqz v1, :cond_1

    invoke-static {v0}, Lcom/metamoji/cm/CmUtils;->toInt(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getIntValue()I
    .locals 1

    .line 122
    invoke-virtual {p0}, Lcom/metamoji/df/model/plainvalue/PlainValue;->getInt()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final getModel()Lcom/metamoji/df/model/IModel;
    .locals 2

    .line 217
    iget-object v0, p0, Lcom/metamoji/df/model/plainvalue/PlainValue;->wrapped:Ljava/lang/Object;

    instance-of v1, v0, Lcom/metamoji/df/model/IModel;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/metamoji/df/model/IModel;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getPointArray()Lcom/metamoji/cm/PointArray;
    .locals 2

    .line 222
    iget-object v0, p0, Lcom/metamoji/df/model/plainvalue/PlainValue;->wrapped:Ljava/lang/Object;

    instance-of v1, v0, Lcom/metamoji/cm/PointArray;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/metamoji/cm/PointArray;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getPointArrayValue()Lcom/metamoji/cm/PointArray;
    .locals 1

    .line 227
    invoke-virtual {p0}, Lcom/metamoji/df/model/plainvalue/PlainValue;->getPointArray()Lcom/metamoji/cm/PointArray;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/metamoji/cm/PointArray;

    invoke-direct {v0}, Lcom/metamoji/cm/PointArray;-><init>()V

    :cond_0
    return-object v0
.end method

.method public final getSet()Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/metamoji/df/model/plainvalue/PlainValue;",
            ">;"
        }
    .end annotation

    .line 194
    iget-object v0, p0, Lcom/metamoji/df/model/plainvalue/PlainValue;->wrapped:Ljava/lang/Object;

    .line 195
    instance-of v1, v0, Ljava/util/Set;

    if-eqz v1, :cond_1

    check-cast v0, Ljava/lang/Iterable;

    .line 307
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v1, Ljava/util/Collection;

    .line 308
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 195
    new-instance v3, Lcom/metamoji/df/model/plainvalue/PlainValue;

    invoke-direct {v3, v2}, Lcom/metamoji/df/model/plainvalue/PlainValue;-><init>(Ljava/lang/Object;)V

    .line 309
    invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 310
    :cond_0
    check-cast v1, Ljava/util/List;

    .line 307
    check-cast v1, Ljava/lang/Iterable;

    .line 195
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getSetValue()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/metamoji/df/model/plainvalue/PlainValue;",
            ">;"
        }
    .end annotation

    .line 202
    invoke-virtual {p0}, Lcom/metamoji/df/model/plainvalue/PlainValue;->getSet()Ljava/util/Set;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/collections/SetsKt;->emptySet()Ljava/util/Set;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public final getString()Ljava/lang/String;
    .locals 2

    .line 155
    iget-object v0, p0, Lcom/metamoji/df/model/plainvalue/PlainValue;->wrapped:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getStringValue()Ljava/lang/String;
    .locals 1

    .line 160
    invoke-virtual {p0}, Lcom/metamoji/df/model/plainvalue/PlainValue;->getString()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public final getWrapped()Ljava/lang/Object;
    .locals 1

    .line 11
    iget-object v0, p0, Lcom/metamoji/df/model/plainvalue/PlainValue;->wrapped:Ljava/lang/Object;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 238
    iget-object v0, p0, Lcom/metamoji/df/model/plainvalue/PlainValue;->wrapped:Ljava/lang/Object;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
