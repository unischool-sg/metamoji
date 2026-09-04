.class public interface abstract Lcom/metamoji/nt/itemlist/NtJumpLocationSettingSupport$IRubberBandSupportCallback;
.super Ljava/lang/Object;
.source "NtJumpLocationSettingSupport.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/nt/itemlist/NtJumpLocationSettingSupport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IRubberBandSupportCallback"
.end annotation


# virtual methods
.method public abstract hitTest(Lcom/metamoji/rb/RbRubberBandAction;Landroid/graphics/PointF;)Lcom/metamoji/rb/RbConstants$Activity;
.end method

.method public abstract notifyInBoundsTapped(Landroid/graphics/PointF;)V
.end method

.method public abstract notifyOutOfBoundsTapped(Landroid/graphics/PointF;)Z
.end method

.method public abstract onRubberBandChanged(Lcom/metamoji/df/controller/GeometricProps;)Ljava/lang/Boolean;
.end method
