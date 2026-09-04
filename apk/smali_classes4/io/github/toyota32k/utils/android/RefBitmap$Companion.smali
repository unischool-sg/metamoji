.class public final Lio/github/toyota32k/utils/android/RefBitmap$Companion;
.super Ljava/lang/Object;
.source "RefBitmap.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/github/toyota32k/utils/android/RefBitmap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\n\u0010\u0004\u001a\u00020\u0005*\u00020\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "Lio/github/toyota32k/utils/android/RefBitmap$Companion;",
        "",
        "<init>",
        "()V",
        "toRef",
        "Lio/github/toyota32k/utils/android/RefBitmap;",
        "Landroid/graphics/Bitmap;",
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


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lio/github/toyota32k/utils/android/RefBitmap$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final toRef(Landroid/graphics/Bitmap;)Lio/github/toyota32k/utils/android/RefBitmap;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 126
    new-instance v0, Lio/github/toyota32k/utils/android/RefBitmap;

    invoke-direct {v0, p1}, Lio/github/toyota32k/utils/android/RefBitmap;-><init>(Landroid/graphics/Bitmap;)V

    return-object v0
.end method
