.class Lcom/metamoji/df/sprite/RenderAsFreezedBitmap$1;
.super Ljava/lang/Object;
.source "RenderAsFreezedBitmap.java"

# interfaces
.implements Lcom/metamoji/df/sprite/ThumbnailRequest;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/df/sprite/RenderAsFreezedBitmap;-><init>(Lcom/metamoji/df/sprite/Viewport;Landroid/graphics/Bitmap;FF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/df/sprite/RenderAsFreezedBitmap;


# direct methods
.method constructor <init>(Lcom/metamoji/df/sprite/RenderAsFreezedBitmap;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 55
    iput-object p1, p0, Lcom/metamoji/df/sprite/RenderAsFreezedBitmap$1;->this$0:Lcom/metamoji/df/sprite/RenderAsFreezedBitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public putSize(FF)V
    .locals 0

    return-void
.end method

.method public putThumbnail(Landroid/graphics/Bitmap;)V
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/metamoji/df/sprite/RenderAsFreezedBitmap$1;->this$0:Lcom/metamoji/df/sprite/RenderAsFreezedBitmap;

    invoke-static {v0, p1}, Lcom/metamoji/df/sprite/RenderAsFreezedBitmap;->-$$Nest$fputthumbBitmap(Lcom/metamoji/df/sprite/RenderAsFreezedBitmap;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public relativeIndex()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
