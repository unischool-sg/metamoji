.class public Lcom/metamoji/media/voice/audio/VcAudioSession;
.super Ljava/lang/Object;
.source "VcAudioSession.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/media/voice/audio/VcAudioSession$IVcAudioSessionInterruptionListener;
    }
.end annotation


# static fields
.field private static _instance:Lcom/metamoji/media/voice/audio/VcAudioSession;


# instance fields
.field _listener:Lcom/metamoji/media/voice/audio/VcAudioSession$IVcAudioSessionInterruptionListener;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getSharedInstance()Lcom/metamoji/media/voice/audio/VcAudioSession;
    .locals 1

    .line 29
    sget-object v0, Lcom/metamoji/media/voice/audio/VcAudioSession;->_instance:Lcom/metamoji/media/voice/audio/VcAudioSession;

    if-nez v0, :cond_0

    .line 30
    new-instance v0, Lcom/metamoji/media/voice/audio/VcAudioSession;

    invoke-direct {v0}, Lcom/metamoji/media/voice/audio/VcAudioSession;-><init>()V

    sput-object v0, Lcom/metamoji/media/voice/audio/VcAudioSession;->_instance:Lcom/metamoji/media/voice/audio/VcAudioSession;

    .line 32
    :cond_0
    sget-object v0, Lcom/metamoji/media/voice/audio/VcAudioSession;->_instance:Lcom/metamoji/media/voice/audio/VcAudioSession;

    return-object v0
.end method


# virtual methods
.method public getListener()Lcom/metamoji/media/voice/audio/VcAudioSession$IVcAudioSessionInterruptionListener;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/metamoji/media/voice/audio/VcAudioSession;->_listener:Lcom/metamoji/media/voice/audio/VcAudioSession$IVcAudioSessionInterruptionListener;

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public setListener(Lcom/metamoji/media/voice/audio/VcAudioSession$IVcAudioSessionInterruptionListener;)V
    .locals 0

    .line 21
    iput-object p1, p0, Lcom/metamoji/media/voice/audio/VcAudioSession;->_listener:Lcom/metamoji/media/voice/audio/VcAudioSession$IVcAudioSessionInterruptionListener;

    return-void
.end method
