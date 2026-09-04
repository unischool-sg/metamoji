.class public interface abstract Lcom/metamoji/media/service/MediaBgTask$IMediaAction;
.super Ljava/lang/Object;
.source "MediaBgTask.java"

# interfaces
.implements Lcom/metamoji/ns/INsCollaboAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/media/service/MediaBgTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IMediaAction"
.end annotation


# static fields
.field public static final NOP:Lcom/metamoji/media/service/MediaBgTask$IMediaAction;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 22
    new-instance v0, Lcom/metamoji/media/service/MediaBgTask$IMediaAction$1;

    invoke-direct {v0}, Lcom/metamoji/media/service/MediaBgTask$IMediaAction$1;-><init>()V

    sput-object v0, Lcom/metamoji/media/service/MediaBgTask$IMediaAction;->NOP:Lcom/metamoji/media/service/MediaBgTask$IMediaAction;

    return-void
.end method
