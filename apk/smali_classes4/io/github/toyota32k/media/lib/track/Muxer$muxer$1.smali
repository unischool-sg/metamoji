.class final Lio/github/toyota32k/media/lib/track/Muxer$muxer$1;
.super Lkotlin/jvm/internal/Lambda;
.source "Muxer.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/github/toyota32k/media/lib/track/Muxer;-><init>(Lio/github/toyota32k/media/lib/converter/AndroidFile;Lio/github/toyota32k/media/lib/converter/AndroidFile;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/io/FileDescriptor;",
        "Landroid/media/MediaMuxer;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "Landroid/media/MediaMuxer;",
        "fd",
        "Ljava/io/FileDescriptor;",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Lio/github/toyota32k/media/lib/track/Muxer$muxer$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lio/github/toyota32k/media/lib/track/Muxer$muxer$1;

    invoke-direct {v0}, Lio/github/toyota32k/media/lib/track/Muxer$muxer$1;-><init>()V

    sput-object v0, Lio/github/toyota32k/media/lib/track/Muxer$muxer$1;->INSTANCE:Lio/github/toyota32k/media/lib/track/Muxer$muxer$1;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/io/FileDescriptor;)Landroid/media/MediaMuxer;
    .locals 2

    const-string v0, "fd"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    new-instance v0, Landroid/media/MediaMuxer;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroid/media/MediaMuxer;-><init>(Ljava/io/FileDescriptor;I)V

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 24
    check-cast p1, Ljava/io/FileDescriptor;

    invoke-virtual {p0, p1}, Lio/github/toyota32k/media/lib/track/Muxer$muxer$1;->invoke(Ljava/io/FileDescriptor;)Landroid/media/MediaMuxer;

    move-result-object p1

    return-object p1
.end method
