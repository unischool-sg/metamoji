.class public final Lio/github/toyota32k/utils/android/RGB$Companion;
.super Ljava/lang/Object;
.source "ColorExt.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/github/toyota32k/utils/android/RGB;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0010\t\n\u0002\u0008\u000c\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0010\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0001\u0010\u0006\u001a\u00020\u0007J\u000e\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0008J\u0012\u0010\u000e\u001a\u00020\u00072\u0008\u0008\u0001\u0010\u0006\u001a\u00020\u0007H\u0007J\u0010\u0010\u000e\u001a\u00020\u00072\u0006\u0010\u0006\u001a\u00020\u0008H\u0007J\u0012\u0010\u000f\u001a\u00020\u00072\u0008\u0008\u0001\u0010\u0006\u001a\u00020\u0007H\u0007J\u0010\u0010\u000f\u001a\u00020\u00072\u0006\u0010\u0006\u001a\u00020\u0008H\u0007J\u001c\u0010\u0010\u001a\u00020\u00072\u0008\u0008\u0001\u0010\u0011\u001a\u00020\u00072\u0008\u0008\u0001\u0010\u0012\u001a\u00020\u0007H\u0007J\u0018\u0010\u0010\u001a\u00020\u00072\u0006\u0010\u0011\u001a\u00020\u00082\u0006\u0010\u0012\u001a\u00020\u0008H\u0007J\u0012\u0010\u0013\u001a\u00020\u00072\u0008\u0008\u0001\u0010\u0006\u001a\u00020\u0007H\u0007J\u0010\u0010\u0013\u001a\u00020\u00072\u0006\u0010\u0006\u001a\u00020\u0008H\u0007R\u0011\u0010\t\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bR\u0011\u0010\u000c\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000b\u00a8\u0006\u0014"
    }
    d2 = {
        "Lio/github/toyota32k/utils/android/RGB$Companion;",
        "",
        "<init>",
        "()V",
        "opaque",
        "Lio/github/toyota32k/utils/android/RGB;",
        "rgba",
        "",
        "",
        "black",
        "getBlack",
        "()Lio/github/toyota32k/utils/android/RGB;",
        "white",
        "getWhite",
        "darken",
        "lighten",
        "brend",
        "rgba1",
        "rgba2",
        "grayScale",
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

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lio/github/toyota32k/utils/android/RGB$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final brend(II)I
    .locals 1

    .line 58
    new-instance v0, Lio/github/toyota32k/utils/android/RGB;

    invoke-direct {v0, p1}, Lio/github/toyota32k/utils/android/RGB;-><init>(I)V

    new-instance p1, Lio/github/toyota32k/utils/android/RGB;

    invoke-direct {p1, p2}, Lio/github/toyota32k/utils/android/RGB;-><init>(I)V

    invoke-virtual {v0, p1}, Lio/github/toyota32k/utils/android/RGB;->brend(Lio/github/toyota32k/utils/android/RGB;)Lio/github/toyota32k/utils/android/RGB;

    move-result-object p1

    invoke-virtual {p1}, Lio/github/toyota32k/utils/android/RGB;->toColor()I

    move-result p1

    return p1
.end method

.method public final brend(JJ)I
    .locals 1

    .line 62
    new-instance v0, Lio/github/toyota32k/utils/android/RGB;

    invoke-direct {v0, p1, p2}, Lio/github/toyota32k/utils/android/RGB;-><init>(J)V

    new-instance p1, Lio/github/toyota32k/utils/android/RGB;

    invoke-direct {p1, p3, p4}, Lio/github/toyota32k/utils/android/RGB;-><init>(J)V

    invoke-virtual {v0, p1}, Lio/github/toyota32k/utils/android/RGB;->brend(Lio/github/toyota32k/utils/android/RGB;)Lio/github/toyota32k/utils/android/RGB;

    move-result-object p1

    invoke-virtual {p1}, Lio/github/toyota32k/utils/android/RGB;->toColor()I

    move-result p1

    return p1
.end method

.method public final darken(I)I
    .locals 1

    .line 42
    new-instance v0, Lio/github/toyota32k/utils/android/RGB;

    invoke-direct {v0, p1}, Lio/github/toyota32k/utils/android/RGB;-><init>(I)V

    invoke-virtual {p0}, Lio/github/toyota32k/utils/android/RGB$Companion;->getBlack()Lio/github/toyota32k/utils/android/RGB;

    move-result-object p1

    invoke-virtual {v0, p1}, Lio/github/toyota32k/utils/android/RGB;->brend(Lio/github/toyota32k/utils/android/RGB;)Lio/github/toyota32k/utils/android/RGB;

    move-result-object p1

    invoke-virtual {p1}, Lio/github/toyota32k/utils/android/RGB;->toColor()I

    move-result p1

    return p1
.end method

.method public final darken(J)I
    .locals 1

    .line 46
    new-instance v0, Lio/github/toyota32k/utils/android/RGB;

    invoke-direct {v0, p1, p2}, Lio/github/toyota32k/utils/android/RGB;-><init>(J)V

    invoke-virtual {p0}, Lio/github/toyota32k/utils/android/RGB$Companion;->getBlack()Lio/github/toyota32k/utils/android/RGB;

    move-result-object p1

    invoke-virtual {v0, p1}, Lio/github/toyota32k/utils/android/RGB;->brend(Lio/github/toyota32k/utils/android/RGB;)Lio/github/toyota32k/utils/android/RGB;

    move-result-object p1

    invoke-virtual {p1}, Lio/github/toyota32k/utils/android/RGB;->toColor()I

    move-result p1

    return p1
.end method

.method public final getBlack()Lio/github/toyota32k/utils/android/RGB;
    .locals 1

    .line 37
    invoke-static {}, Lio/github/toyota32k/utils/android/RGB;->access$getBlack$cp()Lio/github/toyota32k/utils/android/RGB;

    move-result-object v0

    return-object v0
.end method

.method public final getWhite()Lio/github/toyota32k/utils/android/RGB;
    .locals 1

    .line 38
    invoke-static {}, Lio/github/toyota32k/utils/android/RGB;->access$getWhite$cp()Lio/github/toyota32k/utils/android/RGB;

    move-result-object v0

    return-object v0
.end method

.method public final grayScale(I)I
    .locals 1

    .line 67
    new-instance v0, Lio/github/toyota32k/utils/android/RGB;

    invoke-direct {v0, p1}, Lio/github/toyota32k/utils/android/RGB;-><init>(I)V

    invoke-virtual {v0}, Lio/github/toyota32k/utils/android/RGB;->grayScale()Lio/github/toyota32k/utils/android/RGB;

    move-result-object p1

    invoke-virtual {p1}, Lio/github/toyota32k/utils/android/RGB;->toColor()I

    move-result p1

    return p1
.end method

.method public final grayScale(J)I
    .locals 1

    .line 71
    new-instance v0, Lio/github/toyota32k/utils/android/RGB;

    invoke-direct {v0, p1, p2}, Lio/github/toyota32k/utils/android/RGB;-><init>(J)V

    invoke-virtual {v0}, Lio/github/toyota32k/utils/android/RGB;->grayScale()Lio/github/toyota32k/utils/android/RGB;

    move-result-object p1

    invoke-virtual {p1}, Lio/github/toyota32k/utils/android/RGB;->toColor()I

    move-result p1

    return p1
.end method

.method public final lighten(I)I
    .locals 1

    .line 50
    new-instance v0, Lio/github/toyota32k/utils/android/RGB;

    invoke-direct {v0, p1}, Lio/github/toyota32k/utils/android/RGB;-><init>(I)V

    invoke-virtual {p0}, Lio/github/toyota32k/utils/android/RGB$Companion;->getWhite()Lio/github/toyota32k/utils/android/RGB;

    move-result-object p1

    invoke-virtual {v0, p1}, Lio/github/toyota32k/utils/android/RGB;->brend(Lio/github/toyota32k/utils/android/RGB;)Lio/github/toyota32k/utils/android/RGB;

    move-result-object p1

    invoke-virtual {p1}, Lio/github/toyota32k/utils/android/RGB;->toColor()I

    move-result p1

    return p1
.end method

.method public final lighten(J)I
    .locals 1

    .line 54
    new-instance v0, Lio/github/toyota32k/utils/android/RGB;

    invoke-direct {v0, p1, p2}, Lio/github/toyota32k/utils/android/RGB;-><init>(J)V

    invoke-virtual {p0}, Lio/github/toyota32k/utils/android/RGB$Companion;->getWhite()Lio/github/toyota32k/utils/android/RGB;

    move-result-object p1

    invoke-virtual {v0, p1}, Lio/github/toyota32k/utils/android/RGB;->brend(Lio/github/toyota32k/utils/android/RGB;)Lio/github/toyota32k/utils/android/RGB;

    move-result-object p1

    invoke-virtual {p1}, Lio/github/toyota32k/utils/android/RGB;->toColor()I

    move-result p1

    return p1
.end method

.method public final opaque(I)Lio/github/toyota32k/utils/android/RGB;
    .locals 4

    .line 31
    new-instance v0, Lio/github/toyota32k/utils/android/RGB;

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v1

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v2

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result p1

    const/16 v3, 0xff

    invoke-direct {v0, v1, v2, p1, v3}, Lio/github/toyota32k/utils/android/RGB;-><init>(IIII)V

    return-object v0
.end method

.method public final opaque(J)Lio/github/toyota32k/utils/android/RGB;
    .locals 0

    long-to-int p1, p1

    .line 34
    invoke-virtual {p0, p1}, Lio/github/toyota32k/utils/android/RGB$Companion;->opaque(I)Lio/github/toyota32k/utils/android/RGB;

    move-result-object p1

    return-object p1
.end method
