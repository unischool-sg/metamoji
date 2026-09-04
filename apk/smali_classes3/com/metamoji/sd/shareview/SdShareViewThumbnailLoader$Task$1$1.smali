.class Lcom/metamoji/sd/shareview/SdShareViewThumbnailLoader$Task$1$1;
.super Ljava/lang/Object;
.source "SdShareViewThumbnailLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/sd/shareview/SdShareViewThumbnailLoader$Task$1;->call()Ljava/lang/Void;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/metamoji/sd/shareview/SdShareViewThumbnailLoader$Task$1;

.field final synthetic val$thumbnailPath:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/metamoji/sd/shareview/SdShareViewThumbnailLoader$Task$1;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 63
    iput-object p1, p0, Lcom/metamoji/sd/shareview/SdShareViewThumbnailLoader$Task$1$1;->this$2:Lcom/metamoji/sd/shareview/SdShareViewThumbnailLoader$Task$1;

    iput-object p2, p0, Lcom/metamoji/sd/shareview/SdShareViewThumbnailLoader$Task$1$1;->val$thumbnailPath:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 66
    iget-object v0, p0, Lcom/metamoji/sd/shareview/SdShareViewThumbnailLoader$Task$1$1;->val$thumbnailPath:Ljava/lang/String;

    iget-object v1, p0, Lcom/metamoji/sd/shareview/SdShareViewThumbnailLoader$Task$1$1;->this$2:Lcom/metamoji/sd/shareview/SdShareViewThumbnailLoader$Task$1;

    iget-object v1, v1, Lcom/metamoji/sd/shareview/SdShareViewThumbnailLoader$Task$1;->this$1:Lcom/metamoji/sd/shareview/SdShareViewThumbnailLoader$Task;

    invoke-static {v1}, Lcom/metamoji/sd/shareview/SdShareViewThumbnailLoader$Task;->-$$Nest$fget_size(Lcom/metamoji/sd/shareview/SdShareViewThumbnailLoader$Task;)Lcom/metamoji/cm/Size;

    move-result-object v1

    iget v1, v1, Lcom/metamoji/cm/Size;->width:I

    iget-object v2, p0, Lcom/metamoji/sd/shareview/SdShareViewThumbnailLoader$Task$1$1;->this$2:Lcom/metamoji/sd/shareview/SdShareViewThumbnailLoader$Task$1;

    iget-object v2, v2, Lcom/metamoji/sd/shareview/SdShareViewThumbnailLoader$Task$1;->this$1:Lcom/metamoji/sd/shareview/SdShareViewThumbnailLoader$Task;

    invoke-static {v2}, Lcom/metamoji/sd/shareview/SdShareViewThumbnailLoader$Task;->-$$Nest$fget_size(Lcom/metamoji/sd/shareview/SdShareViewThumbnailLoader$Task;)Lcom/metamoji/cm/Size;

    move-result-object v2

    iget v2, v2, Lcom/metamoji/cm/Size;->height:I

    invoke-static {v0, v1, v2}, Lcom/metamoji/cm/ImageUtils;->createBitmapFromFile2(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 68
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v2, p0, Lcom/metamoji/sd/shareview/SdShareViewThumbnailLoader$Task$1$1;->this$2:Lcom/metamoji/sd/shareview/SdShareViewThumbnailLoader$Task$1;

    iget-object v2, v2, Lcom/metamoji/sd/shareview/SdShareViewThumbnailLoader$Task$1;->this$1:Lcom/metamoji/sd/shareview/SdShareViewThumbnailLoader$Task;

    invoke-static {v2}, Lcom/metamoji/sd/shareview/SdShareViewThumbnailLoader$Task;->-$$Nest$fget_activity(Lcom/metamoji/sd/shareview/SdShareViewThumbnailLoader$Task;)Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/fragment/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 69
    iget-object v0, p0, Lcom/metamoji/sd/shareview/SdShareViewThumbnailLoader$Task$1$1;->this$2:Lcom/metamoji/sd/shareview/SdShareViewThumbnailLoader$Task$1;

    iget-object v0, v0, Lcom/metamoji/sd/shareview/SdShareViewThumbnailLoader$Task$1;->this$1:Lcom/metamoji/sd/shareview/SdShareViewThumbnailLoader$Task;

    invoke-static {v0}, Lcom/metamoji/sd/shareview/SdShareViewThumbnailLoader$Task;->-$$Nest$fget_imageView(Lcom/metamoji/sd/shareview/SdShareViewThumbnailLoader$Task;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 v0, 0x0

    .line 70
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    return-void
.end method
