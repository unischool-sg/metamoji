.class public interface abstract Lcom/metamoji/un/draw2/module/mode/interaction/DrInteraction;
.super Ljava/lang/Object;
.source "DrInteraction.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/un/draw2/module/mode/interaction/DrInteraction$Type;
    }
.end annotation


# virtual methods
.method public abstract destroy()V
.end method

.method public abstract handleTouch(Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;)V
.end method

.method public abstract isActive()Z
.end method

.method public abstract setIsActive(Z)V
.end method

.method public abstract type()Lcom/metamoji/un/draw2/module/mode/interaction/DrInteraction$Type;
.end method
