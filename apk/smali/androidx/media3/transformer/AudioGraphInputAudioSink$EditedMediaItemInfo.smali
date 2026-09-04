.class final Landroidx/media3/transformer/AudioGraphInputAudioSink$EditedMediaItemInfo;
.super Ljava/lang/Object;
.source "AudioGraphInputAudioSink.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/transformer/AudioGraphInputAudioSink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "EditedMediaItemInfo"
.end annotation


# instance fields
.field public final editedMediaItem:Landroidx/media3/transformer/EditedMediaItem;

.field public final isLastInSequence:Z


# direct methods
.method public constructor <init>(Landroidx/media3/transformer/EditedMediaItem;Z)V
    .locals 0

    .line 371
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 372
    iput-object p1, p0, Landroidx/media3/transformer/AudioGraphInputAudioSink$EditedMediaItemInfo;->editedMediaItem:Landroidx/media3/transformer/EditedMediaItem;

    .line 373
    iput-boolean p2, p0, Landroidx/media3/transformer/AudioGraphInputAudioSink$EditedMediaItemInfo;->isLastInSequence:Z

    return-void
.end method
