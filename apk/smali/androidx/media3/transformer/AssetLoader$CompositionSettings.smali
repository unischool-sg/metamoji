.class public Landroidx/media3/transformer/AssetLoader$CompositionSettings;
.super Ljava/lang/Object;
.source "AssetLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/transformer/AssetLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CompositionSettings"
.end annotation


# instance fields
.field public final hdrMode:I

.field public final retainHdrFromUltraHdrImage:Z


# direct methods
.method public constructor <init>(IZ)V
    .locals 0

    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 152
    iput p1, p0, Landroidx/media3/transformer/AssetLoader$CompositionSettings;->hdrMode:I

    .line 153
    iput-boolean p2, p0, Landroidx/media3/transformer/AssetLoader$CompositionSettings;->retainHdrFromUltraHdrImage:Z

    return-void
.end method
