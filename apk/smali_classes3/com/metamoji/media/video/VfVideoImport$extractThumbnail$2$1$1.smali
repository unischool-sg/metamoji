.class final Lcom/metamoji/media/video/VfVideoImport$extractThumbnail$2$1$1;
.super Ljava/lang/Object;
.source "VfVideoImport.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/media/video/VfVideoImport;->extractThumbnail(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/jvm/functions/Function2<",
        "Lcom/metamoji/video/AmvFrameExtractor;",
        "Landroid/util/Size;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Lcom/metamoji/media/video/VfVideoImport$extractThumbnail$2$1$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/metamoji/media/video/VfVideoImport$extractThumbnail$2$1$1;

    invoke-direct {v0}, Lcom/metamoji/media/video/VfVideoImport$extractThumbnail$2$1$1;-><init>()V

    sput-object v0, Lcom/metamoji/media/video/VfVideoImport$extractThumbnail$2$1$1;->INSTANCE:Lcom/metamoji/media/video/VfVideoImport$extractThumbnail$2$1$1;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 127
    check-cast p1, Lcom/metamoji/video/AmvFrameExtractor;

    check-cast p2, Landroid/util/Size;

    invoke-virtual {p0, p1, p2}, Lcom/metamoji/media/video/VfVideoImport$extractThumbnail$2$1$1;->invoke(Lcom/metamoji/video/AmvFrameExtractor;Landroid/util/Size;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Lcom/metamoji/video/AmvFrameExtractor;Landroid/util/Size;)V
    .locals 2

    const-string v0, "ex"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "videoSize"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 128
    sget-object v0, Lio/github/toyota32k/media/lib/format/HD720VideoStrategy;->INSTANCE:Lio/github/toyota32k/media/lib/format/HD720VideoStrategy;

    invoke-virtual {p2}, Landroid/util/Size;->getWidth()I

    move-result v1

    invoke-virtual {p2}, Landroid/util/Size;->getHeight()I

    move-result p2

    invoke-virtual {v0, v1, p2}, Lio/github/toyota32k/media/lib/format/HD720VideoStrategy;->calcHD720Size(II)Landroid/util/Size;

    move-result-object p2

    .line 129
    sget-object v0, Lcom/metamoji/video/FitMode;->Fit:Lcom/metamoji/video/FitMode;

    invoke-virtual {p2}, Landroid/util/Size;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p2}, Landroid/util/Size;->getHeight()I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p1, v0, v1, p2}, Lcom/metamoji/video/AmvFrameExtractor;->setSizingHint(Lcom/metamoji/video/FitMode;FF)V

    return-void
.end method
