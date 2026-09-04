.class public final Lcom/metamoji/df/sprite/pdf/PDFOutputInfo;
.super Ljava/lang/Object;
.source "PDFOutputInfo.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/df/sprite/pdf/PDFOutputInfo$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u0000 \u00162\u00020\u0001:\u0001\u0016B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0006\u0010\u0007R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u0011\u0010\n\u001a\u00020\u000b\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\rR\u0011\u0010\u000e\u001a\u00020\u000f\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011R\u0011\u0010\u0012\u001a\u00020\u0013\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0014\u0010\u0015\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/metamoji/df/sprite/pdf/PDFOutputInfo;",
        "",
        "page",
        "Lcom/metamoji/df/sprite/pdf/PDFPage;",
        "destinationRect",
        "Landroid/graphics/RectF;",
        "<init>",
        "(Lcom/metamoji/df/sprite/pdf/PDFPage;Landroid/graphics/RectF;)V",
        "getPage",
        "()Lcom/metamoji/df/sprite/pdf/PDFPage;",
        "ticket",
        "",
        "getTicket",
        "()Ljava/lang/String;",
        "pageIndex",
        "",
        "getPageIndex",
        "()I",
        "matrix",
        "Landroid/graphics/Matrix;",
        "getMatrix",
        "()Landroid/graphics/Matrix;",
        "Companion",
        "sprite"
    }
    k = 0x1
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lcom/metamoji/df/sprite/pdf/PDFOutputInfo$Companion;

.field public static final INFOTYPE_PDF:I = 0x1

.field public static final MARKER_11:F = 10.0f

.field public static final MARKER_12:F = 5.0f

.field public static final MARKER_21:F = 3.0f

.field public static final MARKER_22:F = 4.0f


# instance fields
.field private final matrix:Landroid/graphics/Matrix;

.field private final page:Lcom/metamoji/df/sprite/pdf/PDFPage;

.field private final pageIndex:I

.field private final ticket:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/metamoji/df/sprite/pdf/PDFOutputInfo$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/metamoji/df/sprite/pdf/PDFOutputInfo$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/metamoji/df/sprite/pdf/PDFOutputInfo;->Companion:Lcom/metamoji/df/sprite/pdf/PDFOutputInfo$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/metamoji/df/sprite/pdf/PDFPage;Landroid/graphics/RectF;)V
    .locals 6

    const-string v0, "page"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "destinationRect"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/metamoji/df/sprite/pdf/PDFOutputInfo;->page:Lcom/metamoji/df/sprite/pdf/PDFPage;

    .line 8
    invoke-virtual {p1}, Lcom/metamoji/df/sprite/pdf/PDFPage;->getTicket()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getTicket(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/metamoji/df/sprite/pdf/PDFOutputInfo;->ticket:Ljava/lang/String;

    .line 9
    invoke-virtual {p1}, Lcom/metamoji/df/sprite/pdf/PDFPage;->getIndex()I

    move-result v0

    iput v0, p0, Lcom/metamoji/df/sprite/pdf/PDFOutputInfo;->pageIndex:I

    .line 13
    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result v0

    invoke-virtual {p1}, Lcom/metamoji/df/sprite/pdf/PDFPage;->getWidth()F

    move-result v1

    div-float/2addr v0, v1

    .line 14
    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result v1

    invoke-virtual {p1}, Lcom/metamoji/df/sprite/pdf/PDFPage;->getHeight()F

    move-result v2

    div-float/2addr v1, v2

    .line 15
    iget v2, p2, Landroid/graphics/RectF;->left:F

    .line 16
    iget p2, p2, Landroid/graphics/RectF;->top:F

    .line 17
    sget-object v3, Lcom/metamoji/pdf/core/MatrixUtil;->INSTANCE:Lcom/metamoji/pdf/core/MatrixUtil;

    const/4 v4, 0x6

    new-array v4, v4, [Ljava/lang/Float;

    const/4 v5, 0x0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, v4, v5

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const/4 v5, 0x1

    aput-object v0, v4, v5

    const/4 v5, 0x2

    aput-object v0, v4, v5

    neg-float v0, v1

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const/4 v5, 0x3

    aput-object v0, v4, v5

    const/4 v0, 0x4

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v4, v0

    invoke-virtual {p1}, Lcom/metamoji/df/sprite/pdf/PDFPage;->getHeight()F

    move-result p1

    mul-float/2addr p1, v1

    add-float/2addr p2, p1

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const/4 p2, 0x5

    aput-object p1, v4, p2

    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v3, p1}, Lcom/metamoji/pdf/core/MatrixUtil;->matrix(Ljava/util/List;)Landroid/graphics/Matrix;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/df/sprite/pdf/PDFOutputInfo;->matrix:Landroid/graphics/Matrix;

    return-void
.end method


# virtual methods
.method public final getMatrix()Landroid/graphics/Matrix;
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/metamoji/df/sprite/pdf/PDFOutputInfo;->matrix:Landroid/graphics/Matrix;

    return-object v0
.end method

.method public final getPage()Lcom/metamoji/df/sprite/pdf/PDFPage;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/metamoji/df/sprite/pdf/PDFOutputInfo;->page:Lcom/metamoji/df/sprite/pdf/PDFPage;

    return-object v0
.end method

.method public final getPageIndex()I
    .locals 1

    .line 9
    iget v0, p0, Lcom/metamoji/df/sprite/pdf/PDFOutputInfo;->pageIndex:I

    return v0
.end method

.method public final getTicket()Ljava/lang/String;
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/metamoji/df/sprite/pdf/PDFOutputInfo;->ticket:Ljava/lang/String;

    return-object v0
.end method
