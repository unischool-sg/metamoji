.class public final Lcom/metamoji/pdf/core/MatrixUtil;
.super Ljava/lang/Object;
.source "MatrixUtil.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMatrixUtil.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MatrixUtil.kt\ncom/metamoji/pdf/core/MatrixUtil\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,78:1\n1#2:79\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0010\u0007\n\u0002\u0008\t\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0014\u0010\u0004\u001a\u00020\u00052\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0007J\u0016\u0010\t\u001a\u00020\u00052\u0006\u0010\n\u001a\u00020\u00082\u0006\u0010\u000b\u001a\u00020\u0008J\u0016\u0010\u000c\u001a\u00020\u00052\u0006\u0010\r\u001a\u00020\u00082\u0006\u0010\u000e\u001a\u00020\u0008J\u000e\u0010\u000f\u001a\u00020\u00052\u0006\u0010\u0010\u001a\u00020\u0008\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/metamoji/pdf/core/MatrixUtil;",
        "",
        "<init>",
        "()V",
        "matrix",
        "Landroid/graphics/Matrix;",
        "e",
        "",
        "",
        "translate",
        "x",
        "y",
        "scale",
        "sx",
        "sy",
        "rotate",
        "angle",
        "pdf"
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
.field public static final INSTANCE:Lcom/metamoji/pdf/core/MatrixUtil;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/metamoji/pdf/core/MatrixUtil;

    invoke-direct {v0}, Lcom/metamoji/pdf/core/MatrixUtil;-><init>()V

    sput-object v0, Lcom/metamoji/pdf/core/MatrixUtil;->INSTANCE:Lcom/metamoji/pdf/core/MatrixUtil;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final matrix(Ljava/util/List;)Landroid/graphics/Matrix;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;)",
            "Landroid/graphics/Matrix;"
        }
    .end annotation

    const-string v0, "e"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    const/4 v1, 0x0

    .line 17
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->floatValue()F

    move-result v2

    const/4 v3, 0x2

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->floatValue()F

    move-result v4

    const/4 v5, 0x4

    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->floatValue()F

    move-result v6

    const/4 v7, 0x1

    invoke-interface {p1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Number;

    invoke-virtual {v8}, Ljava/lang/Number;->floatValue()F

    move-result v8

    const/4 v9, 0x3

    invoke-interface {p1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Number;

    invoke-virtual {v10}, Ljava/lang/Number;->floatValue()F

    move-result v10

    const/4 v11, 0x5

    invoke-interface {p1, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    const/16 v12, 0x9

    new-array v12, v12, [F

    aput v2, v12, v1

    aput v4, v12, v7

    aput v6, v12, v3

    aput v8, v12, v9

    aput v10, v12, v5

    aput p1, v12, v11

    const/4 p1, 0x6

    const/4 v1, 0x0

    aput v1, v12, p1

    const/4 p1, 0x7

    aput v1, v12, p1

    const/high16 p1, 0x3f800000    # 1.0f

    const/16 v1, 0x8

    aput p1, v12, v1

    invoke-virtual {v0, v12}, Landroid/graphics/Matrix;->setValues([F)V

    return-object v0
.end method

.method public final rotate(F)Landroid/graphics/Matrix;
    .locals 1

    .line 24
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    invoke-static {p1}, Lcom/metamoji/pdf/core/MatrixUtilKt;->deg(F)F

    move-result p1

    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->setRotate(F)V

    return-object v0
.end method

.method public final scale(FF)Landroid/graphics/Matrix;
    .locals 1

    .line 22
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Matrix;->setScale(FF)V

    return-object v0
.end method

.method public final translate(FF)Landroid/graphics/Matrix;
    .locals 1

    .line 20
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Matrix;->setTranslate(FF)V

    return-object v0
.end method
