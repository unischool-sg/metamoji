.class final Lcom/metamoji/media/video/VfVideoImport$extractThumbnail$2$1$2;
.super Ljava/lang/Object;
.source "VfVideoImport.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


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
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/metamoji/video/AmvFrameExtractor;",
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


# instance fields
.field final synthetic this$0:Lcom/metamoji/media/video/VfVideoImport;


# direct methods
.method constructor <init>(Lcom/metamoji/media/video/VfVideoImport;)V
    .locals 0

    iput-object p1, p0, Lcom/metamoji/media/video/VfVideoImport$extractThumbnail$2$1$2;->this$0:Lcom/metamoji/media/video/VfVideoImport;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 131
    check-cast p1, Lcom/metamoji/video/AmvFrameExtractor;

    invoke-virtual {p0, p1}, Lcom/metamoji/media/video/VfVideoImport$extractThumbnail$2$1$2;->invoke(Lcom/metamoji/video/AmvFrameExtractor;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Lcom/metamoji/video/AmvFrameExtractor;)V
    .locals 1

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 132
    iget-object v0, p0, Lcom/metamoji/media/video/VfVideoImport$extractThumbnail$2$1$2;->this$0:Lcom/metamoji/media/video/VfVideoImport;

    invoke-virtual {p1}, Lcom/metamoji/video/AmvFrameExtractor;->getVideoSize()Lcom/metamoji/video/MuSize;

    move-result-object p1

    invoke-virtual {p1}, Lcom/metamoji/video/MuSize;->getAsSizeF()Landroid/util/SizeF;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/metamoji/media/video/VfVideoImport;->access$setSize$p(Lcom/metamoji/media/video/VfVideoImport;Landroid/util/SizeF;)V

    return-void
.end method
