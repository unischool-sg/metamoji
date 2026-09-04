.class public interface abstract Lcom/metamoji/nt/itemlist/NtJumpLocationSetting$IUnSelectRubberBandProc;
.super Ljava/lang/Object;
.source "NtJumpLocationSetting.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/nt/itemlist/NtJumpLocationSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IUnSelectRubberBandProc"
.end annotation


# virtual methods
.method public abstract contextShowDelay()V
.end method

.method public abstract getNoteController()Lcom/metamoji/nt/NtNoteController;
.end method

.method public abstract get_point()Landroid/graphics/PointF;
.end method

.method public abstract get_size()Lcom/metamoji/cm/SizeF;
.end method

.method public abstract globalToLocal(Landroid/graphics/PointF;)Landroid/graphics/PointF;
.end method

.method public abstract hitTestRubberBand(Lcom/metamoji/rb/RbRubberBandAction;Landroid/graphics/PointF;)Lcom/metamoji/rb/RbConstants$Activity;
.end method

.method public abstract localToGlobal(Landroid/graphics/PointF;)Landroid/graphics/PointF;
.end method

.method public abstract notifyInBoundsTapped(Landroid/graphics/PointF;)V
.end method

.method public abstract notifyOutOfBoundsTapped(Landroid/graphics/PointF;)V
.end method

.method public abstract rubberBandChanged(Lcom/metamoji/df/controller/GeometricProps;)Z
.end method

.method public abstract viewportToSprite(Landroid/graphics/PointF;)Landroid/graphics/PointF;
.end method
