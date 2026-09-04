.class public Lcom/metamoji/df/controller/MediaChangedBroadcastContext;
.super Lcom/metamoji/df/controller/BroadcastContext;
.source "MediaChangedBroadcastContext.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/df/controller/MediaChangedBroadcastContext$EventName;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private _eventName:Lcom/metamoji/df/controller/MediaChangedBroadcastContext$EventName;

.field private _mediaType:Lcom/metamoji/df/controller/ControllerContext$MediaType;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/metamoji/df/controller/ControllerContext$MediaType;)V
    .locals 1

    .line 16
    invoke-direct {p0}, Lcom/metamoji/df/controller/BroadcastContext;-><init>()V

    .line 17
    sget-object v0, Lcom/metamoji/df/controller/MediaChangedBroadcastContext$EventName;->MEDIA_CHANGED:Lcom/metamoji/df/controller/MediaChangedBroadcastContext$EventName;

    iput-object v0, p0, Lcom/metamoji/df/controller/MediaChangedBroadcastContext;->_eventName:Lcom/metamoji/df/controller/MediaChangedBroadcastContext$EventName;

    .line 18
    iput-object p1, p0, Lcom/metamoji/df/controller/MediaChangedBroadcastContext;->_mediaType:Lcom/metamoji/df/controller/ControllerContext$MediaType;

    return-void
.end method


# virtual methods
.method public getEventName()Lcom/metamoji/df/controller/MediaChangedBroadcastContext$EventName;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/metamoji/df/controller/MediaChangedBroadcastContext;->_eventName:Lcom/metamoji/df/controller/MediaChangedBroadcastContext$EventName;

    return-object v0
.end method

.method public getMediaType()Lcom/metamoji/df/controller/ControllerContext$MediaType;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/metamoji/df/controller/MediaChangedBroadcastContext;->_mediaType:Lcom/metamoji/df/controller/ControllerContext$MediaType;

    return-object v0
.end method
