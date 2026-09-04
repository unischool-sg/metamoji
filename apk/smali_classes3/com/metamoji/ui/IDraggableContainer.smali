.class public interface abstract Lcom/metamoji/ui/IDraggableContainer;
.super Ljava/lang/Object;
.source "IDraggableContainer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/ui/IDraggableContainer$IDraggableItem;,
        Lcom/metamoji/ui/IDraggableContainer$OnItemDropListener;
    }
.end annotation


# virtual methods
.method public abstract asView()Landroid/view/ViewGroup;
.end method

.method public abstract drag(Landroid/view/View;Landroid/graphics/PointF;)V
.end method

.method public abstract dragBegin(Landroid/view/View;Landroid/graphics/PointF;)Z
.end method

.method public abstract dragCancel(Landroid/view/View;)V
.end method

.method public abstract dragEnd(Landroid/view/View;Landroid/graphics/PointF;)V
.end method

.method public abstract isDragging()Z
.end method

.method public abstract setOnItemDropListener(Lcom/metamoji/ui/IDraggableContainer$OnItemDropListener;)V
.end method
