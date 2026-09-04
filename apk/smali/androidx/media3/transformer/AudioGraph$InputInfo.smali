.class final Landroidx/media3/transformer/AudioGraph$InputInfo;
.super Ljava/lang/Object;
.source "AudioGraph.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/transformer/AudioGraph;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "InputInfo"
.end annotation


# instance fields
.field public final audioGraphInput:Landroidx/media3/transformer/AudioGraphInput;

.field public mixerSourceId:I


# direct methods
.method public constructor <init>(Landroidx/media3/transformer/AudioGraphInput;)V
    .locals 0

    .line 293
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 294
    iput-object p1, p0, Landroidx/media3/transformer/AudioGraph$InputInfo;->audioGraphInput:Landroidx/media3/transformer/AudioGraphInput;

    const/4 p1, -0x1

    .line 295
    iput p1, p0, Landroidx/media3/transformer/AudioGraph$InputInfo;->mixerSourceId:I

    return-void
.end method
