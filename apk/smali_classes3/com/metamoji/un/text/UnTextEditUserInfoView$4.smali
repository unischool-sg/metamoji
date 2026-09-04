.class Lcom/metamoji/un/text/UnTextEditUserInfoView$4;
.super Ljava/lang/Object;
.source "UnTextEditUserInfoView.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/un/text/UnTextEditUserInfoView;->getLayoutLabelRect(Lcom/metamoji/un/text/UnTextUnit;Lcom/metamoji/un/text/UnTextEditUserInfoView$TextViewLayout;)Landroid/graphics/RectF;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Landroid/graphics/PointF;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/un/text/UnTextEditUserInfoView;


# direct methods
.method constructor <init>(Lcom/metamoji/un/text/UnTextEditUserInfoView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 326
    iput-object p1, p0, Lcom/metamoji/un/text/UnTextEditUserInfoView$4;->this$0:Lcom/metamoji/un/text/UnTextEditUserInfoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Landroid/graphics/PointF;Landroid/graphics/PointF;)I
    .locals 4

    .line 330
    iget v0, p1, Landroid/graphics/PointF;->y:F

    iget v1, p2, Landroid/graphics/PointF;->y:F

    cmpg-float v0, v0, v1

    const/4 v1, -0x1

    if-gez v0, :cond_0

    return v1

    .line 332
    :cond_0
    iget v0, p2, Landroid/graphics/PointF;->y:F

    iget v2, p1, Landroid/graphics/PointF;->y:F

    cmpg-float v0, v0, v2

    const/4 v2, 0x1

    if-gez v0, :cond_1

    return v2

    .line 337
    :cond_1
    iget v0, p1, Landroid/graphics/PointF;->x:F

    iget v3, p2, Landroid/graphics/PointF;->x:F

    cmpg-float v0, v0, v3

    if-gez v0, :cond_2

    return v1

    .line 339
    :cond_2
    iget p2, p2, Landroid/graphics/PointF;->x:F

    iget p1, p1, Landroid/graphics/PointF;->x:F

    cmpg-float p1, p2, p1

    if-gez p1, :cond_3

    return v2

    :cond_3
    const/4 p1, 0x0

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 326
    check-cast p1, Landroid/graphics/PointF;

    check-cast p2, Landroid/graphics/PointF;

    invoke-virtual {p0, p1, p2}, Lcom/metamoji/un/text/UnTextEditUserInfoView$4;->compare(Landroid/graphics/PointF;Landroid/graphics/PointF;)I

    move-result p1

    return p1
.end method
