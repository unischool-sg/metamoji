.class public final Lio/github/toyota32k/utils/android/RefBitmapHolder;
.super Ljava/lang/Object;
.source "RefBitmap.kt"

# interfaces
.implements Ljava/io/Closeable;
.implements Lio/github/toyota32k/utils/IDisposable;
.implements Lkotlin/properties/ReadWriteProperty;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/io/Closeable;",
        "Lio/github/toyota32k/utils/IDisposable;",
        "Lkotlin/properties/ReadWriteProperty<",
        "Ljava/lang/Object;",
        "Lio/github/toyota32k/utils/android/RefBitmap;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRefBitmap.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RefBitmap.kt\nio/github/toyota32k/utils/android/RefBitmapHolder\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,242:1\n1#2:243\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u00012\u00020\u00022\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0006\u0012\u0004\u0018\u00010\u00050\u0003B\u0013\u0012\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u0010\u0010\r\u001a\u00020\u000e2\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u0005J\u0006\u0010\u0010\u001a\u00020\u000eJ\u0006\u0010\u0011\u001a\u00020\u0005J\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0005J\u0008\u0010\u0017\u001a\u00020\u000eH\u0016J\u0008\u0010\u0018\u001a\u00020\u000eH\u0016J \u0010\u0019\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u001a\u001a\u00020\u00042\n\u0010\u001b\u001a\u0006\u0012\u0002\u0008\u00030\u001cH\u0096\u0082\u0004J(\u0010\u001d\u001a\u00020\u000e2\u0006\u0010\u001a\u001a\u00020\u00042\n\u0010\u001b\u001a\u0006\u0012\u0002\u0008\u00030\u001c2\u0008\u0010\t\u001a\u0004\u0018\u00010\u0005H\u0096\u0082\u0004R\"\u0010\n\u001a\u0004\u0018\u00010\u00052\u0008\u0010\t\u001a\u0004\u0018\u00010\u0005@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u0011\u0010\u0013\u001a\u00020\u00148F\u00a2\u0006\u0006\u001a\u0004\u0008\u0015\u0010\u0016\u00a8\u0006\u001e"
    }
    d2 = {
        "Lio/github/toyota32k/utils/android/RefBitmapHolder;",
        "Ljava/io/Closeable;",
        "Lio/github/toyota32k/utils/IDisposable;",
        "Lkotlin/properties/ReadWriteProperty;",
        "",
        "Lio/github/toyota32k/utils/android/RefBitmap;",
        "bx",
        "<init>",
        "(Lio/github/toyota32k/utils/android/RefBitmap;)V",
        "value",
        "refBitmap",
        "getRefBitmap",
        "()Lio/github/toyota32k/utils/android/RefBitmap;",
        "set",
        "",
        "br",
        "reset",
        "get",
        "getOrNull",
        "hasBitmap",
        "",
        "getHasBitmap",
        "()Z",
        "close",
        "dispose",
        "getValue",
        "thisRef",
        "property",
        "Lkotlin/reflect/KProperty;",
        "setValue",
        "libUtils_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private refBitmap:Lio/github/toyota32k/utils/android/RefBitmap;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, v0}, Lio/github/toyota32k/utils/android/RefBitmapHolder;-><init>(Lio/github/toyota32k/utils/android/RefBitmap;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lio/github/toyota32k/utils/android/RefBitmap;)V
    .locals 0

    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 141
    invoke-virtual {p1}, Lio/github/toyota32k/utils/android/RefBitmap;->addRef()Lio/github/toyota32k/utils/android/RefBitmap;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lio/github/toyota32k/utils/android/RefBitmapHolder;->refBitmap:Lio/github/toyota32k/utils/android/RefBitmap;

    return-void
.end method

.method public synthetic constructor <init>(Lio/github/toyota32k/utils/android/RefBitmap;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 140
    :cond_0
    invoke-direct {p0, p1}, Lio/github/toyota32k/utils/android/RefBitmapHolder;-><init>(Lio/github/toyota32k/utils/android/RefBitmap;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 3

    .line 167
    sget-object v0, Lio/github/toyota32k/utils/UtLib;->INSTANCE:Lio/github/toyota32k/utils/UtLib;

    invoke-virtual {v0}, Lio/github/toyota32k/utils/UtLib;->getLogger()Lio/github/toyota32k/logger/UtLog;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, v1}, Lio/github/toyota32k/logger/UtLog;->debug$default(Lio/github/toyota32k/logger/UtLog;Ljava/lang/String;ILjava/lang/Object;)V

    .line 168
    invoke-virtual {p0}, Lio/github/toyota32k/utils/android/RefBitmapHolder;->reset()V

    return-void
.end method

.method public dispose()V
    .locals 3

    .line 172
    sget-object v0, Lio/github/toyota32k/utils/UtLib;->INSTANCE:Lio/github/toyota32k/utils/UtLib;

    invoke-virtual {v0}, Lio/github/toyota32k/utils/UtLib;->getLogger()Lio/github/toyota32k/logger/UtLog;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, v1}, Lio/github/toyota32k/logger/UtLog;->debug$default(Lio/github/toyota32k/logger/UtLog;Ljava/lang/String;ILjava/lang/Object;)V

    .line 173
    invoke-virtual {p0}, Lio/github/toyota32k/utils/android/RefBitmapHolder;->reset()V

    return-void
.end method

.method public final get()Lio/github/toyota32k/utils/android/RefBitmap;
    .locals 3

    .line 156
    iget-object v0, p0, Lio/github/toyota32k/utils/android/RefBitmapHolder;->refBitmap:Lio/github/toyota32k/utils/android/RefBitmap;

    if-eqz v0, :cond_0

    .line 157
    invoke-virtual {v0}, Lio/github/toyota32k/utils/android/RefBitmap;->getHasBitmap()Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "bitmap is already recycled"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final getHasBitmap()Z
    .locals 3

    .line 164
    iget-object v0, p0, Lio/github/toyota32k/utils/android/RefBitmapHolder;->refBitmap:Lio/github/toyota32k/utils/android/RefBitmap;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lio/github/toyota32k/utils/android/RefBitmap;->getHasBitmap()Z

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    return v2

    :cond_0
    return v1
.end method

.method public final getOrNull()Lio/github/toyota32k/utils/android/RefBitmap;
    .locals 3

    .line 160
    iget-object v0, p0, Lio/github/toyota32k/utils/android/RefBitmapHolder;->refBitmap:Lio/github/toyota32k/utils/android/RefBitmap;

    if-eqz v0, :cond_0

    .line 161
    invoke-virtual {v0}, Lio/github/toyota32k/utils/android/RefBitmap;->getHasBitmap()Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getRefBitmap()Lio/github/toyota32k/utils/android/RefBitmap;
    .locals 1

    .line 141
    iget-object v0, p0, Lio/github/toyota32k/utils/android/RefBitmapHolder;->refBitmap:Lio/github/toyota32k/utils/android/RefBitmap;

    return-object v0
.end method

.method public getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Lio/github/toyota32k/utils/android/RefBitmap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/reflect/KProperty<",
            "*>;)",
            "Lio/github/toyota32k/utils/android/RefBitmap;"
        }
    .end annotation

    const-string v0, "thisRef"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "property"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 177
    invoke-virtual {p0}, Lio/github/toyota32k/utils/android/RefBitmapHolder;->getOrNull()Lio/github/toyota32k/utils/android/RefBitmap;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;
    .locals 0

    .line 140
    invoke-virtual {p0, p1, p2}, Lio/github/toyota32k/utils/android/RefBitmapHolder;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Lio/github/toyota32k/utils/android/RefBitmap;

    move-result-object p1

    return-object p1
.end method

.method public final reset()V
    .locals 1

    .line 151
    iget-object v0, p0, Lio/github/toyota32k/utils/android/RefBitmapHolder;->refBitmap:Lio/github/toyota32k/utils/android/RefBitmap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lio/github/toyota32k/utils/android/RefBitmap;->release()V

    :cond_0
    const/4 v0, 0x0

    .line 152
    iput-object v0, p0, Lio/github/toyota32k/utils/android/RefBitmapHolder;->refBitmap:Lio/github/toyota32k/utils/android/RefBitmap;

    return-void
.end method

.method public final set(Lio/github/toyota32k/utils/android/RefBitmap;)V
    .locals 1

    .line 146
    iget-object v0, p0, Lio/github/toyota32k/utils/android/RefBitmapHolder;->refBitmap:Lio/github/toyota32k/utils/android/RefBitmap;

    if-eqz p1, :cond_0

    .line 147
    invoke-virtual {p1}, Lio/github/toyota32k/utils/android/RefBitmap;->addRef()Lio/github/toyota32k/utils/android/RefBitmap;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lio/github/toyota32k/utils/android/RefBitmapHolder;->refBitmap:Lio/github/toyota32k/utils/android/RefBitmap;

    if-eqz v0, :cond_1

    .line 148
    invoke-virtual {v0}, Lio/github/toyota32k/utils/android/RefBitmap;->release()V

    :cond_1
    return-void
.end method

.method public setValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;Lio/github/toyota32k/utils/android/RefBitmap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/reflect/KProperty<",
            "*>;",
            "Lio/github/toyota32k/utils/android/RefBitmap;",
            ")V"
        }
    .end annotation

    const-string v0, "thisRef"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "property"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 181
    invoke-virtual {p0, p3}, Lio/github/toyota32k/utils/android/RefBitmapHolder;->set(Lio/github/toyota32k/utils/android/RefBitmap;)V

    return-void
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;Ljava/lang/Object;)V
    .locals 0

    .line 140
    check-cast p3, Lio/github/toyota32k/utils/android/RefBitmap;

    invoke-virtual {p0, p1, p2, p3}, Lio/github/toyota32k/utils/android/RefBitmapHolder;->setValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;Lio/github/toyota32k/utils/android/RefBitmap;)V

    return-void
.end method
