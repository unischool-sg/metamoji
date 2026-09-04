.class public Lcom/metamoji/un/util/UnGeoPropUndoSupport;
.super Ljava/lang/Object;
.source "UnGeoPropUndoSupport.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/un/util/UnGeoPropUndoSupport$ModelDef;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static performUndo(Lcom/metamoji/df/controller/DfController;Lcom/metamoji/df/model/IModel;Z)V
    .locals 6

    if-eqz p2, :cond_0

    .line 64
    const-string v0, "ox"

    goto :goto_0

    :cond_0
    const-string v0, "nx"

    :goto_0
    if-eqz p2, :cond_1

    .line 65
    const-string v1, "oy"

    goto :goto_1

    :cond_1
    const-string v1, "ny"

    :goto_1
    if-eqz p2, :cond_2

    .line 66
    const-string v2, "ow"

    goto :goto_2

    :cond_2
    const-string v2, "nw"

    :goto_2
    if-eqz p2, :cond_3

    .line 67
    const-string v3, "oh"

    goto :goto_3

    :cond_3
    const-string v3, "nh"

    :goto_3
    if-eqz p2, :cond_4

    .line 68
    const-string v4, "or"

    goto :goto_4

    :cond_4
    const-string v4, "nr"

    :goto_4
    if-eqz p2, :cond_5

    .line 69
    const-string p2, "os"

    goto :goto_5

    :cond_5
    const-string p2, "ns"

    .line 73
    :goto_5
    invoke-interface {p1, v0}, Lcom/metamoji/df/model/IModel;->getPropertyAsObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const/4 v5, 0x0

    if-eqz v0, :cond_6

    .line 75
    invoke-static {v0, v5}, Lcom/metamoji/cm/CmUtils;->toFloat(Ljava/lang/Object;F)F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/metamoji/df/controller/DfController;->setX(F)V

    .line 78
    :cond_6
    invoke-interface {p1, v1}, Lcom/metamoji/df/model/IModel;->getPropertyAsObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 80
    invoke-static {v0, v5}, Lcom/metamoji/cm/CmUtils;->toFloat(Ljava/lang/Object;F)F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/metamoji/df/controller/DfController;->setY(F)V

    .line 83
    :cond_7
    invoke-interface {p1, v2}, Lcom/metamoji/df/model/IModel;->getPropertyAsObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 85
    invoke-static {v0, v5}, Lcom/metamoji/cm/CmUtils;->toFloat(Ljava/lang/Object;F)F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/metamoji/df/controller/DfController;->setWidth(F)V

    .line 88
    :cond_8
    invoke-interface {p1, v3}, Lcom/metamoji/df/model/IModel;->getPropertyAsObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 90
    invoke-static {v0, v5}, Lcom/metamoji/cm/CmUtils;->toFloat(Ljava/lang/Object;F)F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/metamoji/df/controller/DfController;->setHeight(F)V

    .line 93
    :cond_9
    invoke-interface {p1, v4}, Lcom/metamoji/df/model/IModel;->getPropertyAsObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 95
    invoke-static {v0, v5}, Lcom/metamoji/cm/CmUtils;->toFloat(Ljava/lang/Object;F)F

    move-result v0

    float-to-double v0, v0

    invoke-virtual {p0, v0, v1}, Lcom/metamoji/df/controller/DfController;->setRotation(D)V

    .line 97
    :cond_a
    invoke-interface {p1, p2}, Lcom/metamoji/df/model/IModel;->getPropertyAsObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_b

    const/high16 p2, 0x3f800000    # 1.0f

    .line 99
    invoke-static {p1, p2}, Lcom/metamoji/cm/CmUtils;->toFloat(Ljava/lang/Object;F)F

    move-result p1

    float-to-double p1, p1

    invoke-virtual {p0, p1, p2}, Lcom/metamoji/df/controller/DfController;->setContentScale(D)V

    :cond_b
    return-void
.end method

.method public static pushUndoInfo(Lcom/metamoji/df/controller/DfController;Lcom/metamoji/df/model/IModel;Lcom/metamoji/df/controller/GeometricProps;)V
    .locals 3

    .line 38
    iget-object v0, p2, Lcom/metamoji/df/controller/GeometricProps;->size:Lcom/metamoji/cm/SizeF;

    if-eqz v0, :cond_0

    .line 39
    invoke-virtual {p0}, Lcom/metamoji/df/controller/DfController;->getWidth()F

    move-result v0

    float-to-double v0, v0

    const-string v2, "ow"

    invoke-interface {p1, v2, v0, v1}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;D)V

    .line 40
    invoke-virtual {p0}, Lcom/metamoji/df/controller/DfController;->getHeight()F

    move-result v0

    float-to-double v0, v0

    const-string v2, "oh"

    invoke-interface {p1, v2, v0, v1}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;D)V

    .line 41
    iget-object v0, p2, Lcom/metamoji/df/controller/GeometricProps;->size:Lcom/metamoji/cm/SizeF;

    iget v0, v0, Lcom/metamoji/cm/SizeF;->width:F

    float-to-double v0, v0

    const-string v2, "nw"

    invoke-interface {p1, v2, v0, v1}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;D)V

    .line 42
    iget-object v0, p2, Lcom/metamoji/df/controller/GeometricProps;->size:Lcom/metamoji/cm/SizeF;

    iget v0, v0, Lcom/metamoji/cm/SizeF;->height:F

    float-to-double v0, v0

    const-string v2, "nh"

    invoke-interface {p1, v2, v0, v1}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;D)V

    .line 44
    :cond_0
    iget-object v0, p2, Lcom/metamoji/df/controller/GeometricProps;->origin:Landroid/graphics/PointF;

    if-eqz v0, :cond_1

    .line 45
    invoke-virtual {p0}, Lcom/metamoji/df/controller/DfController;->getX()F

    move-result v0

    float-to-double v0, v0

    const-string v2, "ox"

    invoke-interface {p1, v2, v0, v1}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;D)V

    .line 46
    invoke-virtual {p0}, Lcom/metamoji/df/controller/DfController;->getY()F

    move-result v0

    float-to-double v0, v0

    const-string v2, "oy"

    invoke-interface {p1, v2, v0, v1}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;D)V

    .line 47
    iget-object v0, p2, Lcom/metamoji/df/controller/GeometricProps;->origin:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    float-to-double v0, v0

    const-string v2, "nx"

    invoke-interface {p1, v2, v0, v1}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;D)V

    .line 48
    iget-object v0, p2, Lcom/metamoji/df/controller/GeometricProps;->origin:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    float-to-double v0, v0

    const-string v2, "ny"

    invoke-interface {p1, v2, v0, v1}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;D)V

    .line 50
    :cond_1
    iget-object v0, p2, Lcom/metamoji/df/controller/GeometricProps;->rotation:Ljava/lang/Float;

    if-eqz v0, :cond_2

    .line 51
    const-string v0, "or"

    invoke-virtual {p0}, Lcom/metamoji/df/controller/DfController;->getRotation()D

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;D)V

    .line 52
    const-string v0, "nr"

    iget-object v1, p2, Lcom/metamoji/df/controller/GeometricProps;->rotation:Ljava/lang/Float;

    invoke-interface {p1, v0, v1}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 54
    :cond_2
    iget-object v0, p2, Lcom/metamoji/df/controller/GeometricProps;->contentScale:Ljava/lang/Float;

    if-eqz v0, :cond_3

    .line 55
    const-string v0, "os"

    invoke-virtual {p0}, Lcom/metamoji/df/controller/DfController;->getContentScale()D

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;D)V

    .line 56
    const-string p0, "ns"

    iget-object p2, p2, Lcom/metamoji/df/controller/GeometricProps;->contentScale:Ljava/lang/Float;

    invoke-interface {p1, p0, p2}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/lang/Number;)V

    :cond_3
    return-void
.end method
