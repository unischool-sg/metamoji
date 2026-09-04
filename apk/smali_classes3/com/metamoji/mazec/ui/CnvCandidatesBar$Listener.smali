.class public interface abstract Lcom/metamoji/mazec/ui/CnvCandidatesBar$Listener;
.super Ljava/lang/Object;
.source "CnvCandidatesBar.java"

# interfaces
.implements Lcom/metamoji/mazec/ui/CnvCandidatesBarPanel$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/mazec/ui/CnvCandidatesBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Listener"
.end annotation


# virtual methods
.method public abstract onConvertResultUpdate(Lcom/metamoji/mazec/converter/ConvertResult;)V
.end method

.method public abstract onRequestCandidatesViewClose()Z
.end method

.method public abstract onRequestCandidatesViewOpen()Z
.end method
