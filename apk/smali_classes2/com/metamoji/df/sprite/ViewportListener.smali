.class public interface abstract Lcom/metamoji/df/sprite/ViewportListener;
.super Ljava/lang/Object;
.source "ViewportListener.java"


# static fields
.field public static final Nil:Lcom/metamoji/df/sprite/ViewportListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 67
    new-instance v0, Lcom/metamoji/df/sprite/ViewportListener$1;

    invoke-direct {v0}, Lcom/metamoji/df/sprite/ViewportListener$1;-><init>()V

    sput-object v0, Lcom/metamoji/df/sprite/ViewportListener;->Nil:Lcom/metamoji/df/sprite/ViewportListener;

    return-void
.end method


# virtual methods
.method public abstract scrollChanged()V
.end method

.method public abstract scrollChanging()V
.end method

.method public abstract scrollEnd(Z)V
.end method

.method public abstract scrollInertiaEnd(Z)V
.end method

.method public abstract scrollInertiaStart()V
.end method

.method public abstract scrollStart()V
.end method

.method public abstract sizeChanged(II)V
.end method

.method public abstract zoomChanged()V
.end method

.method public abstract zoomChanging()V
.end method

.method public abstract zoomEnd(Z)V
.end method

.method public abstract zoomReboundEnd(Z)V
.end method

.method public abstract zoomReboundStart()V
.end method

.method public abstract zoomStart()V
.end method
