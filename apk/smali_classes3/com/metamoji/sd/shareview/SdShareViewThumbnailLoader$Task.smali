.class Lcom/metamoji/sd/shareview/SdShareViewThumbnailLoader$Task;
.super Ljava/lang/Object;
.source "SdShareViewThumbnailLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/sd/shareview/SdShareViewThumbnailLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Task"
.end annotation


# instance fields
.field private _activity:Landroidx/fragment/app/FragmentActivity;

.field private _docId:Ljava/lang/String;

.field private _driveId:Ljava/lang/String;

.field private _imageView:Landroid/widget/ImageView;

.field private _size:Lcom/metamoji/cm/Size;

.field final synthetic this$0:Lcom/metamoji/sd/shareview/SdShareViewThumbnailLoader;


# direct methods
.method static bridge synthetic -$$Nest$fget_activity(Lcom/metamoji/sd/shareview/SdShareViewThumbnailLoader$Task;)Landroidx/fragment/app/FragmentActivity;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/sd/shareview/SdShareViewThumbnailLoader$Task;->_activity:Landroidx/fragment/app/FragmentActivity;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fget_imageView(Lcom/metamoji/sd/shareview/SdShareViewThumbnailLoader$Task;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/sd/shareview/SdShareViewThumbnailLoader$Task;->_imageView:Landroid/widget/ImageView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fget_size(Lcom/metamoji/sd/shareview/SdShareViewThumbnailLoader$Task;)Lcom/metamoji/cm/Size;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/sd/shareview/SdShareViewThumbnailLoader$Task;->_size:Lcom/metamoji/cm/Size;

    return-object p0
.end method

.method constructor <init>(Lcom/metamoji/sd/shareview/SdShareViewThumbnailLoader;Ljava/lang/String;Ljava/lang/String;Landroidx/fragment/app/FragmentActivity;Landroid/widget/ImageView;Lcom/metamoji/cm/Size;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 41
    iput-object p1, p0, Lcom/metamoji/sd/shareview/SdShareViewThumbnailLoader$Task;->this$0:Lcom/metamoji/sd/shareview/SdShareViewThumbnailLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p2, p0, Lcom/metamoji/sd/shareview/SdShareViewThumbnailLoader$Task;->_driveId:Ljava/lang/String;

    .line 43
    iput-object p3, p0, Lcom/metamoji/sd/shareview/SdShareViewThumbnailLoader$Task;->_docId:Ljava/lang/String;

    .line 44
    iput-object p4, p0, Lcom/metamoji/sd/shareview/SdShareViewThumbnailLoader$Task;->_activity:Landroidx/fragment/app/FragmentActivity;

    .line 45
    iput-object p5, p0, Lcom/metamoji/sd/shareview/SdShareViewThumbnailLoader$Task;->_imageView:Landroid/widget/ImageView;

    .line 46
    iput-object p6, p0, Lcom/metamoji/sd/shareview/SdShareViewThumbnailLoader$Task;->_size:Lcom/metamoji/cm/Size;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 53
    invoke-static {}, Lcom/metamoji/sd/shareview/SdShareViewDocumentProxy;->getInstance()Lcom/metamoji/sd/shareview/SdShareViewDocumentProxy;

    move-result-object v0

    .line 54
    iget-object v1, p0, Lcom/metamoji/sd/shareview/SdShareViewThumbnailLoader$Task;->_driveId:Ljava/lang/String;

    iget-object v2, p0, Lcom/metamoji/sd/shareview/SdShareViewThumbnailLoader$Task;->_docId:Ljava/lang/String;

    new-instance v3, Lcom/metamoji/sd/shareview/SdShareViewThumbnailLoader$Task$1;

    invoke-direct {v3, p0}, Lcom/metamoji/sd/shareview/SdShareViewThumbnailLoader$Task$1;-><init>(Lcom/metamoji/sd/shareview/SdShareViewThumbnailLoader$Task;)V

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/metamoji/sd/shareview/SdShareViewDocumentProxy;->downloadDocumentThumbnail(Ljava/lang/String;Ljava/lang/String;Lcom/metamoji/sd/SdSuccessBlock;Lcom/metamoji/sd/SdFailureBlock;)V

    const-wide/16 v0, 0xc8

    .line 81
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 83
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    return-void
.end method
