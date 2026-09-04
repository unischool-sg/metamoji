.class public final Lcom/metamoji/lib/utils/SimpleDrawablePool;
.super Ljava/lang/Object;
.source "DrawableBitmap.kt"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDrawableBitmap.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DrawableBitmap.kt\ncom/metamoji/lib/utils/SimpleDrawablePool\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,77:1\n1915#2,2:78\n*S KotlinDebug\n*F\n+ 1 DrawableBitmap.kt\ncom/metamoji/lib/utils/SimpleDrawablePool\n*L\n53#1:78,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000e\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0008\u001a\u00020\u0006J0\u0010\u0007\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000c2\u0008\u0008\u0001\u0010\r\u001a\u00020\u000c2\u0006\u0010\u000e\u001a\u00020\u000c2\u0006\u0010\u000f\u001a\u00020\u000cJ(\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0010\u001a\u00020\u00112\u0008\u0008\u0001\u0010\r\u001a\u00020\u000c2\u0006\u0010\u000e\u001a\u00020\u000c2\u0006\u0010\u000f\u001a\u00020\u000cJ\u0008\u0010\u0012\u001a\u00020\u0013H\u0016R\u0014\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/metamoji/lib/utils/SimpleDrawablePool;",
        "Ljava/io/Closeable;",
        "<init>",
        "()V",
        "list",
        "",
        "Lcom/metamoji/lib/utils/DrawableBitmap;",
        "register",
        "bmp",
        "context",
        "Landroid/content/Context;",
        "id",
        "",
        "color",
        "width",
        "height",
        "drawable",
        "Landroid/graphics/drawable/Drawable;",
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
.field private final list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/metamoji/lib/utils/DrawableBitmap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/metamoji/lib/utils/SimpleDrawablePool;->list:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    .line 53
    iget-object v0, p0, Lcom/metamoji/lib/utils/SimpleDrawablePool;->list:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    .line 78
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/metamoji/lib/utils/DrawableBitmap;

    .line 53
    invoke-virtual {v1}, Lcom/metamoji/lib/utils/DrawableBitmap;->close()V

    goto :goto_0

    .line 54
    :cond_0
    iget-object v0, p0, Lcom/metamoji/lib/utils/SimpleDrawablePool;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public final register(Landroid/content/Context;IIII)Lcom/metamoji/lib/utils/DrawableBitmap;
    .locals 7

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    new-instance v1, Lcom/metamoji/lib/utils/DrawableBitmap;

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/metamoji/lib/utils/DrawableBitmap;-><init>(Landroid/content/Context;IIII)V

    invoke-virtual {p0, v1}, Lcom/metamoji/lib/utils/SimpleDrawablePool;->register(Lcom/metamoji/lib/utils/DrawableBitmap;)Lcom/metamoji/lib/utils/DrawableBitmap;

    move-result-object p1

    return-object p1
.end method

.method public final register(Landroid/graphics/drawable/Drawable;III)Lcom/metamoji/lib/utils/DrawableBitmap;
    .locals 1

    const-string v0, "drawable"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    new-instance v0, Lcom/metamoji/lib/utils/DrawableBitmap;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/metamoji/lib/utils/DrawableBitmap;-><init>(Landroid/graphics/drawable/Drawable;III)V

    invoke-virtual {p0, v0}, Lcom/metamoji/lib/utils/SimpleDrawablePool;->register(Lcom/metamoji/lib/utils/DrawableBitmap;)Lcom/metamoji/lib/utils/DrawableBitmap;

    move-result-object p1

    return-object p1
.end method

.method public final register(Lcom/metamoji/lib/utils/DrawableBitmap;)Lcom/metamoji/lib/utils/DrawableBitmap;
    .locals 1

    const-string v0, "bmp"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    iget-object v0, p0, Lcom/metamoji/lib/utils/SimpleDrawablePool;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p1
.end method
