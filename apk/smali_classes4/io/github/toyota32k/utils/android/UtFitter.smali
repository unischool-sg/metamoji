.class public final Lio/github/toyota32k/utils/android/UtFitter;
.super Ljava/lang/Object;
.source "UtFitter.kt"

# interfaces
.implements Lio/github/toyota32k/utils/android/IUtLayoutHint;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000e\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0016\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0007\u0010\u0008B\t\u0008\u0016\u00a2\u0006\u0004\u0008\u0007\u0010\tB\u0011\u0008\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0007\u0010\nB!\u0008\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u000b\u0012\u0006\u0010\u0006\u001a\u00020\u000b\u00a2\u0006\u0004\u0008\u0007\u0010\u000cB\u0019\u0008\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\r\u001a\u00020\u000e\u00a2\u0006\u0004\u0008\u0007\u0010\u000fB\u0019\u0008\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\r\u001a\u00020\u0010\u00a2\u0006\u0004\u0008\u0007\u0010\u0011J\u000e\u00102\u001a\u00020\u00002\u0006\u0010\u0002\u001a\u00020\u0003J\u000e\u0010\u0017\u001a\u00020\u00002\u0006\u00103\u001a\u00020\u0005J\u000e\u0010\u0017\u001a\u00020\u00002\u0006\u00103\u001a\u00020\u000bJ\u000e\u0010\u001a\u001a\u00020\u00002\u0006\u00104\u001a\u00020\u0005J\u000e\u0010\u001a\u001a\u00020\u00002\u0006\u00104\u001a\u00020\u000bJ\u0016\u00105\u001a\u00020\u00002\u0006\u00103\u001a\u00020\u00052\u0006\u00104\u001a\u00020\u0005J\u0016\u00105\u001a\u00020\u00002\u0006\u00103\u001a\u00020\u000b2\u0006\u00104\u001a\u00020\u000bJ\u000e\u00105\u001a\u00020\u00002\u0006\u00106\u001a\u00020\u000eJ\u000e\u00105\u001a\u00020\u00002\u0006\u00106\u001a\u00020\u0010J\u000e\u00107\u001a\u00020\u00002\u0006\u00108\u001a\u00020\u000eJ\u000e\u00107\u001a\u00020\u00002\u0006\u00108\u001a\u00020\u0010J\u0016\u00107\u001a\u00020\u00002\u0006\u00109\u001a\u00020\u000b2\u0006\u0010:\u001a\u00020\u000bJ\u0016\u00107\u001a\u00020\u00002\u0006\u00109\u001a\u00020\u00052\u0006\u0010:\u001a\u00020\u0005R\u001a\u0010\u0002\u001a\u00020\u0003X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013\"\u0004\u0008\u0014\u0010\nR\u001a\u0010\u0004\u001a\u00020\u0005X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0015\u0010\u0016\"\u0004\u0008\u0017\u0010\u0018R\u001a\u0010\u0006\u001a\u00020\u0005X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0019\u0010\u0016\"\u0004\u0008\u001a\u0010\u0018R\u001e\u0010\u001c\u001a\u00020\u00052\u0006\u0010\u001b\u001a\u00020\u0005@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001d\u0010\u0016R\u0011\u0010\u001e\u001a\u00020\u001f8F\u00a2\u0006\u0006\u001a\u0004\u0008 \u0010!R\u0011\u0010\"\u001a\u00020\u001f8F\u00a2\u0006\u0006\u001a\u0004\u0008#\u0010!R\u0011\u0010$\u001a\u00020%\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008&\u0010\'R\u0011\u0010(\u001a\u00020\u000e8F\u00a2\u0006\u0006\u001a\u0004\u0008)\u0010*R\u0011\u0010+\u001a\u00020\u00108F\u00a2\u0006\u0006\u001a\u0004\u0008,\u0010-R\u0011\u0010.\u001a\u00020\u00058F\u00a2\u0006\u0006\u001a\u0004\u0008/\u0010\u0016R\u0011\u00100\u001a\u00020\u00058F\u00a2\u0006\u0006\u001a\u0004\u00081\u0010\u0016\u00a8\u0006;"
    }
    d2 = {
        "Lio/github/toyota32k/utils/android/UtFitter;",
        "Lio/github/toyota32k/utils/android/IUtLayoutHint;",
        "fitMode",
        "Lio/github/toyota32k/utils/android/FitMode;",
        "layoutWidth",
        "",
        "layoutHeight",
        "<init>",
        "(Lio/github/toyota32k/utils/android/FitMode;FF)V",
        "()V",
        "(Lio/github/toyota32k/utils/android/FitMode;)V",
        "",
        "(Lio/github/toyota32k/utils/android/FitMode;II)V",
        "layoutSize",
        "Landroid/util/Size;",
        "(Lio/github/toyota32k/utils/android/FitMode;Landroid/util/Size;)V",
        "Landroid/util/SizeF;",
        "(Lio/github/toyota32k/utils/android/FitMode;Landroid/util/SizeF;)V",
        "getFitMode",
        "()Lio/github/toyota32k/utils/android/FitMode;",
        "setFitMode",
        "getLayoutWidth",
        "()F",
        "setLayoutWidth",
        "(F)V",
        "getLayoutHeight",
        "setLayoutHeight",
        "value",
        "ratio",
        "getRatio",
        "inflated",
        "",
        "getInflated",
        "()Z",
        "deflated",
        "getDeflated",
        "result",
        "Lio/github/toyota32k/utils/android/MuSize;",
        "getResult",
        "()Lio/github/toyota32k/utils/android/MuSize;",
        "resultSize",
        "getResultSize",
        "()Landroid/util/Size;",
        "resultSizeF",
        "getResultSizeF",
        "()Landroid/util/SizeF;",
        "resultWidth",
        "getResultWidth",
        "resultHeight",
        "getResultHeight",
        "setMode",
        "width",
        "height",
        "setLayoutSize",
        "size",
        "fit",
        "src",
        "srcWidth",
        "srcHeight",
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
.field private fitMode:Lio/github/toyota32k/utils/android/FitMode;

.field private layoutHeight:F

.field private layoutWidth:F

.field private ratio:F

.field private final result:Lio/github/toyota32k/utils/android/MuSize;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 102
    sget-object v0, Lio/github/toyota32k/utils/android/FitMode;->Inside:Lio/github/toyota32k/utils/android/FitMode;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {p0, v0, v1, v1}, Lio/github/toyota32k/utils/android/UtFitter;-><init>(Lio/github/toyota32k/utils/android/FitMode;FF)V

    return-void
.end method

.method public constructor <init>(Lio/github/toyota32k/utils/android/FitMode;)V
    .locals 1

    const-string v0, "fitMode"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 103
    invoke-direct {p0, p1, v0, v0}, Lio/github/toyota32k/utils/android/UtFitter;-><init>(Lio/github/toyota32k/utils/android/FitMode;FF)V

    return-void
.end method

.method public constructor <init>(Lio/github/toyota32k/utils/android/FitMode;FF)V
    .locals 1

    const-string v0, "fitMode"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/github/toyota32k/utils/android/UtFitter;->fitMode:Lio/github/toyota32k/utils/android/FitMode;

    iput p2, p0, Lio/github/toyota32k/utils/android/UtFitter;->layoutWidth:F

    iput p3, p0, Lio/github/toyota32k/utils/android/UtFitter;->layoutHeight:F

    const/high16 p1, 0x3f800000    # 1.0f

    .line 108
    iput p1, p0, Lio/github/toyota32k/utils/android/UtFitter;->ratio:F

    .line 113
    new-instance p1, Lio/github/toyota32k/utils/android/MuSize;

    invoke-direct {p1}, Lio/github/toyota32k/utils/android/MuSize;-><init>()V

    iput-object p1, p0, Lio/github/toyota32k/utils/android/UtFitter;->result:Lio/github/toyota32k/utils/android/MuSize;

    return-void
.end method

.method public constructor <init>(Lio/github/toyota32k/utils/android/FitMode;II)V
    .locals 1

    const-string v0, "fitMode"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    int-to-float p2, p2

    int-to-float p3, p3

    .line 104
    invoke-direct {p0, p1, p2, p3}, Lio/github/toyota32k/utils/android/UtFitter;-><init>(Lio/github/toyota32k/utils/android/FitMode;FF)V

    return-void
.end method

.method public constructor <init>(Lio/github/toyota32k/utils/android/FitMode;Landroid/util/Size;)V
    .locals 1

    const-string v0, "fitMode"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "layoutSize"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 105
    invoke-virtual {p2}, Landroid/util/Size;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p2}, Landroid/util/Size;->getHeight()I

    move-result p2

    int-to-float p2, p2

    invoke-direct {p0, p1, v0, p2}, Lio/github/toyota32k/utils/android/UtFitter;-><init>(Lio/github/toyota32k/utils/android/FitMode;FF)V

    return-void
.end method

.method public constructor <init>(Lio/github/toyota32k/utils/android/FitMode;Landroid/util/SizeF;)V
    .locals 1

    const-string v0, "fitMode"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "layoutSize"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 106
    invoke-virtual {p2}, Landroid/util/SizeF;->getWidth()F

    move-result v0

    invoke-virtual {p2}, Landroid/util/SizeF;->getHeight()F

    move-result p2

    invoke-direct {p0, p1, v0, p2}, Lio/github/toyota32k/utils/android/UtFitter;-><init>(Lio/github/toyota32k/utils/android/FitMode;FF)V

    return-void
.end method


# virtual methods
.method public final fit(FF)Lio/github/toyota32k/utils/android/UtFitter;
    .locals 6

    .line 166
    invoke-virtual {p0}, Lio/github/toyota32k/utils/android/UtFitter;->getLayoutWidth()F

    move-result v2

    invoke-virtual {p0}, Lio/github/toyota32k/utils/android/UtFitter;->getLayoutHeight()F

    move-result v3

    invoke-virtual {p0}, Lio/github/toyota32k/utils/android/UtFitter;->getFitMode()Lio/github/toyota32k/utils/android/FitMode;

    move-result-object v4

    iget-object v5, p0, Lio/github/toyota32k/utils/android/UtFitter;->result:Lio/github/toyota32k/utils/android/MuSize;

    move v0, p1

    move v1, p2

    invoke-static/range {v0 .. v5}, Lio/github/toyota32k/utils/android/UtFitterKt;->fitSizeTo(FFFFLio/github/toyota32k/utils/android/FitMode;Lio/github/toyota32k/utils/android/MuSize;)F

    move-result p1

    iput p1, p0, Lio/github/toyota32k/utils/android/UtFitter;->ratio:F

    return-object p0
.end method

.method public final fit(II)Lio/github/toyota32k/utils/android/UtFitter;
    .locals 6

    int-to-float v0, p1

    int-to-float v1, p2

    .line 162
    invoke-virtual {p0}, Lio/github/toyota32k/utils/android/UtFitter;->getLayoutWidth()F

    move-result v2

    invoke-virtual {p0}, Lio/github/toyota32k/utils/android/UtFitter;->getLayoutHeight()F

    move-result v3

    invoke-virtual {p0}, Lio/github/toyota32k/utils/android/UtFitter;->getFitMode()Lio/github/toyota32k/utils/android/FitMode;

    move-result-object v4

    iget-object v5, p0, Lio/github/toyota32k/utils/android/UtFitter;->result:Lio/github/toyota32k/utils/android/MuSize;

    invoke-static/range {v0 .. v5}, Lio/github/toyota32k/utils/android/UtFitterKt;->fitSizeTo(FFFFLio/github/toyota32k/utils/android/FitMode;Lio/github/toyota32k/utils/android/MuSize;)F

    move-result p1

    iput p1, p0, Lio/github/toyota32k/utils/android/UtFitter;->ratio:F

    return-object p0
.end method

.method public final fit(Landroid/util/Size;)Lio/github/toyota32k/utils/android/UtFitter;
    .locals 7

    const-string v0, "src"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 154
    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v0

    int-to-float v1, v0

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result p1

    int-to-float v2, p1

    invoke-virtual {p0}, Lio/github/toyota32k/utils/android/UtFitter;->getLayoutWidth()F

    move-result v3

    invoke-virtual {p0}, Lio/github/toyota32k/utils/android/UtFitter;->getLayoutHeight()F

    move-result v4

    invoke-virtual {p0}, Lio/github/toyota32k/utils/android/UtFitter;->getFitMode()Lio/github/toyota32k/utils/android/FitMode;

    move-result-object v5

    iget-object v6, p0, Lio/github/toyota32k/utils/android/UtFitter;->result:Lio/github/toyota32k/utils/android/MuSize;

    invoke-static/range {v1 .. v6}, Lio/github/toyota32k/utils/android/UtFitterKt;->fitSizeTo(FFFFLio/github/toyota32k/utils/android/FitMode;Lio/github/toyota32k/utils/android/MuSize;)F

    move-result p1

    iput p1, p0, Lio/github/toyota32k/utils/android/UtFitter;->ratio:F

    return-object p0
.end method

.method public final fit(Landroid/util/SizeF;)Lio/github/toyota32k/utils/android/UtFitter;
    .locals 7

    const-string v0, "src"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 158
    invoke-virtual {p1}, Landroid/util/SizeF;->getWidth()F

    move-result v1

    invoke-virtual {p1}, Landroid/util/SizeF;->getHeight()F

    move-result v2

    invoke-virtual {p0}, Lio/github/toyota32k/utils/android/UtFitter;->getLayoutWidth()F

    move-result v3

    invoke-virtual {p0}, Lio/github/toyota32k/utils/android/UtFitter;->getLayoutHeight()F

    move-result v4

    invoke-virtual {p0}, Lio/github/toyota32k/utils/android/UtFitter;->getFitMode()Lio/github/toyota32k/utils/android/FitMode;

    move-result-object v5

    iget-object v6, p0, Lio/github/toyota32k/utils/android/UtFitter;->result:Lio/github/toyota32k/utils/android/MuSize;

    invoke-static/range {v1 .. v6}, Lio/github/toyota32k/utils/android/UtFitterKt;->fitSizeTo(FFFFLio/github/toyota32k/utils/android/FitMode;Lio/github/toyota32k/utils/android/MuSize;)F

    move-result p1

    iput p1, p0, Lio/github/toyota32k/utils/android/UtFitter;->ratio:F

    return-object p0
.end method

.method public final getDeflated()Z
    .locals 2

    .line 111
    iget v0, p0, Lio/github/toyota32k/utils/android/UtFitter;->ratio:F

    const/4 v1, 0x0

    cmpg-float v1, v0, v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public getFitMode()Lio/github/toyota32k/utils/android/FitMode;
    .locals 1

    .line 100
    iget-object v0, p0, Lio/github/toyota32k/utils/android/UtFitter;->fitMode:Lio/github/toyota32k/utils/android/FitMode;

    return-object v0
.end method

.method public final getInflated()Z
    .locals 2

    .line 110
    iget v0, p0, Lio/github/toyota32k/utils/android/UtFitter;->ratio:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getLayoutHeight()F
    .locals 1

    .line 100
    iget v0, p0, Lio/github/toyota32k/utils/android/UtFitter;->layoutHeight:F

    return v0
.end method

.method public getLayoutWidth()F
    .locals 1

    .line 100
    iget v0, p0, Lio/github/toyota32k/utils/android/UtFitter;->layoutWidth:F

    return v0
.end method

.method public final getRatio()F
    .locals 1

    .line 108
    iget v0, p0, Lio/github/toyota32k/utils/android/UtFitter;->ratio:F

    return v0
.end method

.method public final getResult()Lio/github/toyota32k/utils/android/MuSize;
    .locals 1

    .line 113
    iget-object v0, p0, Lio/github/toyota32k/utils/android/UtFitter;->result:Lio/github/toyota32k/utils/android/MuSize;

    return-object v0
.end method

.method public final getResultHeight()F
    .locals 1

    .line 117
    iget-object v0, p0, Lio/github/toyota32k/utils/android/UtFitter;->result:Lio/github/toyota32k/utils/android/MuSize;

    invoke-virtual {v0}, Lio/github/toyota32k/utils/android/MuSize;->getHeight()F

    move-result v0

    return v0
.end method

.method public final getResultSize()Landroid/util/Size;
    .locals 1

    .line 114
    iget-object v0, p0, Lio/github/toyota32k/utils/android/UtFitter;->result:Lio/github/toyota32k/utils/android/MuSize;

    invoke-virtual {v0}, Lio/github/toyota32k/utils/android/MuSize;->getAsSize()Landroid/util/Size;

    move-result-object v0

    return-object v0
.end method

.method public final getResultSizeF()Landroid/util/SizeF;
    .locals 1

    .line 115
    iget-object v0, p0, Lio/github/toyota32k/utils/android/UtFitter;->result:Lio/github/toyota32k/utils/android/MuSize;

    invoke-virtual {v0}, Lio/github/toyota32k/utils/android/MuSize;->getAsSizeF()Landroid/util/SizeF;

    move-result-object v0

    return-object v0
.end method

.method public final getResultWidth()F
    .locals 1

    .line 116
    iget-object v0, p0, Lio/github/toyota32k/utils/android/UtFitter;->result:Lio/github/toyota32k/utils/android/MuSize;

    invoke-virtual {v0}, Lio/github/toyota32k/utils/android/MuSize;->getWidth()F

    move-result v0

    return v0
.end method

.method public setFitMode(Lio/github/toyota32k/utils/android/FitMode;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 100
    iput-object p1, p0, Lio/github/toyota32k/utils/android/UtFitter;->fitMode:Lio/github/toyota32k/utils/android/FitMode;

    return-void
.end method

.method public final setLayoutHeight(F)Lio/github/toyota32k/utils/android/UtFitter;
    .locals 0

    .line 134
    invoke-virtual {p0, p1}, Lio/github/toyota32k/utils/android/UtFitter;->setLayoutHeight(F)V

    return-object p0
.end method

.method public final setLayoutHeight(I)Lio/github/toyota32k/utils/android/UtFitter;
    .locals 0

    int-to-float p1, p1

    .line 138
    invoke-virtual {p0, p1}, Lio/github/toyota32k/utils/android/UtFitter;->setLayoutHeight(F)V

    return-object p0
.end method

.method public setLayoutHeight(F)V
    .locals 0

    .line 100
    iput p1, p0, Lio/github/toyota32k/utils/android/UtFitter;->layoutHeight:F

    return-void
.end method

.method public final setLayoutSize(FF)Lio/github/toyota32k/utils/android/UtFitter;
    .locals 0

    .line 142
    invoke-virtual {p0, p1}, Lio/github/toyota32k/utils/android/UtFitter;->setLayoutWidth(F)V

    .line 143
    invoke-virtual {p0, p2}, Lio/github/toyota32k/utils/android/UtFitter;->setLayoutHeight(F)V

    return-object p0
.end method

.method public final setLayoutSize(II)Lio/github/toyota32k/utils/android/UtFitter;
    .locals 0

    int-to-float p1, p1

    int-to-float p2, p2

    .line 147
    invoke-virtual {p0, p1, p2}, Lio/github/toyota32k/utils/android/UtFitter;->setLayoutSize(FF)Lio/github/toyota32k/utils/android/UtFitter;

    move-result-object p1

    return-object p1
.end method

.method public final setLayoutSize(Landroid/util/Size;)Lio/github/toyota32k/utils/android/UtFitter;
    .locals 1

    const-string v0, "size"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 149
    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result p1

    invoke-virtual {p0, v0, p1}, Lio/github/toyota32k/utils/android/UtFitter;->setLayoutSize(II)Lio/github/toyota32k/utils/android/UtFitter;

    move-result-object p1

    return-object p1
.end method

.method public final setLayoutSize(Landroid/util/SizeF;)Lio/github/toyota32k/utils/android/UtFitter;
    .locals 1

    const-string v0, "size"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 151
    invoke-virtual {p1}, Landroid/util/SizeF;->getWidth()F

    move-result v0

    invoke-virtual {p1}, Landroid/util/SizeF;->getHeight()F

    move-result p1

    invoke-virtual {p0, v0, p1}, Lio/github/toyota32k/utils/android/UtFitter;->setLayoutSize(FF)Lio/github/toyota32k/utils/android/UtFitter;

    move-result-object p1

    return-object p1
.end method

.method public final setLayoutWidth(F)Lio/github/toyota32k/utils/android/UtFitter;
    .locals 0

    .line 125
    invoke-virtual {p0, p1}, Lio/github/toyota32k/utils/android/UtFitter;->setLayoutWidth(F)V

    return-object p0
.end method

.method public final setLayoutWidth(I)Lio/github/toyota32k/utils/android/UtFitter;
    .locals 0

    int-to-float p1, p1

    .line 129
    invoke-virtual {p0, p1}, Lio/github/toyota32k/utils/android/UtFitter;->setLayoutWidth(F)V

    return-object p0
.end method

.method public setLayoutWidth(F)V
    .locals 0

    .line 100
    iput p1, p0, Lio/github/toyota32k/utils/android/UtFitter;->layoutWidth:F

    return-void
.end method

.method public final setMode(Lio/github/toyota32k/utils/android/FitMode;)Lio/github/toyota32k/utils/android/UtFitter;
    .locals 1

    const-string v0, "fitMode"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 120
    invoke-virtual {p0, p1}, Lio/github/toyota32k/utils/android/UtFitter;->setFitMode(Lio/github/toyota32k/utils/android/FitMode;)V

    return-object p0
.end method
