.class public interface abstract Lcom/metamoji/nt/NtMRUDocList$IMruEventHandler;
.super Ljava/lang/Object;
.source "NtMRUDocList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/nt/NtMRUDocList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IMruEventHandler"
.end annotation


# virtual methods
.method public abstract onMruItemAppended(Lcom/metamoji/nt/NtMRUDocList;Lcom/metamoji/nt/NtMRUDocList$Item;)V
.end method

.method public abstract onMruItemDeleted(Lcom/metamoji/nt/NtMRUDocList;Ljava/lang/String;)V
.end method

.method public abstract onMruItemMoved(Lcom/metamoji/nt/NtMRUDocList;Lcom/metamoji/nt/NtMRUDocList$Item;II)V
.end method

.method public abstract onMruItemOpened(Lcom/metamoji/nt/NtMRUDocList;Lcom/metamoji/nt/NtMRUDocList$Item;)V
.end method

.method public abstract onMruItemStatusChanged(Lcom/metamoji/nt/NtMRUDocList;Lcom/metamoji/nt/NtMRUDocList$Item;Z)V
.end method

.method public abstract onMruMultiItemEvent(Lcom/metamoji/nt/NtMRUDocList;Z)V
.end method
