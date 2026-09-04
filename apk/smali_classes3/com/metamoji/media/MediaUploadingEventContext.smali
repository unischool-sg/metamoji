.class public Lcom/metamoji/media/MediaUploadingEventContext;
.super Lcom/metamoji/df/controller/BroadcastContext;
.source "MediaUploadingEventContext.java"


# static fields
.field public static final EventName:Ljava/lang/String; = "MediaUploading"


# instance fields
.field public recordId:Ljava/lang/String;

.field public ticket:Ljava/lang/String;

.field public url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 9
    invoke-direct {p0}, Lcom/metamoji/df/controller/BroadcastContext;-><init>()V

    const/4 v0, 0x0

    .line 12
    iput-object v0, p0, Lcom/metamoji/media/MediaUploadingEventContext;->ticket:Ljava/lang/String;

    .line 13
    iput-object v0, p0, Lcom/metamoji/media/MediaUploadingEventContext;->recordId:Ljava/lang/String;

    .line 14
    iput-object v0, p0, Lcom/metamoji/media/MediaUploadingEventContext;->url:Ljava/lang/String;

    return-void
.end method
