.class public interface abstract Lcom/metamoji/un/util/UnRubberBandSupport$IRubberBandSupportCallback;
.super Ljava/lang/Object;
.source "UnRubberBandSupport.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/un/util/UnRubberBandSupport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IRubberBandSupportCallback"
.end annotation


# virtual methods
.method public abstract hitTest(Lcom/metamoji/rb/RbRubberBandAction;Landroid/graphics/PointF;)Lcom/metamoji/rb/RbConstants$Activity;
.end method

.method public abstract notifyInBoundsTapped(Landroid/graphics/PointF;Z)V
.end method

.method public abstract notifyOutOfBoundsTapped(Landroid/graphics/PointF;Z)Z
.end method

.method public abstract onRubberBandChanged(Lcom/metamoji/df/controller/GeometricProps;)Ljava/lang/Boolean;
.end method
