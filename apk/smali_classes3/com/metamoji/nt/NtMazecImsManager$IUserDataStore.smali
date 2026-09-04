.class public interface abstract Lcom/metamoji/nt/NtMazecImsManager$IUserDataStore;
.super Ljava/lang/Object;
.source "NtMazecImsManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/nt/NtMazecImsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IUserDataStore"
.end annotation


# virtual methods
.method public abstract backup()Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract clear()V
.end method

.method public abstract restore(Ljava/io/File;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
