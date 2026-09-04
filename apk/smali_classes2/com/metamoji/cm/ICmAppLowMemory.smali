.class public interface abstract Lcom/metamoji/cm/ICmAppLowMemory;
.super Ljava/lang/Object;
.source "ICmAppLowMemory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/cm/ICmAppLowMemory$ILowMemoryListener;
    }
.end annotation


# virtual methods
.method public abstract addLowMemoryEventListener(Lcom/metamoji/cm/ICmAppLowMemory$ILowMemoryListener;)V
.end method

.method public abstract onApplicationLowMemory()V
.end method

.method public abstract removeLowMemoryEventListener(Lcom/metamoji/cm/ICmAppLowMemory$ILowMemoryListener;)V
.end method
