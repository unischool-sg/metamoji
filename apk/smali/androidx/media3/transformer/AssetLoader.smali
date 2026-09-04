.class public interface abstract Landroidx/media3/transformer/AssetLoader;
.super Ljava/lang/Object;
.source "AssetLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/transformer/AssetLoader$SupportedOutputTypes;,
        Landroidx/media3/transformer/AssetLoader$CompositionSettings;,
        Landroidx/media3/transformer/AssetLoader$Listener;,
        Landroidx/media3/transformer/AssetLoader$Factory;
    }
.end annotation


# static fields
.field public static final SUPPORTED_OUTPUT_TYPE_DECODED:I = 0x2

.field public static final SUPPORTED_OUTPUT_TYPE_ENCODED:I = 0x1


# virtual methods
.method public abstract getDecoderNames()Lcom/google/common/collect/ImmutableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getProgress(Landroidx/media3/transformer/ProgressHolder;)I
.end method

.method public abstract release()V
.end method

.method public abstract start()V
.end method
