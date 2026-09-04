.class Lcom/metamoji/un/image/UnImageUnit$3;
.super Ljava/lang/Object;
.source "UnImageUnit.java"

# interfaces
.implements Lcom/metamoji/ui/dialog/ImageEditDialog$IOnResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/un/image/UnImageUnit;->editImage()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/un/image/UnImageUnit;

.field final synthetic val$orgMaskQCurvePath:Lcom/metamoji/cm/PointArray;

.field final synthetic val$orgRawMask:Lcom/metamoji/cm/RectEx;


# direct methods
.method constructor <init>(Lcom/metamoji/un/image/UnImageUnit;Lcom/metamoji/cm/RectEx;Lcom/metamoji/cm/PointArray;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 909
    iput-object p1, p0, Lcom/metamoji/un/image/UnImageUnit$3;->this$0:Lcom/metamoji/un/image/UnImageUnit;

    iput-object p2, p0, Lcom/metamoji/un/image/UnImageUnit$3;->val$orgRawMask:Lcom/metamoji/cm/RectEx;

    iput-object p3, p0, Lcom/metamoji/un/image/UnImageUnit$3;->val$orgMaskQCurvePath:Lcom/metamoji/cm/PointArray;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Ljava/lang/String;Landroid/graphics/Rect;Landroid/graphics/Rect;FFFFLandroid/graphics/RectF;Lcom/metamoji/cm/PointArray;)V
    .locals 3

    move p1, p7

    move p7, p5

    move-object p5, p3

    .line 912
    new-instance p3, Lcom/metamoji/cm/RectEx;

    iget p8, p5, Landroid/graphics/Rect;->left:I

    int-to-float p8, p8

    div-float/2addr p8, p6

    iget v0, p5, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    div-float/2addr v0, p1

    invoke-virtual {p5}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, p6

    invoke-virtual {p5}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, p1

    invoke-direct {p3, p8, v0, v1, v2}, Lcom/metamoji/cm/RectEx;-><init>(FFFF)V

    move p8, p1

    .line 913
    iget-object p1, p0, Lcom/metamoji/un/image/UnImageUnit$3;->this$0:Lcom/metamoji/un/image/UnImageUnit;

    move v0, p6

    move p6, p4

    move-object p4, p2

    iget-object p2, p0, Lcom/metamoji/un/image/UnImageUnit$3;->val$orgRawMask:Lcom/metamoji/cm/RectEx;

    move v1, p8

    iget-object p8, p0, Lcom/metamoji/un/image/UnImageUnit$3;->val$orgMaskQCurvePath:Lcom/metamoji/cm/PointArray;

    const/high16 v2, 0x3f800000    # 1.0f

    div-float v0, v2, v0

    div-float/2addr v2, v1

    invoke-virtual {p1, p9, v0, v2}, Lcom/metamoji/un/image/UnImageUnit;->zoomPointArray(Lcom/metamoji/cm/PointArray;FF)Lcom/metamoji/cm/PointArray;

    move-result-object p9

    invoke-static/range {p1 .. p9}, Lcom/metamoji/un/image/UnImageUnit;->-$$Nest$mcompleteEditing(Lcom/metamoji/un/image/UnImageUnit;Lcom/metamoji/cm/RectEx;Lcom/metamoji/cm/RectEx;Landroid/graphics/Rect;Landroid/graphics/Rect;FFLcom/metamoji/cm/PointArray;Lcom/metamoji/cm/PointArray;)V

    return-void
.end method
