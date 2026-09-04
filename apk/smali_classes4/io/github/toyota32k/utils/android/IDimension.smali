.class public interface abstract Lio/github/toyota32k/utils/android/IDimension;
.super Ljava/lang/Object;
.source "StyledAttrRetriever.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/github/toyota32k/utils/android/IDimension$DefaultImpls;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0010\u0007\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008f\u0018\u00002\u00020\u0001J\u0011\u0010\u0002\u001a\u00020\u00002\u0006\u0010\u0003\u001a\u00020\u0004H\u00a6\u0002J\u0011\u0010\u0002\u001a\u00020\u00002\u0006\u0010\u0003\u001a\u00020\u0005H\u00a6\u0002J\u0011\u0010\u0006\u001a\u00020\u00002\u0006\u0010\u0003\u001a\u00020\u0004H\u00a6\u0002J\u0011\u0010\u0006\u001a\u00020\u00002\u0006\u0010\u0003\u001a\u00020\u0005H\u00a6\u0002J\t\u0010\u0007\u001a\u00020\u0000H\u0096\u0002J\u0010\u0010\u0008\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\nH&J\u0010\u0010\u000b\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\nH&\u00a8\u0006\u000c\u00c0\u0006\u0003"
    }
    d2 = {
        "Lio/github/toyota32k/utils/android/IDimension;",
        "",
        "div",
        "v",
        "",
        "",
        "times",
        "unaryMinus",
        "dp",
        "context",
        "Landroid/content/Context;",
        "px",
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
.method public static synthetic access$unaryMinus$jd(Lio/github/toyota32k/utils/android/IDimension;)Lio/github/toyota32k/utils/android/IDimension;
    .locals 0

    .line 274
    invoke-super {p0}, Lio/github/toyota32k/utils/android/IDimension;->unaryMinus()Lio/github/toyota32k/utils/android/IDimension;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public abstract div(F)Lio/github/toyota32k/utils/android/IDimension;
.end method

.method public abstract div(I)Lio/github/toyota32k/utils/android/IDimension;
.end method

.method public abstract dp(Landroid/content/Context;)I
.end method

.method public abstract px(Landroid/content/Context;)I
.end method

.method public abstract times(F)Lio/github/toyota32k/utils/android/IDimension;
.end method

.method public abstract times(I)Lio/github/toyota32k/utils/android/IDimension;
.end method

.method public unaryMinus()Lio/github/toyota32k/utils/android/IDimension;
    .locals 1

    const/4 v0, -0x1

    .line 279
    invoke-interface {p0, v0}, Lio/github/toyota32k/utils/android/IDimension;->times(I)Lio/github/toyota32k/utils/android/IDimension;

    move-result-object v0

    return-object v0
.end method
