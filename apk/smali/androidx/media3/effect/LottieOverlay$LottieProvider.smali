.class public interface abstract Landroidx/media3/effect/LottieOverlay$LottieProvider;
.super Ljava/lang/Object;
.source "LottieOverlay.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/effect/LottieOverlay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "LottieProvider"
.end annotation


# virtual methods
.method public getFontMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/graphics/Typeface;",
            ">;"
        }
    .end annotation

    .line 72
    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->of()Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    return-object v0
.end method

.method public getImageAssetDelegate()Lcom/airbnb/lottie/ImageAssetDelegate;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract getLottieComposition()Lcom/airbnb/lottie/LottieComposition;
.end method

.method public abstract release()V
.end method
