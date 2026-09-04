.class public final Lcom/metamoji/lib/utils/DrawableBitmapMappedPool;
.super Ljava/lang/Object;
.source "DrawableBitmap.kt"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDrawableBitmap.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DrawableBitmap.kt\ncom/metamoji/lib/utils/DrawableBitmapMappedPool\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,77:1\n1#2:78\n1915#3,2:79\n*S KotlinDebug\n*F\n+ 1 DrawableBitmap.kt\ncom/metamoji/lib/utils/DrawableBitmapMappedPool\n*L\n73#1:79,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010%\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J#\u0010\n\u001a\u00020\u000b2\u0008\u0008\u0001\u0010\u000c\u001a\u00020\u00032\u0008\u0008\u0001\u0010\r\u001a\u00020\u0003H\u0002\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\"\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u00162\u0008\u0008\u0001\u0010\u000c\u001a\u00020\u00032\u0008\u0008\u0001\u0010\r\u001a\u00020\u0003J\u0008\u0010\u0017\u001a\u00020\u0018H\u0016R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\u0008R\u001a\u0010\u0010\u001a\u000e\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u00120\u0011X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcom/metamoji/lib/utils/DrawableBitmapMappedPool;",
        "Ljava/io/Closeable;",
        "width",
        "",
        "height",
        "<init>",
        "(II)V",
        "getWidth",
        "()I",
        "getHeight",
        "makeKey",
        "Lkotlin/ULong;",
        "id",
        "color",
        "makeKey-ZIaKswc",
        "(II)J",
        "map",
        "",
        "Lcom/metamoji/lib/utils/DrawableBitmap;",
        "getBitmap",
        "Landroid/graphics/Bitmap;",
        "context",
        "Landroid/content/Context;",
        "close",
        "",
        "utils"
    }
    k = 0x1
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final height:I

.field private final map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lkotlin/ULong;",
            "Lcom/metamoji/lib/utils/DrawableBitmap;",
            ">;"
        }
    .end annotation
.end field

.field private final width:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/metamoji/lib/utils/DrawableBitmapMappedPool;->width:I

    iput p2, p0, Lcom/metamoji/lib/utils/DrawableBitmapMappedPool;->height:I

    .line 65
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast p1, Ljava/util/Map;

    iput-object p1, p0, Lcom/metamoji/lib/utils/DrawableBitmapMappedPool;->map:Ljava/util/Map;

    return-void
.end method

.method private final makeKey-ZIaKswc(II)J
    .locals 2

    int-to-long v0, p1

    .line 63
    invoke-static {v0, v1}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v0

    const/16 p1, 0x20

    shl-long/2addr v0, p1

    invoke-static {v0, v1}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v0

    int-to-long p1, p2

    invoke-static {p1, p2}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide p1

    add-long/2addr v0, p1

    invoke-static {v0, v1}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide p1

    return-wide p1
.end method


# virtual methods
.method public close()V
    .locals 2

    .line 73
    iget-object v0, p0, Lcom/metamoji/lib/utils/DrawableBitmapMappedPool;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 79
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/metamoji/lib/utils/DrawableBitmap;

    .line 73
    invoke-virtual {v1}, Lcom/metamoji/lib/utils/DrawableBitmap;->close()V

    goto :goto_0

    .line 74
    :cond_0
    iget-object v0, p0, Lcom/metamoji/lib/utils/DrawableBitmapMappedPool;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public final getBitmap(Landroid/content/Context;II)Landroid/graphics/Bitmap;
    .locals 9

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    invoke-direct {p0, p2, p3}, Lcom/metamoji/lib/utils/DrawableBitmapMappedPool;->makeKey-ZIaKswc(II)J

    move-result-wide v0

    .line 69
    iget-object v2, p0, Lcom/metamoji/lib/utils/DrawableBitmapMappedPool;->map:Ljava/util/Map;

    invoke-static {v0, v1}, Lkotlin/ULong;->box-impl(J)Lkotlin/ULong;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/metamoji/lib/utils/DrawableBitmap;

    if-nez v2, :cond_0

    new-instance v3, Lcom/metamoji/lib/utils/DrawableBitmap;

    iget v7, p0, Lcom/metamoji/lib/utils/DrawableBitmapMappedPool;->width:I

    iget v8, p0, Lcom/metamoji/lib/utils/DrawableBitmapMappedPool;->height:I

    move-object v4, p1

    move v5, p2

    move v6, p3

    invoke-direct/range {v3 .. v8}, Lcom/metamoji/lib/utils/DrawableBitmap;-><init>(Landroid/content/Context;IIII)V

    iget-object p1, p0, Lcom/metamoji/lib/utils/DrawableBitmapMappedPool;->map:Ljava/util/Map;

    invoke-static {v0, v1}, Lkotlin/ULong;->box-impl(J)Lkotlin/ULong;

    move-result-object p2

    invoke-interface {p1, p2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v2, v3

    :cond_0
    invoke-virtual {v2}, Lcom/metamoji/lib/utils/DrawableBitmap;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public final getHeight()I
    .locals 1

    .line 61
    iget v0, p0, Lcom/metamoji/lib/utils/DrawableBitmapMappedPool;->height:I

    return v0
.end method

.method public final getWidth()I
    .locals 1

    .line 61
    iget v0, p0, Lcom/metamoji/lib/utils/DrawableBitmapMappedPool;->width:I

    return v0
.end method
