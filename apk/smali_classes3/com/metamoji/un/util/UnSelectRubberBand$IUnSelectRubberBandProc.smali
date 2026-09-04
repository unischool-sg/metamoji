.class public interface abstract Lcom/metamoji/un/util/UnSelectRubberBand$IUnSelectRubberBandProc;
.super Ljava/lang/Object;
.source "UnSelectRubberBand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/un/util/UnSelectRubberBand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IUnSelectRubberBandProc"
.end annotation


# virtual methods
.method public abstract getRubberBandUnit()Lcom/metamoji/nt/NtUnitController;
.end method

.method public abstract getRubberBandUnitSprite()Lcom/metamoji/df/sprite/Sprite;
.end method

.method public abstract hitTestRubberBand(Lcom/metamoji/rb/RbRubberBandAction;Landroid/graphics/PointF;)Lcom/metamoji/rb/RbConstants$Activity;
.end method

.method public abstract isVisibleRubberBand()Z
.end method

.method public abstract notifyInBoundsTapped(Landroid/graphics/PointF;Z)V
.end method

.method public abstract notifyOutOfBoundsTapped(Landroid/graphics/PointF;Z)V
.end method

.method public abstract rubberBandChanged(Lcom/metamoji/df/controller/GeometricProps;Lcom/metamoji/df/controller/GeometricProps;)Z
.end method
