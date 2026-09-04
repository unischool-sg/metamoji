.class public Lcom/metamoji/media/MediaUploadedEventContext;
.super Lcom/metamoji/df/controller/BroadcastContext;
.source "MediaUploadedEventContext.java"


# static fields
.field public static final EventName:Ljava/lang/String; = "MediaUploaded"


# instance fields
.field public ticket:Ljava/lang/String;

.field public uploaded:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 9
    invoke-direct {p0}, Lcom/metamoji/df/controller/BroadcastContext;-><init>()V

    const/4 v0, 0x0

    .line 12
    iput-object v0, p0, Lcom/metamoji/media/MediaUploadedEventContext;->ticket:Ljava/lang/String;

    const/4 v0, 0x0

    .line 13
    iput-boolean v0, p0, Lcom/metamoji/media/MediaUploadedEventContext;->uploaded:Z

    return-void
.end method
