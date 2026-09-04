.class public final synthetic Lio/github/toyota32k/media/lib/track/Muxer$WhenMappings;
.super Ljava/lang/Object;
.source "Muxer.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/github/toyota32k/media/lib/track/Muxer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1001
    name = "WhenMappings"
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final synthetic $EnumSwitchMapping$0:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lio/github/toyota32k/media/lib/track/Muxer$SampleType;->values()[Lio/github/toyota32k/media/lib/track/Muxer$SampleType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sget-object v1, Lio/github/toyota32k/media/lib/track/Muxer$SampleType;->Video:Lio/github/toyota32k/media/lib/track/Muxer$SampleType;

    invoke-virtual {v1}, Lio/github/toyota32k/media/lib/track/Muxer$SampleType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1

    sget-object v1, Lio/github/toyota32k/media/lib/track/Muxer$SampleType;->Audio:Lio/github/toyota32k/media/lib/track/Muxer$SampleType;

    invoke-virtual {v1}, Lio/github/toyota32k/media/lib/track/Muxer$SampleType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1

    sput-object v0, Lio/github/toyota32k/media/lib/track/Muxer$WhenMappings;->$EnumSwitchMapping$0:[I

    return-void
.end method
