.class final Lcom/metamoji/media/video/VfVideoImport$extractThumbnail$2$1$3;
.super Ljava/lang/Object;
.source "VfVideoImport.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


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
        "Lkotlin/jvm/functions/Function3<",
        "Lcom/metamoji/video/AmvFrameExtractor;",
        "Ljava/lang/Integer;",
        "Landroid/graphics/Bitmap;",
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

    iput-object p1, p0, Lcom/metamoji/media/video/VfVideoImport$extractThumbnail$2$1$3;->this$0:Lcom/metamoji/media/video/VfVideoImport;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 134
    check-cast p1, Lcom/metamoji/video/AmvFrameExtractor;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    check-cast p3, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1, p2, p3}, Lcom/metamoji/media/video/VfVideoImport$extractThumbnail$2$1$3;->invoke(Lcom/metamoji/video/AmvFrameExtractor;ILandroid/graphics/Bitmap;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Lcom/metamoji/video/AmvFrameExtractor;ILandroid/graphics/Bitmap;)V
    .locals 0

    const-string p2, "<unused var>"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "bitmap"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 135
    iget-object p1, p0, Lcom/metamoji/media/video/VfVideoImport$extractThumbnail$2$1$3;->this$0:Lcom/metamoji/media/video/VfVideoImport;

    invoke-static {p1, p3}, Lcom/metamoji/media/video/VfVideoImport;->access$setThumbnail$p(Lcom/metamoji/media/video/VfVideoImport;Landroid/graphics/Bitmap;)V

    return-void
.end method
