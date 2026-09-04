.class public final Lio/github/toyota32k/utils/android/LazyRefBitmapHolder;
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
    value = "SMAP\nRefBitmap.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RefBitmap.kt\nio/github/toyota32k/utils/android/LazyRefBitmapHolder\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,242:1\n1#2:243\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u00020\u00012\u00020\u00022\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003B\u0007\u00a2\u0006\u0004\u0008\u0006\u0010\u0007B\u0011\u0008\u0016\u0012\u0006\u0010\u0008\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0006\u0010\tJ\u0008\u0010\u0010\u001a\u00020\u0011H\u0016J\u0008\u0010\u0012\u001a\u00020\u0011H\u0016J\u001e\u0010\u0013\u001a\u00020\u00052\u0006\u0010\u0014\u001a\u00020\u00042\n\u0010\u0015\u001a\u0006\u0012\u0002\u0008\u00030\u0016H\u0096\u0082\u0004J&\u0010\u0017\u001a\u00020\u00112\u0006\u0010\u0014\u001a\u00020\u00042\n\u0010\u0015\u001a\u0006\u0012\u0002\u0008\u00030\u00162\u0006\u0010\u0018\u001a\u00020\u0005H\u0096\u0082\u0004R\u001a\u0010\n\u001a\u00020\u0005X\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\tR\u0016\u0010\u000e\u001a\u0004\u0018\u00010\u00058BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000f\u0010\u000c\u00a8\u0006\u0019"
    }
    d2 = {
        "Lio/github/toyota32k/utils/android/LazyRefBitmapHolder;",
        "Ljava/io/Closeable;",
        "Lio/github/toyota32k/utils/IDisposable;",
        "Lkotlin/properties/ReadWriteProperty;",
        "",
        "Lio/github/toyota32k/utils/android/RefBitmap;",
        "<init>",
        "()V",
        "bx",
        "(Lio/github/toyota32k/utils/android/RefBitmap;)V",
        "refBitmap",
        "getRefBitmap",
        "()Lio/github/toyota32k/utils/android/RefBitmap;",
        "setRefBitmap",
        "actRefBitmap",
        "getActRefBitmap",
        "close",
        "",
        "dispose",
        "getValue",
        "thisRef",
        "property",
        "Lkotlin/reflect/KProperty;",
        "setValue",
        "value",
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
.field public refBitmap:Lio/github/toyota32k/utils/android/RefBitmap;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 191
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lio/github/toyota32k/utils/android/RefBitmap;)V
    .locals 1

    const-string v0, "bx"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 192
    invoke-direct {p0}, Lio/github/toyota32k/utils/android/LazyRefBitmapHolder;-><init>()V

    invoke-virtual {p1}, Lio/github/toyota32k/utils/android/RefBitmap;->addRef()Lio/github/toyota32k/utils/android/RefBitmap;

    invoke-virtual {p0, p1}, Lio/github/toyota32k/utils/android/LazyRefBitmapHolder;->setRefBitmap(Lio/github/toyota32k/utils/android/RefBitmap;)V

    return-void
.end method

.method private final getActRefBitmap()Lio/github/toyota32k/utils/android/RefBitmap;
    .locals 1

    .line 196
    iget-object v0, p0, Lio/github/toyota32k/utils/android/LazyRefBitmapHolder;->refBitmap:Lio/github/toyota32k/utils/android/RefBitmap;

    if-eqz v0, :cond_0

    .line 197
    invoke-virtual {p0}, Lio/github/toyota32k/utils/android/LazyRefBitmapHolder;->getRefBitmap()Lio/github/toyota32k/utils/android/RefBitmap;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 203
    invoke-direct {p0}, Lio/github/toyota32k/utils/android/LazyRefBitmapHolder;->getActRefBitmap()Lio/github/toyota32k/utils/android/RefBitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lio/github/toyota32k/utils/android/RefBitmap;->release()V

    :cond_0
    return-void
.end method

.method public dispose()V
    .locals 1

    .line 207
    invoke-direct {p0}, Lio/github/toyota32k/utils/android/LazyRefBitmapHolder;->getActRefBitmap()Lio/github/toyota32k/utils/android/RefBitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lio/github/toyota32k/utils/android/RefBitmap;->release()V

    :cond_0
    return-void
.end method

.method public final getRefBitmap()Lio/github/toyota32k/utils/android/RefBitmap;
    .locals 1

    .line 193
    iget-object v0, p0, Lio/github/toyota32k/utils/android/LazyRefBitmapHolder;->refBitmap:Lio/github/toyota32k/utils/android/RefBitmap;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "refBitmap"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

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

    .line 211
    invoke-virtual {p0}, Lio/github/toyota32k/utils/android/LazyRefBitmapHolder;->getRefBitmap()Lio/github/toyota32k/utils/android/RefBitmap;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;
    .locals 0

    .line 191
    invoke-virtual {p0, p1, p2}, Lio/github/toyota32k/utils/android/LazyRefBitmapHolder;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Lio/github/toyota32k/utils/android/RefBitmap;

    move-result-object p1

    return-object p1
.end method

.method public final setRefBitmap(Lio/github/toyota32k/utils/android/RefBitmap;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 193
    iput-object p1, p0, Lio/github/toyota32k/utils/android/LazyRefBitmapHolder;->refBitmap:Lio/github/toyota32k/utils/android/RefBitmap;

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

    const-string p1, "value"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 215
    invoke-direct {p0}, Lio/github/toyota32k/utils/android/LazyRefBitmapHolder;->getActRefBitmap()Lio/github/toyota32k/utils/android/RefBitmap;

    move-result-object p1

    .line 216
    invoke-virtual {p3}, Lio/github/toyota32k/utils/android/RefBitmap;->addRef()Lio/github/toyota32k/utils/android/RefBitmap;

    invoke-virtual {p0, p3}, Lio/github/toyota32k/utils/android/LazyRefBitmapHolder;->setRefBitmap(Lio/github/toyota32k/utils/android/RefBitmap;)V

    if-eqz p1, :cond_0

    .line 217
    invoke-virtual {p1}, Lio/github/toyota32k/utils/android/RefBitmap;->release()V

    :cond_0
    return-void
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;Ljava/lang/Object;)V
    .locals 0

    .line 191
    check-cast p3, Lio/github/toyota32k/utils/android/RefBitmap;

    invoke-virtual {p0, p1, p2, p3}, Lio/github/toyota32k/utils/android/LazyRefBitmapHolder;->setValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;Lio/github/toyota32k/utils/android/RefBitmap;)V

    return-void
.end method
