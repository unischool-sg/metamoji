.class public Lcom/metamoji/video/AmvFitter;
.super Ljava/lang/Object;
.source "AmvFitter.kt"

# interfaces
.implements Lcom/metamoji/video/IAmvLayoutHint;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u0007\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0016\u0018\u00002\u00020\u0001B\u001b\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u001e\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0014\u001a\u00020\r2\u0006\u0010\u0015\u001a\u00020\rJ\u0016\u0010\u0016\u001a\u00020\u00132\u0006\u0010\u0017\u001a\u00020\u00052\u0006\u0010\u0018\u001a\u00020\u0005J\u0016\u0010\u0016\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\r2\u0006\u0010\u001b\u001a\u00020\rR\u001a\u0010\u0002\u001a\u00020\u0003X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0008\u0010\t\"\u0004\u0008\n\u0010\u000bR\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000c\u001a\u00020\r8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000e\u0010\u000fR\u0014\u0010\u0010\u001a\u00020\r8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0011\u0010\u000f\u00a8\u0006\u001c"
    }
    d2 = {
        "Lcom/metamoji/video/AmvFitter;",
        "Lcom/metamoji/video/IAmvLayoutHint;",
        "fitMode",
        "Lcom/metamoji/video/FitMode;",
        "layoutSize",
        "Lcom/metamoji/video/MuSize;",
        "<init>",
        "(Lcom/metamoji/video/FitMode;Lcom/metamoji/video/MuSize;)V",
        "getFitMode",
        "()Lcom/metamoji/video/FitMode;",
        "setFitMode",
        "(Lcom/metamoji/video/FitMode;)V",
        "layoutWidth",
        "",
        "getLayoutWidth",
        "()F",
        "layoutHeight",
        "getLayoutHeight",
        "setHint",
        "",
        "width",
        "height",
        "fit",
        "original",
        "result",
        "Lcom/metamoji/video/ImSize;",
        "w",
        "h",
        "video"
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
.field private fitMode:Lcom/metamoji/video/FitMode;

.field private layoutSize:Lcom/metamoji/video/MuSize;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x3

    invoke-direct {p0, v0, v0, v1, v0}, Lcom/metamoji/video/AmvFitter;-><init>(Lcom/metamoji/video/FitMode;Lcom/metamoji/video/MuSize;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/metamoji/video/FitMode;Lcom/metamoji/video/MuSize;)V
    .locals 1

    const-string v0, "fitMode"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "layoutSize"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/metamoji/video/AmvFitter;->fitMode:Lcom/metamoji/video/FitMode;

    iput-object p2, p0, Lcom/metamoji/video/AmvFitter;->layoutSize:Lcom/metamoji/video/MuSize;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/metamoji/video/FitMode;Lcom/metamoji/video/MuSize;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    .line 55
    sget-object p1, Lcom/metamoji/video/FitMode;->Inside:Lcom/metamoji/video/FitMode;

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    new-instance p2, Lcom/metamoji/video/MuSize;

    const/high16 p3, 0x447a0000    # 1000.0f

    invoke-direct {p2, p3, p3}, Lcom/metamoji/video/MuSize;-><init>(FF)V

    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/metamoji/video/AmvFitter;-><init>(Lcom/metamoji/video/FitMode;Lcom/metamoji/video/MuSize;)V

    return-void
.end method


# virtual methods
.method public final fit(FF)Lcom/metamoji/video/ImSize;
    .locals 2

    .line 73
    new-instance v0, Lcom/metamoji/video/MuSize;

    invoke-direct {v0}, Lcom/metamoji/video/MuSize;-><init>()V

    .line 74
    new-instance v1, Lcom/metamoji/video/MuSize;

    invoke-direct {v1, p1, p2}, Lcom/metamoji/video/MuSize;-><init>(FF)V

    invoke-virtual {p0, v1, v0}, Lcom/metamoji/video/AmvFitter;->fit(Lcom/metamoji/video/MuSize;Lcom/metamoji/video/MuSize;)V

    .line 75
    check-cast v0, Lcom/metamoji/video/ImSize;

    return-object v0
.end method

.method public final fit(Lcom/metamoji/video/MuSize;Lcom/metamoji/video/MuSize;)V
    .locals 2

    const-string v0, "original"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "result"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    iget-object v0, p0, Lcom/metamoji/video/AmvFitter;->layoutSize:Lcom/metamoji/video/MuSize;

    invoke-virtual {p0}, Lcom/metamoji/video/AmvFitter;->getFitMode()Lcom/metamoji/video/FitMode;

    move-result-object v1

    invoke-static {p1, v0, v1, p2}, Lcom/metamoji/video/AmvFitterKt;->fitSizeTo(Lcom/metamoji/video/MuSize;Lcom/metamoji/video/MuSize;Lcom/metamoji/video/FitMode;Lcom/metamoji/video/MuSize;)V

    return-void
.end method

.method public getFitMode()Lcom/metamoji/video/FitMode;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/metamoji/video/AmvFitter;->fitMode:Lcom/metamoji/video/FitMode;

    return-object v0
.end method

.method public getLayoutHeight()F
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/metamoji/video/AmvFitter;->layoutSize:Lcom/metamoji/video/MuSize;

    invoke-virtual {v0}, Lcom/metamoji/video/MuSize;->getHeight()F

    move-result v0

    return v0
.end method

.method public getLayoutWidth()F
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/metamoji/video/AmvFitter;->layoutSize:Lcom/metamoji/video/MuSize;

    invoke-virtual {v0}, Lcom/metamoji/video/MuSize;->getWidth()F

    move-result v0

    return v0
.end method

.method public setFitMode(Lcom/metamoji/video/FitMode;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    iput-object p1, p0, Lcom/metamoji/video/AmvFitter;->fitMode:Lcom/metamoji/video/FitMode;

    return-void
.end method

.method public final setHint(Lcom/metamoji/video/FitMode;FF)V
    .locals 1

    const-string v0, "fitMode"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    invoke-virtual {p0, p1}, Lcom/metamoji/video/AmvFitter;->setFitMode(Lcom/metamoji/video/FitMode;)V

    .line 64
    iget-object p1, p0, Lcom/metamoji/video/AmvFitter;->layoutSize:Lcom/metamoji/video/MuSize;

    invoke-virtual {p1, p2}, Lcom/metamoji/video/MuSize;->setWidth(F)V

    .line 65
    iget-object p1, p0, Lcom/metamoji/video/AmvFitter;->layoutSize:Lcom/metamoji/video/MuSize;

    invoke-virtual {p1, p3}, Lcom/metamoji/video/MuSize;->setHeight(F)V

    return-void
.end method
